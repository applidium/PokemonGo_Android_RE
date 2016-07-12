package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzd;
import java.util.HashMap;
import java.util.Map;
import spacemadness.com.lunarconsole.C1401R;

public class zzk {
    private final Context mContext;
    private final zzp<zzi> zzaFb;
    private ContentProviderClient zzaFv;
    private boolean zzaFw;
    private Map<LocationCallback, zza> zzaFx;
    private Map<LocationListener, zzc> zzaqR;

    private static class zza extends com.google.android.gms.location.zzc.zza {
        private Handler zzaFy;

        /* renamed from: com.google.android.gms.location.internal.zzk.zza.1 */
        class C06631 extends Handler {
            final /* synthetic */ LocationCallback zzaFh;
            final /* synthetic */ zza zzaFz;

            C06631(zza com_google_android_gms_location_internal_zzk_zza, Looper looper, LocationCallback locationCallback) {
                this.zzaFz = com_google_android_gms_location_internal_zzk_zza;
                this.zzaFh = locationCallback;
                super(looper);
            }

            public void handleMessage(Message message) {
                switch (message.what) {
                    case C1401R.styleable.AdsAttrs_adSize /*0*/:
                        this.zzaFh.onLocationResult((LocationResult) message.obj);
                    case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        this.zzaFh.onLocationAvailability((LocationAvailability) message.obj);
                    default:
                }
            }
        }

        zza(LocationCallback locationCallback, Looper looper) {
            if (looper == null) {
                looper = Looper.myLooper();
                zzx.zza(looper != null, (Object) "Can't create handler inside thread that has not called Looper.prepare()");
            }
            this.zzaFy = new C06631(this, looper, locationCallback);
        }

        private void zzb(int i, Object obj) {
            if (this.zzaFy == null) {
                Log.e("LocationClientHelper", "Received a data in client after calling removeLocationUpdates.");
                return;
            }
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.obj = obj;
            this.zzaFy.sendMessage(obtain);
        }

        public void onLocationAvailability(LocationAvailability locationAvailability) {
            zzb(1, locationAvailability);
        }

        public void onLocationResult(LocationResult locationResult) {
            zzb(0, locationResult);
        }

        public void release() {
            this.zzaFy = null;
        }
    }

    private static class zzb extends Handler {
        private final LocationListener zzaFA;

        public zzb(LocationListener locationListener) {
            this.zzaFA = locationListener;
        }

        public zzb(LocationListener locationListener, Looper looper) {
            super(looper);
            this.zzaFA = locationListener;
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    this.zzaFA.onLocationChanged(new Location((Location) message.obj));
                default:
                    Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
            }
        }
    }

    private static class zzc extends com.google.android.gms.location.zzd.zza {
        private Handler zzaFy;

        zzc(LocationListener locationListener, Looper looper) {
            if (looper == null) {
                zzx.zza(Looper.myLooper() != null, (Object) "Can't create handler inside thread that has not called Looper.prepare()");
            }
            this.zzaFy = looper == null ? new zzb(locationListener) : new zzb(locationListener, looper);
        }

        public void onLocationChanged(Location location) {
            if (this.zzaFy == null) {
                Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
                return;
            }
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = location;
            this.zzaFy.sendMessage(obtain);
        }

        public void release() {
            this.zzaFy = null;
        }
    }

    public zzk(Context context, zzp<zzi> com_google_android_gms_location_internal_zzp_com_google_android_gms_location_internal_zzi) {
        this.zzaFv = null;
        this.zzaFw = false;
        this.zzaqR = new HashMap();
        this.zzaFx = new HashMap();
        this.mContext = context;
        this.zzaFb = com_google_android_gms_location_internal_zzp_com_google_android_gms_location_internal_zzi;
    }

    private zza zza(LocationCallback locationCallback, Looper looper) {
        zza com_google_android_gms_location_internal_zzk_zza;
        synchronized (this.zzaqR) {
            com_google_android_gms_location_internal_zzk_zza = (zza) this.zzaFx.get(locationCallback);
            if (com_google_android_gms_location_internal_zzk_zza == null) {
                com_google_android_gms_location_internal_zzk_zza = new zza(locationCallback, looper);
            }
            this.zzaFx.put(locationCallback, com_google_android_gms_location_internal_zzk_zza);
        }
        return com_google_android_gms_location_internal_zzk_zza;
    }

    private zzc zza(LocationListener locationListener, Looper looper) {
        zzc com_google_android_gms_location_internal_zzk_zzc;
        synchronized (this.zzaqR) {
            com_google_android_gms_location_internal_zzk_zzc = (zzc) this.zzaqR.get(locationListener);
            if (com_google_android_gms_location_internal_zzk_zzc == null) {
                com_google_android_gms_location_internal_zzk_zzc = new zzc(locationListener, looper);
            }
            this.zzaqR.put(locationListener, com_google_android_gms_location_internal_zzk_zzc);
        }
        return com_google_android_gms_location_internal_zzk_zzc;
    }

    public Location getLastLocation() {
        this.zzaFb.zzpb();
        try {
            return ((zzi) this.zzaFb.zzpc()).zzdv(this.mContext.getPackageName());
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public void removeAllListeners() {
        try {
            synchronized (this.zzaqR) {
                for (zzd com_google_android_gms_location_zzd : this.zzaqR.values()) {
                    if (com_google_android_gms_location_zzd != null) {
                        ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zza(com_google_android_gms_location_zzd, null));
                    }
                }
                this.zzaqR.clear();
                for (com.google.android.gms.location.zzc com_google_android_gms_location_zzc : this.zzaFx.values()) {
                    if (com_google_android_gms_location_zzc != null) {
                        ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zza(com_google_android_gms_location_zzc, null));
                    }
                }
                this.zzaFx.clear();
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public void zza(PendingIntent pendingIntent, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFb.zzpb();
        ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zzb(pendingIntent, com_google_android_gms_location_internal_zzg));
    }

    public void zza(LocationCallback locationCallback, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFb.zzpb();
        zzx.zzb((Object) locationCallback, (Object) "Invalid null callback");
        synchronized (this.zzaFx) {
            com.google.android.gms.location.zzc com_google_android_gms_location_zzc = (zza) this.zzaFx.remove(locationCallback);
            if (com_google_android_gms_location_zzc != null) {
                com_google_android_gms_location_zzc.release();
                ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zza(com_google_android_gms_location_zzc, com_google_android_gms_location_internal_zzg));
            }
        }
    }

    public void zza(LocationListener locationListener, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFb.zzpb();
        zzx.zzb((Object) locationListener, (Object) "Invalid null listener");
        synchronized (this.zzaqR) {
            zzd com_google_android_gms_location_zzd = (zzc) this.zzaqR.remove(locationListener);
            if (this.zzaFv != null && this.zzaqR.isEmpty()) {
                this.zzaFv.release();
                this.zzaFv = null;
            }
            if (com_google_android_gms_location_zzd != null) {
                com_google_android_gms_location_zzd.release();
                ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zza(com_google_android_gms_location_zzd, com_google_android_gms_location_internal_zzg));
            }
        }
    }

    public void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFb.zzpb();
        ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zza(LocationRequestInternal.zzb(locationRequest), pendingIntent, com_google_android_gms_location_internal_zzg));
    }

    public void zza(LocationRequest locationRequest, LocationListener locationListener, Looper looper, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFb.zzpb();
        ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zza(LocationRequestInternal.zzb(locationRequest), zza(locationListener, looper), com_google_android_gms_location_internal_zzg));
    }

    public void zza(LocationRequestInternal locationRequestInternal, LocationCallback locationCallback, Looper looper, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFb.zzpb();
        ((zzi) this.zzaFb.zzpc()).zza(LocationRequestUpdateData.zza(locationRequestInternal, zza(locationCallback, looper), com_google_android_gms_location_internal_zzg));
    }

    public void zzah(boolean z) throws RemoteException {
        this.zzaFb.zzpb();
        ((zzi) this.zzaFb.zzpc()).zzah(z);
        this.zzaFw = z;
    }

    public void zzc(Location location) throws RemoteException {
        this.zzaFb.zzpb();
        ((zzi) this.zzaFb.zzpc()).zzc(location);
    }

    public LocationAvailability zzwD() {
        this.zzaFb.zzpb();
        try {
            return ((zzi) this.zzaFb.zzpc()).zzdw(this.mContext.getPackageName());
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public void zzwE() {
        if (this.zzaFw) {
            try {
                zzah(false);
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }
}
