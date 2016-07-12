package com.nianticlabs.nia.location;

import android.location.Location;
import com.nianticlabs.nia.contextservice.ServiceStatus;

public interface Provider {

    public interface ProviderListener {
        void onProviderLocation(Location location);

        void onProviderStatus(ServiceStatus serviceStatus);
    }

    void onPause();

    void onResume();

    void onStart();

    void onStop();

    void setListener(ProviderListener providerListener);
}
