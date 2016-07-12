package com.nianticproject.holoholo.sfida.service;

import android.os.Handler;
import android.util.Log;
import java.util.UUID;

public class SfidaWatchDog {
    private static final int DEFAULT_RETRY_MAX = 3;
    private static final int DEFAULT_TIME_OUT = 3000;
    private static final String TAG;
    private static SfidaWatchDog instance;
    private OnTimeoutListener listener;
    private int retryCount;
    private Handler watchDogTimer;
    private UUID watchingUuid;

    public interface OnTimeoutListener {
        void onTimeout(UUID uuid);

        void reachedRetryCountMax();
    }

    private class WatchDogRunnable implements Runnable {
        private UUID uuid;

        public WatchDogRunnable(UUID uuid) {
            this.uuid = uuid;
        }

        public void run() {
            if (SfidaWatchDog.this.retryCount >= SfidaWatchDog.DEFAULT_RETRY_MAX) {
                Log.d(SfidaWatchDog.TAG, "Reached retry limit.");
                SfidaWatchDog.this.stopWatch();
                if (SfidaWatchDog.this.listener != null) {
                    SfidaWatchDog.this.listener.reachedRetryCountMax();
                }
            } else if (SfidaWatchDog.this.listener != null) {
                SfidaWatchDog.this.listener.onTimeout(this.uuid);
                SfidaWatchDog.this.retryCount = SfidaWatchDog.this.retryCount + 1;
                Log.d(SfidaWatchDog.TAG, "SFIDA connection TIMEOUT. UUID : " + this.uuid + "retryCount : " + SfidaWatchDog.this.retryCount);
            }
        }
    }

    static {
        TAG = SfidaWatchDog.class.getSimpleName();
        instance = new SfidaWatchDog();
    }

    public SfidaWatchDog() {
        this.retryCount = 0;
        this.watchDogTimer = new Handler();
    }

    public static SfidaWatchDog getInstance() {
        return instance;
    }

    public void startWatch(UUID uuid, OnTimeoutListener onTimeoutListener) {
        Log.d(TAG, "startWatch()");
        startWatch(uuid, onTimeoutListener, DEFAULT_TIME_OUT);
    }

    public void startWatch(UUID uuid, OnTimeoutListener onTimeoutListener, int i) {
        Log.d(TAG, "startWatch()");
        this.listener = onTimeoutListener;
        if (!(this.watchingUuid == null || this.watchingUuid.equals(uuid))) {
            this.retryCount = 0;
        }
        this.watchingUuid = uuid;
        this.watchDogTimer.removeCallbacksAndMessages(null);
        this.watchDogTimer.postDelayed(new WatchDogRunnable(uuid), (long) i);
    }

    public void stopWatch() {
        Log.d(TAG, "stopWatch()");
        this.retryCount = 0;
        this.listener = null;
        this.watchingUuid = null;
        this.watchDogTimer.removeCallbacksAndMessages(null);
    }
}
