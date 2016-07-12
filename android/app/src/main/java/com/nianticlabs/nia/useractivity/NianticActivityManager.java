package com.nianticlabs.nia.useractivity;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import com.google.android.gms.location.places.Place;
import com.nianticlabs.nia.contextservice.ContextService;
import com.nianticlabs.nia.contextservice.GoogleApiManager;
import com.nianticlabs.nia.contextservice.GoogleApiManager.Listener;
import com.nianticlabs.nia.contextservice.ServiceStatus;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import spacemadness.com.lunarconsole.C1401R;

public class NianticActivityManager extends ContextService {
    private static final long ACTIVITY_DETECTION_INTERVAL_MS = 5000;
    private static final String TAG = "NianticActivityManager";
    private static WeakReference<NianticActivityManager> instance;
    private static Object instanceLock;
    private final PendingIntent activityRecognitionIntent;
    private AppState appState;
    Listener googleApiListener;
    private final GoogleApiManager googleApiManager;
    private GoogleApiState googleApiState;
    private ServiceStatus status;

    /* renamed from: com.nianticlabs.nia.useractivity.NianticActivityManager.1 */
    class C07861 implements Listener {
        C07861() {
        }

        public void onConnected() {
            if (NianticActivityManager.this.appState == AppState.RESUME) {
                NianticActivityManager.this.requestActivityUpdates();
            }
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            NianticActivityManager.this.googleApiState = GoogleApiState.STOPPED;
            switch (connectionResult.getErrorCode()) {
                case C1401R.styleable.AdsAttrs_adSize /*0*/:
                    NianticActivityManager.this.status = ServiceStatus.INITIALIZED;
                    break;
                case Place.TYPE_CAR_REPAIR /*19*/:
                    NianticActivityManager.this.status = ServiceStatus.PERMISSION_DENIED;
                    break;
                default:
                    NianticActivityManager.this.status = ServiceStatus.FAILED;
                    break;
            }
            if (NianticActivityManager.this.status != ServiceStatus.INITIALIZED) {
                Log.e(NianticActivityManager.TAG, "Connection to activity recognition failed: " + connectionResult.getErrorMessage());
            }
            Log.d(NianticActivityManager.TAG, "Connection failed, updating status.");
            NianticActivityManager.this.safeUpdateActivity(null, NianticActivityManager.this.status.ordinal());
        }

        public void onDisconnected() {
            NianticActivityManager.this.googleApiState = GoogleApiState.STOPPED;
        }
    }

    /* renamed from: com.nianticlabs.nia.useractivity.NianticActivityManager.2 */
    class C07872 implements Runnable {
        final /* synthetic */ ActivityRecognitionResult val$result;

        C07872(ActivityRecognitionResult activityRecognitionResult) {
            this.val$result = activityRecognitionResult;
        }

        public void run() {
            if (NianticActivityManager.this.appState == AppState.RESUME) {
                NianticActivityManager.this.status = ServiceStatus.RUNNING;
                long[] jArr = new long[((this.val$result.getProbableActivities().size() * 2) + 1)];
                jArr[0] = this.val$result.getTime();
                int i = 1;
                for (DetectedActivity detectedActivity : this.val$result.getProbableActivities()) {
                    int i2 = i + 1;
                    jArr[i] = (long) detectedActivity.getType();
                    i = i2 + 1;
                    jArr[i2] = (long) detectedActivity.getConfidence();
                }
                NianticActivityManager.this.safeUpdateActivity(jArr, NianticActivityManager.this.status.ordinal());
            }
        }
    }

    private enum AppState {
        START,
        STOP,
        PAUSE,
        RESUME
    }

    private enum GoogleApiState {
        STARTED,
        STOPPED
    }

    static {
        instance = null;
        instanceLock = new Object();
    }

    public NianticActivityManager(Context context, long j) {
        super(context, j);
        this.googleApiState = GoogleApiState.STOPPED;
        this.appState = AppState.STOP;
        this.googleApiListener = new C07861();
        this.googleApiManager = new GoogleApiManager(context);
        this.googleApiManager.setListener(this.googleApiListener);
        this.googleApiManager.builder().addApi(ActivityRecognition.API);
        this.googleApiManager.build();
        this.activityRecognitionIntent = createPendingIntent(context);
        synchronized (instanceLock) {
            instance = new WeakReference(this);
        }
    }

    public static PendingIntent createPendingIntent(Context context) {
        return PendingIntent.getService(context, 0, new Intent(context, ActivityRecognitionService.class), 134217728);
    }

    public static NianticActivityManager getInstance() {
        NianticActivityManager nianticActivityManager;
        synchronized (instanceLock) {
            if (instance != null) {
                nianticActivityManager = (NianticActivityManager) instance.get();
            } else {
                nianticActivityManager = null;
            }
        }
        return nianticActivityManager;
    }

    public static Object getInstanceLock() {
        return instanceLock;
    }

    private native void nativeUpdateActivity(@Nullable long[] jArr, int i);

    private void requestActivityUpdates() {
        try {
            Status status = (Status) ActivityRecognition.ActivityRecognitionApi.requestActivityUpdates(this.googleApiManager.getClient(), ACTIVITY_DETECTION_INTERVAL_MS, this.activityRecognitionIntent).await(0, TimeUnit.MILLISECONDS);
            if (status.isSuccess()) {
                this.status = ServiceStatus.RUNNING;
            } else {
                this.status = ServiceStatus.FAILED;
                Log.d(TAG, "Request updates failed " + status.getStatusMessage());
                Log.d(TAG, "Request status has resolution " + status.hasResolution());
            }
        } catch (Exception e) {
            Log.e(TAG, "requestActivityUpdates throws" + e);
            e.printStackTrace();
            this.status = ServiceStatus.FAILED;
        }
        safeUpdateActivity(null, this.status.ordinal());
    }

    private void safeUpdateActivity(@Nullable long[] jArr, int i) {
        synchronized (this.callbackLock) {
            nativeUpdateActivity(jArr, i);
        }
    }

    private void stopActivityUpdates() {
        ActivityRecognition.ActivityRecognitionApi.removeActivityUpdates(this.googleApiManager.getClient(), this.activityRecognitionIntent);
        this.status = ServiceStatus.STOPPED;
        safeUpdateActivity(null, this.status.ordinal());
    }

    public void onPause() {
        this.appState = AppState.PAUSE;
        if (this.googleApiState == GoogleApiState.STARTED) {
            stopActivityUpdates();
        }
        this.googleApiManager.onPause();
    }

    public void onResume() {
        this.appState = AppState.RESUME;
        if (this.googleApiState == GoogleApiState.STARTED) {
            requestActivityUpdates();
        }
        this.googleApiManager.onResume();
    }

    public void onStart() {
        this.appState = AppState.START;
        this.googleApiManager.onStart();
    }

    public void onStop() {
        this.appState = AppState.STOP;
        this.googleApiManager.onStop();
    }

    public void receiveUpdateActivity(ActivityRecognitionResult activityRecognitionResult) {
        ContextService.runOnServiceHandler(new C07872(activityRecognitionResult));
    }
}
