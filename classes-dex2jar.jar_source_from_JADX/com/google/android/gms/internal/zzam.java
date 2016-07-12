package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class zzam extends zzal {
    private static AdvertisingIdClient zznq;
    private static CountDownLatch zznr;
    private static volatile boolean zzns;
    private boolean zznt;

    class zza {
        private String zznu;
        private boolean zznv;
        final /* synthetic */ zzam zznw;

        public zza(zzam com_google_android_gms_internal_zzam, String str, boolean z) {
            this.zznw = com_google_android_gms_internal_zzam;
            this.zznu = str;
            this.zznv = z;
        }

        public String getId() {
            return this.zznu;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zznv;
        }
    }

    private static final class zzb implements Runnable {
        private Context zznx;

        public zzb(Context context) {
            this.zznx = context.getApplicationContext();
            if (this.zznx == null) {
                this.zznx = context;
            }
        }

        public void run() {
            synchronized (zzam.class) {
                try {
                    if (zzam.zznq == null) {
                        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zznx);
                        advertisingIdClient.start();
                        zzam.zznq = advertisingIdClient;
                    }
                    zzam.zznr.countDown();
                } catch (GooglePlayServicesNotAvailableException e) {
                    zzam.zzns = true;
                    zzam.zznr.countDown();
                } catch (IOException e2) {
                    zzam.zznr.countDown();
                } catch (GooglePlayServicesRepairableException e3) {
                    zzam.zznr.countDown();
                } catch (Throwable th) {
                    Class cls = zzam.class;
                }
            }
        }
    }

    static {
        zznq = null;
        zznr = new CountDownLatch(1);
    }

    protected zzam(Context context, zzap com_google_android_gms_internal_zzap, zzaq com_google_android_gms_internal_zzaq, boolean z) {
        super(context, com_google_android_gms_internal_zzap, com_google_android_gms_internal_zzaq);
        this.zznt = z;
    }

    public static zzam zza(String str, Context context, boolean z) {
        zzap com_google_android_gms_internal_zzah = new zzah();
        zzal.zza(str, context, com_google_android_gms_internal_zzah);
        if (z) {
            synchronized (zzam.class) {
                try {
                    if (zznq == null) {
                        new Thread(new zzb(context)).start();
                    }
                } catch (Throwable th) {
                    while (true) {
                        break;
                    }
                    Class cls = zzam.class;
                }
            }
        }
        return new zzam(context, com_google_android_gms_internal_zzah, new zzas(239), z);
    }

    zza zzY() throws IOException {
        try {
            if (!zznr.await(2, TimeUnit.SECONDS)) {
                return new zza(this, null, false);
            }
            Info info;
            synchronized (zzam.class) {
                String str;
                try {
                    if (zznq == null) {
                        str = null;
                        zza com_google_android_gms_internal_zzam_zza = new zza(this, null, false);
                        return com_google_android_gms_internal_zzam_zza;
                    }
                    info = zznq.getInfo();
                } finally {
                    str = zzam.class;
                }
            }
            return new zza(this, zzk(info.getId()), info.isLimitAdTrackingEnabled());
        } catch (InterruptedException e) {
            return new zza(this, null, false);
        }
    }

    protected void zzc(Context context) {
        super.zzc(context);
        try {
            if (zzns || !this.zznt) {
                zza(24, zzal.zze(context));
                return;
            }
            zza zzY = zzY();
            String id = zzY.getId();
            if (id != null) {
                zza(28, zzY.isLimitAdTrackingEnabled() ? 1 : 0);
                zza(26, 5);
                zza(24, id);
            }
        } catch (IOException e) {
        } catch (zza e2) {
        }
    }
}
