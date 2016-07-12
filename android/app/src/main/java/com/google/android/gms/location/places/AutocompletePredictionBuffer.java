package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.location.places.internal.zzb;

public class AutocompletePredictionBuffer extends AbstractDataBuffer<AutocompletePrediction> implements Result {
    public AutocompletePredictionBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    public AutocompletePrediction get(int i) {
        return new zzb(this.zzabq, i);
    }

    public Status getStatus() {
        return PlacesStatusCodes.zzhp(this.zzabq.getStatusCode());
    }

    public String toString() {
        return zzw.zzv(this).zzg(NotificationCompatApi21.CATEGORY_STATUS, getStatus()).toString();
    }
}
