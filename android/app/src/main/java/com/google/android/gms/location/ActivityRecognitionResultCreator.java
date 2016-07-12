package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

public class ActivityRecognitionResultCreator implements Creator<ActivityRecognitionResult> {
    public static final int CONTENT_DESCRIPTION = 0;

    static void zza(ActivityRecognitionResult activityRecognitionResult, Parcel parcel, int i) {
        int zzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, activityRecognitionResult.zzaEb, false);
        zzb.zzc(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, activityRecognitionResult.getVersionCode());
        zzb.zza(parcel, 2, activityRecognitionResult.zzaEc);
        zzb.zza(parcel, 3, activityRecognitionResult.zzaEd);
        zzb.zzc(parcel, 4, activityRecognitionResult.zzaEe);
        zzb.zzI(parcel, zzaq);
    }

    public ActivityRecognitionResult createFromParcel(Parcel parcel) {
        long j = 0;
        int i = 0;
        int zzap = zza.zzap(parcel);
        List list = null;
        long j2 = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzap) {
            int zzao = zza.zzao(parcel);
            switch (zza.zzbM(zzao)) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    list = zza.zzc(parcel, zzao, DetectedActivity.CREATOR);
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    j = zza.zzi(parcel, zzao);
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    j2 = zza.zzi(parcel, zzao);
                    break;
                case Place.TYPE_AQUARIUM /*4*/:
                    i2 = zza.zzg(parcel, zzao);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE /*1000*/:
                    i = zza.zzg(parcel, zzao);
                    break;
                default:
                    zza.zzb(parcel, zzao);
                    break;
            }
        }
        if (parcel.dataPosition() == zzap) {
            return new ActivityRecognitionResult(i, list, j, j2, i2);
        }
        throw new zza.zza("Overread allowed size end=" + zzap, parcel);
    }

    public ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}
