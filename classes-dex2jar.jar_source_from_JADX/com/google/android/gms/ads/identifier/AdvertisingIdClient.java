package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.ads.AdRequest;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.stats.zzb;
import com.google.android.gms.internal.zzav;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import spacemadness.com.lunarconsole.C1401R;

public class AdvertisingIdClient {
    private static boolean zzoh;
    private final Context mContext;
    com.google.android.gms.common.zza zzob;
    zzav zzoc;
    boolean zzod;
    Object zzoe;
    zza zzof;
    final long zzog;

    public static final class Info {
        private final String zzom;
        private final boolean zzon;

        public Info(String str, boolean z) {
            this.zzom = str;
            this.zzon = z;
        }

        public String getId() {
            return this.zzom;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzon;
        }

        public String toString() {
            return "{" + this.zzom + "}" + this.zzon;
        }
    }

    static class zza extends Thread {
        private WeakReference<AdvertisingIdClient> zzoi;
        private long zzoj;
        CountDownLatch zzok;
        boolean zzol;

        public zza(AdvertisingIdClient advertisingIdClient, long j) {
            this.zzoi = new WeakReference(advertisingIdClient);
            this.zzoj = j;
            this.zzok = new CountDownLatch(1);
            this.zzol = false;
            start();
        }

        private void disconnect() {
            AdvertisingIdClient advertisingIdClient = (AdvertisingIdClient) this.zzoi.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.finish();
                this.zzol = true;
            }
        }

        public void cancel() {
            this.zzok.countDown();
        }

        public void run() {
            try {
                if (!this.zzok.await(this.zzoj, TimeUnit.MILLISECONDS)) {
                    disconnect();
                }
            } catch (InterruptedException e) {
                disconnect();
            }
        }

        public boolean zzaK() {
            return this.zzol;
        }
    }

    static {
        zzoh = false;
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000);
    }

    public AdvertisingIdClient(Context context, long j) {
        this.zzoe = new Object();
        zzx.zzw(context);
        this.mContext = context;
        this.zzod = false;
        this.zzog = j;
    }

    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1);
        try {
            advertisingIdClient.zzb(false);
            Info info = advertisingIdClient.getInfo();
            return info;
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
        zzoh = z;
    }

    static zzav zza(Context context, com.google.android.gms.common.zza com_google_android_gms_common_zza) throws IOException {
        try {
            return com.google.android.gms.internal.zzav.zza.zzb(com_google_android_gms_common_zza.zzno());
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            IOException iOException = new IOException(th);
        }
    }

    private void zzaJ() {
        synchronized (this.zzoe) {
            if (this.zzof != null) {
                this.zzof.cancel();
                try {
                    this.zzof.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.zzog > 0) {
                this.zzof = new zza(this, this.zzog);
            }
        }
    }

    static com.google.android.gms.common.zza zzo(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        try {
            context.getPackageManager().getPackageInfo(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, 0);
            if (zzoh) {
                Log.d(AdRequest.LOGTAG, "Skipping gmscore version check");
                switch (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context)) {
                    case C1401R.styleable.AdsAttrs_adSize /*0*/:
                    case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        break;
                    default:
                        throw new IOException("Google Play services not available");
                }
            }
            try {
                GooglePlayServicesUtil.zzaa(context);
            } catch (Throwable e) {
                throw new IOException(e);
            }
            ServiceConnection com_google_android_gms_common_zza = new com.google.android.gms.common.zza();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            try {
                if (zzb.zzqh().zza(context, intent, com_google_android_gms_common_zza, 1)) {
                    return com_google_android_gms_common_zza;
                }
                throw new IOException("Connection failure");
            } catch (Throwable e2) {
                IOException iOException = new IOException(e2);
            }
        } catch (NameNotFoundException e3) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    protected void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    public void finish() {
        zzx.zzcj("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext == null || this.zzob == null) {
                return;
            }
            try {
                if (this.zzod) {
                    zzb.zzqh().zza(this.mContext, this.zzob);
                }
            } catch (Throwable e) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", e);
            }
            this.zzod = false;
            this.zzoc = null;
            this.zzob = null;
        }
    }

    public Info getInfo() throws IOException {
        Info info;
        zzx.zzcj("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzod) {
                synchronized (this.zzoe) {
                    if (this.zzof == null || !this.zzof.zzaK()) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zzb(false);
                    if (!this.zzod) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Throwable e) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                    throw new IOException("Remote exception");
                } catch (Throwable e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
            zzx.zzw(this.zzob);
            zzx.zzw(this.zzoc);
            info = new Info(this.zzoc.getId(), this.zzoc.zzc(true));
        }
        zzaJ();
        return info;
    }

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb(true);
    }

    protected void zzb(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzx.zzcj("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzod) {
                finish();
            }
            this.zzob = zzo(this.mContext);
            this.zzoc = zza(this.mContext, this.zzob);
            this.zzod = true;
            if (z) {
                zzaJ();
            }
        }
    }
}
