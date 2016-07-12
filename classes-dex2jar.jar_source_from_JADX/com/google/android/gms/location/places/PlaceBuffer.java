package com.google.android.gms.location.places;

import android.content.Context;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.internal.zzs;

public class PlaceBuffer extends AbstractDataBuffer<Place> implements Result {
    private final Context mContext;
    private final Status zzSC;
    private final String zzaGk;

    public PlaceBuffer(DataHolder dataHolder, Context context) {
        super(dataHolder);
        this.mContext = context;
        this.zzSC = PlacesStatusCodes.zzhp(dataHolder.getStatusCode());
        if (dataHolder == null || dataHolder.zzor() == null) {
            this.zzaGk = null;
        } else {
            this.zzaGk = dataHolder.zzor().getString("com.google.android.gms.location.places.PlaceBuffer.ATTRIBUTIONS_EXTRA_KEY");
        }
    }

    public Place get(int i) {
        return new zzs(this.zzabq, i, this.mContext);
    }

    public CharSequence getAttributions() {
        return this.zzaGk;
    }

    public Status getStatus() {
        return this.zzSC;
    }
}
