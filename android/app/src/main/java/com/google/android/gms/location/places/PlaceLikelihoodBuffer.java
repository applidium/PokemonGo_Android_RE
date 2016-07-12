package com.google.android.gms.location.places;

import android.content.Context;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.places.internal.zzn;
import com.voxelbusters.nativeplugins.utilities.FileUtility;

public class PlaceLikelihoodBuffer extends AbstractDataBuffer<PlaceLikelihood> implements Result {
    private final Context mContext;
    private final Status zzSC;
    private final String zzaGk;
    private final int zzaGp;

    public static class zza {
        static int zzhk(int i) {
            switch (i) {
                case FileUtility.IMAGE_QUALITY /*100*/:
                case 101:
                case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /*102*/:
                case 103:
                case LocationRequest.PRIORITY_LOW_POWER /*104*/:
                case LocationRequest.PRIORITY_NO_POWER /*105*/:
                    return i;
                default:
                    throw new IllegalArgumentException("invalid source: " + i);
            }
        }
    }

    public PlaceLikelihoodBuffer(DataHolder dataHolder, int i, Context context) {
        super(dataHolder);
        this.mContext = context;
        this.zzSC = PlacesStatusCodes.zzhp(dataHolder.getStatusCode());
        this.zzaGp = zza.zzhk(i);
        if (dataHolder == null || dataHolder.zzor() == null) {
            this.zzaGk = null;
        } else {
            this.zzaGk = dataHolder.zzor().getString("com.google.android.gms.location.places.PlaceLikelihoodBuffer.ATTRIBUTIONS_EXTRA_KEY");
        }
    }

    public PlaceLikelihood get(int i) {
        return new zzn(this.zzabq, i, this.mContext);
    }

    public CharSequence getAttributions() {
        return this.zzaGk;
    }

    public Status getStatus() {
        return this.zzSC;
    }

    public String toString() {
        return zzw.zzv(this).zzg(NotificationCompatApi21.CATEGORY_STATUS, getStatus()).zzg("attributions", this.zzaGk).toString();
    }
}
