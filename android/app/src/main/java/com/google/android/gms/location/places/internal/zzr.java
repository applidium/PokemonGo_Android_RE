package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.PlacePhotoMetadata;
import com.google.android.gms.location.places.PlacePhotoResult;

public class zzr extends zzu implements PlacePhotoMetadata {
    private final String zzaHL;

    public zzr(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzaHL = getString("photo_fife_url");
    }

    public /* synthetic */ Object freeze() {
        return zzxp();
    }

    public CharSequence getAttributions() {
        return zzF("photo_attributions", null);
    }

    public int getMaxHeight() {
        return zzz("photo_max_height", 0);
    }

    public int getMaxWidth() {
        return zzz("photo_max_width", 0);
    }

    public PendingResult<PlacePhotoResult> getPhoto(GoogleApiClient googleApiClient) {
        return getScaledPhoto(googleApiClient, getMaxWidth(), getMaxHeight());
    }

    public PendingResult<PlacePhotoResult> getScaledPhoto(GoogleApiClient googleApiClient, int i, int i2) {
        return zzxp().getScaledPhoto(googleApiClient, i, i2);
    }

    public PlacePhotoMetadata zzxp() {
        return new zzq(this.zzaHL, getMaxWidth(), getMaxHeight(), getAttributions(), this.zzadl);
    }
}
