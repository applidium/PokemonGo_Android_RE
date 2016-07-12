package com.nianticlabs.nia.location;

import android.location.GpsSatellite;
import com.nianticlabs.nia.location.Provider.ProviderListener;

public interface GpsProvider extends Provider {

    public interface GpsProviderListener extends ProviderListener {
        void onGpsStatusUpdate(int i, GpsSatellite[] gpsSatelliteArr);
    }
}
