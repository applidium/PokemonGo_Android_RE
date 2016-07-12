package com.unity3d.player;

import android.content.Context;
import android.hardware.GeomagneticField;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.Bundle;
import java.util.List;

/* renamed from: com.unity3d.player.r */
final class C0860r implements LocationListener {
    private final Context f213a;
    private final UnityPlayer f214b;
    private Location f215c;
    private float f216d;
    private boolean f217e;
    private int f218f;
    private boolean f219g;
    private int f220h;

    protected C0860r(Context context, UnityPlayer unityPlayer) {
        this.f216d = 0.0f;
        this.f217e = false;
        this.f218f = 0;
        this.f219g = false;
        this.f220h = 0;
        this.f213a = context;
        this.f214b = unityPlayer;
    }

    private void m156a(int i) {
        this.f220h = i;
        this.f214b.nativeSetLocationStatus(i);
    }

    private void m157a(Location location) {
        if (location != null && C0860r.m158a(location, this.f215c)) {
            this.f215c = location;
            this.f214b.nativeSetLocation((float) location.getLatitude(), (float) location.getLongitude(), (float) location.getAltitude(), location.getAccuracy(), ((double) location.getTime()) / 1000.0d, new GeomagneticField((float) this.f215c.getLatitude(), (float) this.f215c.getLongitude(), (float) this.f215c.getAltitude(), this.f215c.getTime()).getDeclination());
        }
    }

    private static boolean m158a(Location location, Location location2) {
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        boolean z = time > 120000;
        boolean z2 = time < -120000;
        boolean z3 = time > 0;
        if (z) {
            return true;
        }
        if (z2) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        return !(accuracy < 0) ? (!z3 || (accuracy > 0)) ? z3 && ((accuracy > 200 ? 1 : 0) | (location.getAccuracy() == 0.0f ? 1 : 0)) == 0 && C0860r.m159a(location.getProvider(), location2.getProvider()) : true : true;
    }

    private static boolean m159a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public final void m160a(float f) {
        this.f216d = f;
    }

    public final boolean m161a() {
        return !((LocationManager) this.f213a.getSystemService("location")).getProviders(new Criteria(), true).isEmpty();
    }

    public final void m162b() {
        this.f219g = false;
        if (this.f217e) {
            C0853m.Log(5, "Location_StartUpdatingLocation already started!");
        } else if (m161a()) {
            LocationManager locationManager = (LocationManager) this.f213a.getSystemService("location");
            m156a(1);
            List<String> providers = locationManager.getProviders(true);
            if (providers.isEmpty()) {
                m156a(3);
                return;
            }
            LocationProvider locationProvider;
            if (this.f218f == 2) {
                for (String provider : providers) {
                    LocationProvider provider2 = locationManager.getProvider(provider);
                    if (provider2.getAccuracy() == 2) {
                        locationProvider = provider2;
                        break;
                    }
                }
            }
            locationProvider = null;
            for (String provider3 : providers) {
                if (locationProvider == null || locationManager.getProvider(provider3).getAccuracy() != 1) {
                    m157a(locationManager.getLastKnownLocation(provider3));
                    locationManager.requestLocationUpdates(provider3, 0, this.f216d, this, this.f213a.getMainLooper());
                    this.f217e = true;
                }
            }
        } else {
            m156a(3);
        }
    }

    public final void m163b(float f) {
        if (f < 100.0f) {
            this.f218f = 1;
        } else if (f < 500.0f) {
            this.f218f = 1;
        } else {
            this.f218f = 2;
        }
    }

    public final void m164c() {
        ((LocationManager) this.f213a.getSystemService("location")).removeUpdates(this);
        this.f217e = false;
        this.f215c = null;
        m156a(0);
    }

    public final void m165d() {
        if (this.f220h == 1 || this.f220h == 2) {
            this.f219g = true;
            m164c();
        }
    }

    public final void m166e() {
        if (this.f219g) {
            m162b();
        }
    }

    public final void onLocationChanged(Location location) {
        m156a(2);
        m157a(location);
    }

    public final void onProviderDisabled(String str) {
        this.f215c = null;
    }

    public final void onProviderEnabled(String str) {
    }

    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
