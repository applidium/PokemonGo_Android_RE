package com.google.android.gms.location.places.internal;

import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzru;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class zzu extends zzc {
    private final String TAG;

    public zzu(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.TAG = "SafeDataBufferRef";
    }

    protected String zzF(String str, String str2) {
        return (!zzce(str) || zzcg(str)) ? str2 : getString(str);
    }

    protected <E extends SafeParcelable> E zza(String str, Creator<E> creator) {
        byte[] zzc = zzc(str, null);
        return zzc == null ? null : com.google.android.gms.common.internal.safeparcel.zzc.zza(zzc, creator);
    }

    protected <E extends SafeParcelable> List<E> zza(String str, Creator<E> creator, List<E> list) {
        byte[] zzc = zzc(str, null);
        if (zzc == null) {
            return list;
        }
        try {
            zzru zzz = zzru.zzz(zzc);
            if (zzz.zzbhW == null) {
                return list;
            }
            List<E> arrayList = new ArrayList(zzz.zzbhW.length);
            for (byte[] zza : zzz.zzbhW) {
                arrayList.add(com.google.android.gms.common.internal.safeparcel.zzc.zza(zza, creator));
            }
            return arrayList;
        } catch (Throwable e) {
            if (!Log.isLoggable("SafeDataBufferRef", 6)) {
                return list;
            }
            Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            return list;
        }
    }

    protected List<Integer> zza(String str, List<Integer> list) {
        byte[] zzc = zzc(str, null);
        if (zzc == null) {
            return list;
        }
        try {
            zzru zzz = zzru.zzz(zzc);
            if (zzz.zzbhV == null) {
                return list;
            }
            List<Integer> arrayList = new ArrayList(zzz.zzbhV.length);
            for (int valueOf : zzz.zzbhV) {
                arrayList.add(Integer.valueOf(valueOf));
            }
            return arrayList;
        } catch (Throwable e) {
            if (!Log.isLoggable("SafeDataBufferRef", 6)) {
                return list;
            }
            Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            return list;
        }
    }

    protected float zzb(String str, float f) {
        return (!zzce(str) || zzcg(str)) ? f : getFloat(str);
    }

    protected List<String> zzb(String str, List<String> list) {
        byte[] zzc = zzc(str, null);
        if (zzc != null) {
            try {
                zzru zzz = zzru.zzz(zzc);
                if (zzz.zzbhU != null) {
                    list = Arrays.asList(zzz.zzbhU);
                }
            } catch (Throwable e) {
                if (Log.isLoggable("SafeDataBufferRef", 6)) {
                    Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
                }
            }
        }
        return list;
    }

    protected byte[] zzc(String str, byte[] bArr) {
        return (!zzce(str) || zzcg(str)) ? bArr : getByteArray(str);
    }

    protected boolean zzh(String str, boolean z) {
        return (!zzce(str) || zzcg(str)) ? z : getBoolean(str);
    }

    protected int zzz(String str, int i) {
        return (!zzce(str) || zzcg(str)) ? i : getInteger(str);
    }
}
