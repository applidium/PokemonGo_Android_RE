package com.nianticlabs.nia.location;

import android.content.Context;
import android.location.GpsSatellite;
import android.location.Location;
import com.nianticlabs.nia.contextservice.ContextService;
import com.nianticlabs.nia.contextservice.ServiceStatus;
import com.nianticlabs.nia.location.GpsProvider.GpsProviderListener;
import com.nianticlabs.nia.location.Provider.ProviderListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NianticLocationManager extends ContextService {
    static final boolean ENABLE_VERBOSE_LOGS = false;
    private static final String FUSED_PROVIDER_NAME = "fused";
    private static final float GPS_UPDATE_DISTANCE_M = 0.0f;
    private static final int GPS_UPDATE_TIME_MSEC = 1000;
    private static final long INITIALIZATION_WAIT_TIME_MS = 2000;
    private static final float NET_UPDATE_DISTANCE_M = 0.0f;
    private static final int NET_UPDATE_TIME_MSEC = 5000;
    private static final String TAG = "NianticLocationManager";
    private float gpsUpdateDistanceM;
    private int gpsUpdateTimeMs;
    private float netUpdateDistanceM;
    private int netUpdateTimeMs;
    private final List<Provider> providers;
    private boolean started;
    private final Map<String, ServiceStatus> statusMap;

    /* renamed from: com.nianticlabs.nia.location.NianticLocationManager.1 */
    class C07791 implements GpsProviderListener {
        final /* synthetic */ String val$name;

        C07791(String str) {
            this.val$name = str;
        }

        public void onGpsStatusUpdate(int i, GpsSatellite[] gpsSatelliteArr) {
            NianticLocationManager.this.gpsStatusUpdate(i, gpsSatelliteArr);
        }

        public void onProviderLocation(Location location) {
            NianticLocationManager.this.locationUpdate(location, NianticLocationManager.this.statusArray());
        }

        public void onProviderStatus(ServiceStatus serviceStatus) {
            NianticLocationManager.this.statusMap.put(this.val$name, serviceStatus);
            NianticLocationManager.this.locationUpdate(null, NianticLocationManager.this.statusArray());
        }
    }

    /* renamed from: com.nianticlabs.nia.location.NianticLocationManager.2 */
    class C07802 implements ProviderListener {
        final /* synthetic */ String val$name;

        C07802(String str) {
            this.val$name = str;
        }

        public void onProviderLocation(Location location) {
            NianticLocationManager.this.locationUpdate(location, NianticLocationManager.this.statusArray());
        }

        public void onProviderStatus(ServiceStatus serviceStatus) {
            NianticLocationManager.this.statusMap.put(this.val$name, serviceStatus);
        }
    }

    /* renamed from: com.nianticlabs.nia.location.NianticLocationManager.3 */
    class C07813 implements Runnable {
        final /* synthetic */ int val$gps_update_time_ms;
        final /* synthetic */ int val$net_update_time_ms;
        final /* synthetic */ double val$update_distance;

        C07813(int i, double d, int i2) {
            this.val$gps_update_time_ms = i;
            this.val$update_distance = d;
            this.val$net_update_time_ms = i2;
        }

        public void run() {
            if (NianticLocationManager.this.started) {
                throw new IllegalStateException("Already started.");
            }
            NianticLocationManager.this.gpsUpdateTimeMs = this.val$gps_update_time_ms;
            NianticLocationManager.this.gpsUpdateDistanceM = (float) this.val$update_distance;
            NianticLocationManager.this.netUpdateTimeMs = this.val$net_update_time_ms;
            NianticLocationManager.this.netUpdateDistanceM = (float) this.val$update_distance;
            NianticLocationManager.this.doStart();
        }
    }

    public NianticLocationManager(Context context, long j) {
        super(context, j);
        this.statusMap = new HashMap();
        this.gpsUpdateTimeMs = GPS_UPDATE_TIME_MSEC;
        this.gpsUpdateDistanceM = NET_UPDATE_DISTANCE_M;
        this.netUpdateTimeMs = NET_UPDATE_TIME_MSEC;
        this.netUpdateDistanceM = NET_UPDATE_DISTANCE_M;
        this.started = ENABLE_VERBOSE_LOGS;
        this.statusMap.put("gps", ServiceStatus.UNDEFINED);
        this.statusMap.put("network", ServiceStatus.UNDEFINED);
        this.statusMap.put(FUSED_PROVIDER_NAME, ServiceStatus.UNDEFINED);
        this.providers = new ArrayList(3);
    }

    private void addProvider(String str, Provider provider) {
        this.providers.add(provider);
        if (provider instanceof GpsProvider) {
            provider.setListener(new C07791(str));
        } else {
            provider.setListener(new C07802(str));
        }
    }

    private void createProviders() {
        if (this.providers.size() != 3) {
            addProvider(FUSED_PROVIDER_NAME, new FusedLocationProvider(this.context, this.gpsUpdateTimeMs, this.gpsUpdateDistanceM));
            addProvider("gps", new LocationManagerProvider(this.context, "gps", this.gpsUpdateTimeMs, this.gpsUpdateDistanceM));
            addProvider("network", new LocationManagerProvider(this.context, "network", this.netUpdateTimeMs, this.netUpdateDistanceM));
        }
    }

    private void doStart() {
        if (!this.started) {
            createProviders();
            locationUpdate(null, statusArray());
            for (Provider onStart : this.providers) {
                onStart.onStart();
            }
            this.started = true;
        }
    }

    private void gpsStatusUpdate(int i, GpsSatellite[] gpsSatelliteArr) {
        synchronized (this.callbackLock) {
            nativeGpsStatusUpdate(i, gpsSatelliteArr);
        }
    }

    private void locationUpdate(Location location, int[] iArr) {
        synchronized (this.callbackLock) {
            nativeLocationUpdate(location, iArr, this.context);
        }
    }

    private native void nativeGpsStatusUpdate(int i, GpsSatellite[] gpsSatelliteArr);

    private native void nativeLocationUpdate(Location location, int[] iArr, Context context);

    private int[] statusArray() {
        return new int[]{((ServiceStatus) this.statusMap.get("gps")).ordinal(), ((ServiceStatus) this.statusMap.get("network")).ordinal(), ((ServiceStatus) this.statusMap.get(FUSED_PROVIDER_NAME)).ordinal()};
    }

    public void configureLocationParameters(double d, int i, int i2) {
        ContextService.runOnServiceHandler(new C07813(i, d, i2));
    }

    public void onPause() {
        for (Provider onPause : this.providers) {
            onPause.onPause();
        }
    }

    public void onResume() {
        if (!this.started) {
            doStart();
        }
        for (Provider onResume : this.providers) {
            onResume.onResume();
        }
    }

    public void onStart() {
    }

    public void onStop() {
        for (Provider onStop : this.providers) {
            onStop.onStop();
        }
        this.started = ENABLE_VERBOSE_LOGS;
    }
}
