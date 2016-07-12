package com.nianticlabs.nia.useractivity;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionResult;

public class ActivityRecognitionService extends IntentService {
    private static final String TAG = "NianticActivityManager";
    private GoogleApiClient googleApiClient;

    /* renamed from: com.nianticlabs.nia.useractivity.ActivityRecognitionService.1 */
    class C07851 implements ConnectionCallbacks {
        C07851() {
        }

        public void onConnected(Bundle bundle) {
            synchronized (NianticActivityManager.getInstanceLock()) {
                if (NianticActivityManager.getInstance() == null) {
                    ActivityRecognition.ActivityRecognitionApi.removeActivityUpdates(ActivityRecognitionService.this.googleApiClient, NianticActivityManager.createPendingIntent(ActivityRecognitionService.this));
                    ActivityRecognitionService.this.googleApiClient.disconnect();
                }
            }
        }

        public void onConnectionSuspended(int i) {
        }
    }

    public ActivityRecognitionService() {
        super("ActivityRecognitionService");
        this.googleApiClient = null;
    }

    private void unregisterIntent() {
        this.googleApiClient = new Builder(this).addApi(ActivityRecognition.API).addConnectionCallbacks(new C07851()).build();
        this.googleApiClient.connect();
    }

    protected void onHandleIntent(Intent intent) {
        ActivityRecognitionResult extractResult = ActivityRecognitionResult.extractResult(intent);
        Log.d(TAG, "Got activity result" + extractResult.getMostProbableActivity());
        NianticActivityManager instance = NianticActivityManager.getInstance();
        if (instance != null) {
            instance.receiveUpdateActivity(extractResult);
            return;
        }
        Log.e(TAG, "The app has closed while the ActivityRecognitionService is still receiving updates and draining the phone's battery");
        unregisterIntent();
    }
}
