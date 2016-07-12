package com.google.android.gms.location.places.personalized;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.PlacesStatusCodes;

public final class zzd extends com.google.android.gms.common.data.zzd<PlaceUserData> implements Result {
    private final Status zzSC;

    public zzd(DataHolder dataHolder) {
        this(dataHolder, PlacesStatusCodes.zzhp(dataHolder.getStatusCode()));
    }

    private zzd(DataHolder dataHolder, Status status) {
        super(dataHolder, PlaceUserData.CREATOR);
        boolean z = dataHolder == null || dataHolder.getStatusCode() == status.getStatusCode();
        zzx.zzaa(z);
        this.zzSC = status;
    }

    public static zzd zzaS(Status status) {
        return new zzd(null, status);
    }

    public Status getStatus() {
        return this.zzSC;
    }
}
