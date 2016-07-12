package com.google.android.gms.location.places;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.data.Freezable;

public interface PlacePhotoMetadata extends Freezable<PlacePhotoMetadata> {
    CharSequence getAttributions();

    int getMaxHeight();

    int getMaxWidth();

    PendingResult<PlacePhotoResult> getPhoto(GoogleApiClient googleApiClient);

    PendingResult<PlacePhotoResult> getScaledPhoto(GoogleApiClient googleApiClient, int i, int i2);
}
