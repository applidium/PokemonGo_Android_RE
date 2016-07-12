package com.nianticlabs.nia.contextservice;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public class GoogleApiManager {
    private static final boolean ENABLE_VERBOSE_LOGS = true;
    private static final String TAG = "GoogleApiManager";
    private AppState appState;
    private final ConnectionCallbacks connectionCallbacks;
    private final OnConnectionFailedListener connectionFailedListener;
    private final Builder googleApiBuilder;
    private GoogleApiClient googleApiClient;
    private Listener listener;
    private State state;

    /* renamed from: com.nianticlabs.nia.contextservice.GoogleApiManager.1 */
    class C07591 implements ConnectionCallbacks {
        C07591() {
        }

        public void onConnected(Bundle bundle) {
            ContextService.assertOnServiceThread();
            Log.v(GoogleApiManager.TAG, "onConnected");
            GoogleApiManager.this.requestStateStarted();
        }

        public void onConnectionSuspended(int i) {
            ContextService.assertOnServiceThread();
            Log.v(GoogleApiManager.TAG, "onConnectionSuspended");
            if (Log.isLoggable(GoogleApiManager.TAG, 3)) {
                StringBuilder stringBuilder = new StringBuilder("Connection to Google Play Services suspended. ");
                switch (i) {
                    case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        stringBuilder.append("CAUSE_SERVICE_DISCONNECTED");
                        break;
                    case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        stringBuilder.append("CAUSE_NETWORK_LOST");
                        break;
                    default:
                        stringBuilder.append("Unknown (");
                        stringBuilder.append(i);
                        stringBuilder.append(")");
                        break;
                }
                Log.d(GoogleApiManager.TAG, stringBuilder.toString());
            }
            Log.v(GoogleApiManager.TAG, "State " + GoogleApiManager.this.state.name() + " -> STOPPED");
            GoogleApiManager.this.state = State.STOPPING;
            GoogleApiManager.this.requestStateStopped();
        }
    }

    /* renamed from: com.nianticlabs.nia.contextservice.GoogleApiManager.2 */
    class C07602 implements OnConnectionFailedListener {
        C07602() {
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            ContextService.assertOnServiceThread();
            GoogleApiManager.this.requestStateStartFailed(connectionResult);
        }
    }

    /* renamed from: com.nianticlabs.nia.contextservice.GoogleApiManager.3 */
    static /* synthetic */ class C07613 {
        static final /* synthetic */ int[] f31xbcf19983;
        static final /* synthetic */ int[] f32xc077f2de;

        static {
            f31xbcf19983 = new int[AppState.values().length];
            try {
                f31xbcf19983[AppState.STOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            f32xc077f2de = new int[State.values().length];
            try {
                f32xc077f2de[State.STOPPED.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32xc077f2de[State.STOP_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f32xc077f2de[State.START_FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32xc077f2de[State.STARTED.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private enum AppState {
        START,
        STOP,
        PAUSE,
        RESUME
    }

    public interface Listener {
        void onConnected();

        void onConnectionFailed(ConnectionResult connectionResult);

        void onDisconnected();
    }

    private enum State {
        STARTING,
        START_FAILED,
        STARTED,
        STOPPING,
        STOP_FAILED,
        STOPPED
    }

    public GoogleApiManager(Context context) {
        this.state = State.STOPPED;
        this.appState = AppState.STOP;
        this.listener = null;
        this.googleApiClient = null;
        this.connectionCallbacks = new C07591();
        this.connectionFailedListener = new C07602();
        this.googleApiClient = this.googleApiClient;
        this.googleApiBuilder = new Builder(context).addConnectionCallbacks(this.connectionCallbacks).addOnConnectionFailedListener(this.connectionFailedListener).setHandler(ContextService.getServiceHandler());
    }

    private void requestStateStartFailed(ConnectionResult connectionResult) {
        Log.v(TAG, "requestStateStartFailed " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        if (this.state == State.STARTING) {
            Log.v(TAG, "State " + this.state.name() + " -> START_FAILED");
            this.state = State.START_FAILED;
            if (this.listener != null) {
                this.listener.onConnectionFailed(connectionResult);
            }
        }
    }

    private void requestStateStarted() {
        Log.v(TAG, "requestStateStarted " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        if (this.state == State.STARTING) {
            Log.v(TAG, "State " + this.state.name() + " -> STARTED");
            this.state = State.STARTED;
            if (this.listener != null) {
                this.listener.onConnected();
            }
            switch (C07613.f31xbcf19983[this.appState.ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    requestStateStopping();
                default:
            }
        }
    }

    private void requestStateStarting() {
        Log.v(TAG, "requestStateStarting " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        if (this.appState != AppState.STOP) {
            switch (C07613.f32xc077f2de[this.state.ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    Log.v(TAG, "State " + this.state.name() + " -> STARTING");
                    this.state = State.STARTING;
                    this.googleApiClient.connect();
                default:
            }
        }
    }

    private void requestStateStopped() {
        Log.v(TAG, "requestStateStopped " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        if (this.state == State.STOPPING) {
            Log.v(TAG, "State " + this.state.name() + " -> STOPPED");
            this.state = State.STOPPED;
            if (this.listener != null) {
                this.listener.onDisconnected();
            }
        }
    }

    private void requestStateStopping() {
        Log.v(TAG, "requestStateStopping " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        switch (C07613.f32xc077f2de[this.state.ordinal()]) {
            case Place.TYPE_AQUARIUM /*4*/:
                Log.v(TAG, "State " + this.state.name() + " -> STOPPING");
                this.state = State.STOPPING;
                this.googleApiClient.disconnect();
                requestStateStopped();
            default:
        }
    }

    public void build() {
        if (this.googleApiClient != null) {
            throw new IllegalStateException("Calling build() after already built");
        }
        this.googleApiClient = this.googleApiBuilder.build();
    }

    public Builder builder() {
        if (this.googleApiClient == null) {
            return this.googleApiBuilder;
        }
        throw new IllegalStateException("Calling builder() after already built");
    }

    public GoogleApiClient getClient() {
        return this.googleApiClient;
    }

    public void onPause() {
        Log.v(TAG, "onPause " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        ContextService.assertOnServiceThread();
        this.appState = AppState.PAUSE;
    }

    public void onResume() {
        Log.v(TAG, "onResume " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        ContextService.assertOnServiceThread();
        this.appState = AppState.RESUME;
    }

    public void onStart() {
        Log.v(TAG, "onStart " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        ContextService.assertOnServiceThread();
        this.appState = AppState.START;
        requestStateStarting();
    }

    public void onStop() {
        Log.v(TAG, "onStop " + this.appState.name() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.state.name());
        ContextService.assertOnServiceThread();
        this.appState = AppState.STOP;
        requestStateStopping();
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }
}
