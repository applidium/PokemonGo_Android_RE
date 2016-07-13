package com.nianticlabs.nia.location;

import android.content.Context;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import com.nianticlabs.nia.contextservice.ContextService;
import com.nianticlabs.nia.contextservice.ServiceStatus;
import com.nianticlabs.nia.location.GpsProvider.GpsProviderListener;
import com.nianticlabs.nia.location.Provider.ProviderListener;
import java.util.ArrayList;
import java.util.List;

public class LocationManagerProvider implements GpsProvider {
    private static final boolean ENABLE_VERBOSE_LOGS = false;
    private static final String TAG = "LocationManagerProvider";
    private final Context context;
    private boolean firstLocationUpdate;
    private final Listener gpsStatusListener;
    private LocationListener listener;
    private LocationManager locationManager;
    private final String provider;
    private ProviderListener providerListener;
    private boolean running;
    private final float updateDistance;
    private final int updateTime;

    /* renamed from: com.nianticlabs.nia.location.LocationManagerProvider.1 */
    class C07771 implements LocationListener {
        C07771() {
        }

        public void onLocationChanged(Location location) {
            if (LocationManagerProvider.this.running) {
                LocationManagerProvider.this.updateLocation(location);
            }
        }

        public void onProviderDisabled(String str) {
            LocationManagerProvider.this.updateStatus(ServiceStatus.PERMISSION_DENIED);
        }

        public void onProviderEnabled(String str) {
            LocationManagerProvider.this.updateStatus(ServiceStatus.RUNNING);
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    /* renamed from: com.nianticlabs.nia.location.LocationManagerProvider.2 */
    class C07782 implements Listener {
        C07782() {
        }

        private GpsSatellite[] getSatellites(GpsStatus gpsStatus) {
            List arrayList = new ArrayList();
            for (GpsSatellite add : gpsStatus.getSatellites()) {
                arrayList.add(add);
            }
            return (GpsSatellite[]) arrayList.toArray(new GpsSatellite[arrayList.size()]);
        }

        public void onGpsStatusChanged(int i) {
            if (LocationManagerProvider.this.running) {
                GpsStatus gpsStatus = LocationManagerProvider.this.locationManager.getGpsStatus(null);
                LocationManagerProvider.this.updateGpsStatus(gpsStatus.getTimeToFirstFix(), getSatellites(gpsStatus));
            }
        }
    }

    public LocationManagerProvider(Context context, String str, int i, float f) {
        this.running = ENABLE_VERBOSE_LOGS;
        this.firstLocationUpdate = ENABLE_VERBOSE_LOGS;
        this.listener = new C07771();
        this.gpsStatusListener = new C07782();
        this.providerListener = null;
        this.context = context;
        this.provider = str;
        this.updateTime = i;
        this.updateDistance = f;
    }

    private void updateGpsStatus(int i, GpsSatellite[] gpsSatelliteArr) {
        ProviderListener providerListener = this.providerListener;
        if (providerListener != null && (providerListener instanceof GpsProviderListener)) {
            ((GpsProviderListener) providerListener).onGpsStatusUpdate(i, gpsSatelliteArr);
        }
    }

    private void updateLocation(Location location) {
        ProviderListener providerListener = this.providerListener;
        if (providerListener != null) {
            if (this.firstLocationUpdate) {
                this.firstLocationUpdate = ENABLE_VERBOSE_LOGS;
                updateStatus(ServiceStatus.RUNNING);
            }
            providerListener.onProviderLocation(location);
        }
    }

    private void updateStatus(ServiceStatus serviceStatus) {
        ProviderListener providerListener = this.providerListener;
        if (providerListener != null) {
            providerListener.onProviderStatus(serviceStatus);
        }
    }

    public void onPause() {
        if (this.running) {
            try {
                this.locationManager.removeUpdates(this.listener);
                this.running = ENABLE_VERBOSE_LOGS;
            } catch (Throwable e) {
                Log.e(TAG, "Not allowed to access " + this.provider + " for updates", e);
            }
            updateStatus(ServiceStatus.STOPPED);
        }
    }

    public void onResume() {
        ServiceStatus serviceStatus;
        this.firstLocationUpdate = true;
        try {
            this.locationManager.requestLocationUpdates(this.provider, (long) this.updateTime, this.updateDistance, this.listener, ContextService.getServiceLooper());
            Log.d(TAG, "Location manager initialized");
            if ("gps".equals(provider)) {
                this.locationManager.addGpsStatusListener(this.gpsStatusListener);
            }
            this.running = true;
            serviceStatus = ServiceStatus.FAILED;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "Could not request " + this.provider + " updates", e);
            serviceStatus = ServiceStatus.FAILED;
        } catch (SecurityException e2) {
            Log.e(TAG, "Not allowed to access " + this.provider + " for updates", e2);
            serviceStatus = ServiceStatus.PERMISSION_DENIED;
        }
        if (this.running) {
            updateStatus(ServiceStatus.INITIALIZED);
            try {
                updateLocation(this.locationManager.getLastKnownLocation(this.provider));
                return;
            } catch (SecurityException e3) {
                return;
            }
        }
        updateStatus(serviceStatus);
    }

    public void onStart() {
        this.locationManager = (LocationManager) this.context.getSystemService(Context.LOCATION_SERVICE);
    }

    public void onStop() {
        this.locationManager = null;
    }

    public void setListener(ProviderListener providerListener) {
        this.providerListener = providerListener;
    }
}
