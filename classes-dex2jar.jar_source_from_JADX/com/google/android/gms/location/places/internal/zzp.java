package com.google.android.gms.location.places.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class zzp {
    private static final String TAG;
    private static final long zzaHF;
    private static zzp zzaHG;
    private final Context mContext;
    private final Handler mHandler;
    private final Runnable zzaHH;
    private ArrayList<String> zzaHI;
    private ArrayList<String> zzaHJ;
    private final Object zzpd;

    private class zza implements Runnable {
        final /* synthetic */ zzp zzaHK;

        private zza(zzp com_google_android_gms_location_places_internal_zzp) {
            this.zzaHK = com_google_android_gms_location_places_internal_zzp;
        }

        public void run() {
            synchronized (this.zzaHK.zzpd) {
                Intent intent = new Intent("com.google.android.location.places.METHOD_CALL");
                intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
                intent.putStringArrayListExtra("PLACE_IDS", this.zzaHK.zzaHI);
                intent.putStringArrayListExtra("METHOD_NAMES", this.zzaHK.zzaHJ);
                intent.putExtra("PACKAGE_NAME", this.zzaHK.mContext.getPackageName());
                intent.putExtra("CLIENT_VERSION", GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                this.zzaHK.mContext.sendBroadcast(intent);
                this.zzaHK.zzaHI = null;
                this.zzaHK.zzaHJ = null;
            }
        }
    }

    static {
        TAG = zzp.class.getSimpleName();
        zzaHF = TimeUnit.SECONDS.toMillis(1);
    }

    private zzp(Context context) {
        this((Context) zzx.zzw(context), new Handler(Looper.getMainLooper()));
    }

    zzp(Context context, Handler handler) {
        this.zzaHH = new zza();
        this.zzpd = new Object();
        this.zzaHI = null;
        this.zzaHJ = null;
        this.mContext = context;
        this.mHandler = handler;
    }

    public static zzp zzaF(Context context) {
        zzp com_google_android_gms_location_places_internal_zzp;
        synchronized (zzp.class) {
            try {
                zzx.zzw(context);
                if (VERSION.SDK_INT < 14) {
                    com_google_android_gms_location_places_internal_zzp = null;
                } else {
                    if (zzaHG == null) {
                        zzaHG = new zzp(context.getApplicationContext());
                    }
                    com_google_android_gms_location_places_internal_zzp = zzaHG;
                }
            } catch (Throwable th) {
                Class cls = zzp.class;
            }
        }
        return com_google_android_gms_location_places_internal_zzp;
    }

    public void zzE(String str, String str2) {
        synchronized (this.zzpd) {
            if (this.zzaHI == null) {
                this.zzaHI = new ArrayList();
                this.zzaHJ = new ArrayList();
                this.mHandler.postDelayed(this.zzaHH, zzaHF);
            }
            this.zzaHI.add(str);
            this.zzaHJ.add(str2);
            if (this.zzaHI.size() >= 10000) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Event buffer full, flushing");
                }
                this.zzaHH.run();
                this.mHandler.removeCallbacks(this.zzaHH);
                return;
            }
        }
    }
}
