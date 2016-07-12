package com.google.android.gms.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.io.IOException;
import spacemadness.com.lunarconsole.BuildConfig;

public class InstanceIDListenerService extends Service {
    static String ACTION;
    private static String zzaCn;
    private static String zzaDF;
    private static String zzaDG;
    MessengerCompat zzaDD;
    BroadcastReceiver zzaDE;
    int zzaDH;
    int zzaDI;

    /* renamed from: com.google.android.gms.iid.InstanceIDListenerService.1 */
    class C04591 extends Handler {
        final /* synthetic */ InstanceIDListenerService zzaDJ;

        C04591(InstanceIDListenerService instanceIDListenerService, Looper looper) {
            this.zzaDJ = instanceIDListenerService;
            super(looper);
        }

        public void handleMessage(Message message) {
            this.zzaDJ.zza(message, MessengerCompat.zzc(message));
        }
    }

    /* renamed from: com.google.android.gms.iid.InstanceIDListenerService.2 */
    class C04602 extends BroadcastReceiver {
        final /* synthetic */ InstanceIDListenerService zzaDJ;

        C04602(InstanceIDListenerService instanceIDListenerService) {
            this.zzaDJ = instanceIDListenerService;
        }

        public void onReceive(Context context, Intent intent) {
            if (Log.isLoggable("InstanceID", 3)) {
                intent.getStringExtra("registration_id");
                Log.d("InstanceID", "Received GSF callback using dynamic receiver: " + intent.getExtras());
            }
            this.zzaDJ.zzn(intent);
            this.zzaDJ.stop();
        }
    }

    static {
        ACTION = "action";
        zzaDF = "google.com/iid";
        zzaDG = "CMD";
        zzaCn = "gcm.googleapis.com/refresh";
    }

    public InstanceIDListenerService() {
        this.zzaDD = new MessengerCompat(new C04591(this, Looper.getMainLooper()));
        this.zzaDE = new C04602(this);
    }

    static void zza(Context context, zzd com_google_android_gms_iid_zzd) {
        com_google_android_gms_iid_zzd.zzwt();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra(zzaDG, "RST");
        intent.setPackage(context.getPackageName());
        context.startService(intent);
    }

    private void zza(Message message, int i) {
        zzc.zzaE(this);
        getPackageManager();
        if (i == zzc.zzaDP || i == zzc.zzaDO) {
            zzn((Intent) message.obj);
        } else {
            Log.w("InstanceID", "Message from unexpected caller " + i + " mine=" + zzc.zzaDO + " appid=" + zzc.zzaDP);
        }
    }

    static void zzaD(Context context) {
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.setPackage(context.getPackageName());
        intent.putExtra(zzaDG, "SYNC");
        context.startService(intent);
    }

    public IBinder onBind(Intent intent) {
        return (intent == null || !"com.google.android.gms.iid.InstanceID".equals(intent.getAction())) ? null : this.zzaDD.getBinder();
    }

    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
        intentFilter.addCategory(getPackageName());
        registerReceiver(this.zzaDE, intentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
    }

    public void onDestroy() {
        unregisterReceiver(this.zzaDE);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        zzgI(i2);
        if (intent == null) {
            stop();
            return 2;
        }
        try {
            if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
                if (VERSION.SDK_INT <= 18) {
                    Intent intent2 = (Intent) intent.getParcelableExtra("GSF");
                    if (intent2 != null) {
                        startService(intent2);
                        return 1;
                    }
                }
                zzn(intent);
            }
            stop();
            if (intent.getStringExtra("from") != null) {
                WakefulBroadcastReceiver.completeWakefulIntent(intent);
            }
            return 2;
        } finally {
            stop();
        }
    }

    public void onTokenRefresh() {
    }

    void stop() {
        synchronized (this) {
            this.zzaDH--;
            if (this.zzaDH == 0) {
                stopSelf(this.zzaDI);
            }
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Stop " + this.zzaDH + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.zzaDI);
            }
        }
    }

    public void zzag(boolean z) {
        onTokenRefresh();
    }

    void zzgI(int i) {
        synchronized (this) {
            this.zzaDH++;
            if (i > this.zzaDI) {
                this.zzaDI = i;
            }
        }
    }

    public void zzn(Intent intent) {
        InstanceID instance;
        String stringExtra = intent.getStringExtra("subtype");
        if (stringExtra == null) {
            instance = InstanceID.getInstance(this);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("subtype", stringExtra);
            instance = InstanceID.zza(this, bundle);
        }
        String stringExtra2 = intent.getStringExtra(zzaDG);
        if (intent.getStringExtra(GameServices.ERROR) == null && intent.getStringExtra("registration_id") == null) {
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Service command " + stringExtra + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + stringExtra2 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + intent.getExtras());
            }
            if (intent.getStringExtra("unregistered") != null) {
                zzd zzwo = instance.zzwo();
                if (stringExtra == null) {
                    stringExtra = BuildConfig.FLAVOR;
                }
                zzwo.zzds(stringExtra);
                instance.zzwp().zzr(intent);
                return;
            } else if (zzaCn.equals(intent.getStringExtra("from"))) {
                instance.zzwo().zzds(stringExtra);
                zzag(false);
                return;
            } else if ("RST".equals(stringExtra2)) {
                instance.zzwn();
                zzag(true);
                return;
            } else if ("RST_FULL".equals(stringExtra2)) {
                if (!instance.zzwo().isEmpty()) {
                    instance.zzwo().zzwt();
                    zzag(true);
                    return;
                }
                return;
            } else if ("SYNC".equals(stringExtra2)) {
                instance.zzwo().zzds(stringExtra);
                zzag(false);
                return;
            } else if ("PING".equals(stringExtra2)) {
                try {
                    GoogleCloudMessaging.getInstance(this).send(zzaDF, zzc.zzws(), 0, intent.getExtras());
                    return;
                } catch (IOException e) {
                    Log.w("InstanceID", "Failed to send ping response");
                    return;
                }
            } else {
                return;
            }
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Register result in service " + stringExtra);
        }
        instance.zzwp().zzr(intent);
    }
}
