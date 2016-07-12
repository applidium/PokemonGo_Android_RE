package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.zzx;

public final class zzc {
    public static <T extends SafeParcelable> T zza(Intent intent, String str, Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        return byteArrayExtra == null ? null : zza(byteArrayExtra, creator);
    }

    public static <T extends SafeParcelable> T zza(byte[] bArr, Creator<T> creator) {
        zzx.zzw(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        SafeParcelable safeParcelable = (SafeParcelable) creator.createFromParcel(obtain);
        obtain.recycle();
        return safeParcelable;
    }

    public static <T extends SafeParcelable> void zza(T t, Intent intent, String str) {
        intent.putExtra(str, zza(t));
    }

    public static <T extends SafeParcelable> byte[] zza(T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
