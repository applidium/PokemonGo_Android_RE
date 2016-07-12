package com.google.android.gms.ads.internal.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzcm.zza;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zzc extends zza {
    private final Uri mUri;
    private final Drawable zzwm;
    private final double zzwn;

    public zzc(Drawable drawable, Uri uri, double d) {
        this.zzwm = drawable;
        this.mUri = uri;
        this.zzwn = d;
    }

    public double getScale() {
        return this.zzwn;
    }

    public Uri getUri() throws RemoteException {
        return this.mUri;
    }

    public zzd zzdv() throws RemoteException {
        return zze.zzy(this.zzwm);
    }
}
