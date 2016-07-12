package com.upsight.android.analytics.internal;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.UpsightAnalyticsComponent;
import com.upsight.android.analytics.internal.configuration.ConfigurationManager;
import com.upsight.android.analytics.internal.dispatcher.Dispatcher;
import com.upsight.android.analytics.internal.session.ApplicationStatus;
import com.upsight.android.analytics.internal.session.ApplicationStatus.State;
import com.upsight.android.persistence.UpsightSubscription;
import com.upsight.android.persistence.annotation.Created;
import com.upsight.android.persistence.annotation.Updated;
import javax.inject.Inject;

public class DispatcherService extends Service {
    private static final long STATUS_CHECK_INTERVAL = 25000;
    private static final int STOP_AFTER_DEAD_INTERVALS = 4;
    @Inject
    ConfigurationManager mConfigurationManager;
    private UpsightSubscription mDataStoreSubscription;
    private int mDeadIntervalsInARow;
    @Inject
    Dispatcher mDispatcher;
    private Handler mHandler;
    private Runnable mSelfStopTask;

    /* renamed from: com.upsight.android.analytics.internal.DispatcherService.1 */
    class C08801 implements Runnable {
        C08801() {
        }

        public void run() {
            if (DispatcherService.this.mDispatcher.hasPendingRecords()) {
                DispatcherService.this.mDeadIntervalsInARow = 0;
                DispatcherService.this.mHandler.postDelayed(DispatcherService.this.mSelfStopTask, DispatcherService.STATUS_CHECK_INTERVAL);
            } else if (DispatcherService.this.mDeadIntervalsInARow == DispatcherService.STOP_AFTER_DEAD_INTERVALS) {
                DispatcherService.this.stopSelf();
            } else {
                DispatcherService.this.mDeadIntervalsInARow = DispatcherService.this.mDeadIntervalsInARow + 1;
                DispatcherService.this.mHandler.postDelayed(DispatcherService.this.mSelfStopTask, DispatcherService.STATUS_CHECK_INTERVAL);
            }
        }
    }

    public DispatcherService() {
        this.mSelfStopTask = new C08801();
    }

    @Created
    @Updated
    public void onApplicationStatus(ApplicationStatus applicationStatus) {
        if (applicationStatus.getState() == State.BACKGROUND) {
            this.mDeadIntervalsInARow = 0;
            this.mHandler.postDelayed(this.mSelfStopTask, STATUS_CHECK_INTERVAL);
            return;
        }
        this.mHandler.removeCallbacks(this.mSelfStopTask);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        UpsightContext createContext = Upsight.createContext(this);
        ((UpsightAnalyticsComponent) ((UpsightAnalyticsExtension) createContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME)).getComponent()).inject(this);
        this.mHandler = new Handler();
        this.mDataStoreSubscription = createContext.getDataStore().subscribe(this);
        this.mDispatcher.launch();
        this.mConfigurationManager.launch();
    }

    public void onDestroy() {
        this.mHandler.removeCallbacks(this.mSelfStopTask);
        this.mDataStoreSubscription.unsubscribe();
        this.mConfigurationManager.terminate();
        this.mDispatcher.terminate();
        super.onDestroy();
    }
}
