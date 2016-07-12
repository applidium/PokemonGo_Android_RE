package com.google.android.gms.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public interface FusedLocationProviderApi {
    @Deprecated
    public static final String KEY_LOCATION_CHANGED = "com.google.android.location.LOCATION";
    public static final String KEY_MOCK_LOCATION = "mockLocation";

    Location getLastLocation(GoogleApiClient googleApiClient);

    LocationAvailability getLocationAvailability(GoogleApiClient googleApiClient);

    PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, PendingIntent pendingIntent);

    PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, LocationCallback locationCallback);

    PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, LocationListener locationListener);

    PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent);

    PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationCallback locationCallback, Looper looper);

    PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener);

    PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener, Looper looper);

    PendingResult<Status> setMockLocation(GoogleApiClient googleApiClient, Location location);

    PendingResult<Status> setMockMode(GoogleApiClient googleApiClient, boolean z);
}
