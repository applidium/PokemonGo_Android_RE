package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.location.LocationStatusCodes;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.io.IOException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.apache.commons.io.IOUtils;

public class zzc {
    static String zzaDN;
    static int zzaDO;
    static int zzaDP;
    static int zzaDQ;
    Context context;
    Messenger zzaCA;
    PendingIntent zzaCw;
    Map<String, Object> zzaDR;
    Messenger zzaDS;
    MessengerCompat zzaDT;
    long zzaDU;
    long zzaDV;
    int zzaDW;
    int zzaDX;
    long zzaDY;

    /* renamed from: com.google.android.gms.iid.zzc.1 */
    class C04621 extends Handler {
        final /* synthetic */ zzc zzaDZ;

        C04621(zzc com_google_android_gms_iid_zzc, Looper looper) {
            this.zzaDZ = com_google_android_gms_iid_zzc;
            super(looper);
        }

        public void handleMessage(Message message) {
            this.zzaDZ.zze(message);
        }
    }

    static {
        zzaDN = null;
        zzaDO = 0;
        zzaDP = 0;
        zzaDQ = 0;
    }

    public zzc(Context context) {
        this.zzaDR = new HashMap();
        this.context = context;
    }

    private void zzA(Object obj) {
        synchronized (getClass()) {
            for (String str : this.zzaDR.keySet()) {
                Object obj2 = this.zzaDR.get(str);
                this.zzaDR.put(str, obj);
                zze(obj2, obj);
            }
        }
    }

    static String zza(KeyPair keyPair, String... strArr) {
        String str = null;
        try {
            byte[] bytes = TextUtils.join(IOUtils.LINE_SEPARATOR_UNIX, strArr).getBytes("UTF-8");
            try {
                PrivateKey privateKey = keyPair.getPrivate();
                Signature instance = Signature.getInstance(privateKey instanceof RSAPrivateKey ? "SHA256withRSA" : "SHA256withECDSA");
                instance.initSign(privateKey);
                instance.update(bytes);
                str = InstanceID.zzm(instance.sign());
            } catch (Throwable e) {
                Log.e("InstanceID/Rpc", "Unable to sign registration request", e);
            }
        } catch (Throwable e2) {
            Log.e("InstanceID/Rpc", "Unable to encode string", e2);
        }
        return str;
    }

    public static String zzaE(Context context) {
        ApplicationInfo applicationInfo;
        if (zzaDN != null) {
            return zzaDN;
        }
        zzaDO = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0)) {
            if (packageManager.checkPermission("com.google.android.c2dm.permission.RECEIVE", resolveInfo.serviceInfo.packageName) == 0) {
                try {
                    ApplicationInfo applicationInfo2 = packageManager.getApplicationInfo(resolveInfo.serviceInfo.packageName, 0);
                    Log.w("InstanceID/Rpc", "Found " + applicationInfo2.uid);
                    zzaDP = applicationInfo2.uid;
                    zzaDN = resolveInfo.serviceInfo.packageName;
                    return zzaDN;
                } catch (NameNotFoundException e) {
                }
            } else {
                Log.w("InstanceID/Rpc", "Possible malicious package " + resolveInfo.serviceInfo.packageName + " declares " + "com.google.android.c2dm.intent.REGISTER" + " without permission");
            }
        }
        Log.w("InstanceID/Rpc", "Failed to resolve REGISTER intent, falling back");
        try {
            applicationInfo = packageManager.getApplicationInfo(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, 0);
            zzaDN = applicationInfo.packageName;
            zzaDP = applicationInfo.uid;
            return zzaDN;
        } catch (NameNotFoundException e2) {
            try {
                applicationInfo = packageManager.getApplicationInfo("com.google.android.gsf", 0);
                zzaDN = applicationInfo.packageName;
                zzaDP = applicationInfo.uid;
                return zzaDN;
            } catch (NameNotFoundException e3) {
                Log.w("InstanceID/Rpc", "Both Google Play Services and legacy GSF package are missing");
                return null;
            }
        }
    }

    private Intent zzb(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent intent;
        ConditionVariable conditionVariable = new ConditionVariable();
        String zzws = zzws();
        synchronized (getClass()) {
            this.zzaDR.put(zzws, conditionVariable);
        }
        zza(bundle, keyPair, zzws);
        conditionVariable.block(30000);
        synchronized (getClass()) {
            Object remove = this.zzaDR.remove(zzws);
            if (remove instanceof Intent) {
                intent = (Intent) remove;
            } else if (remove instanceof String) {
                throw new IOException((String) remove);
            } else {
                Log.w("InstanceID/Rpc", "No response " + remove);
                throw new IOException(InstanceID.ERROR_TIMEOUT);
            }
        }
        return intent;
    }

    private void zzdn(String str) {
        if ("com.google.android.gsf".equals(zzaDN)) {
            this.zzaDW++;
            if (this.zzaDW >= 3) {
                if (this.zzaDW == 3) {
                    this.zzaDX = new Random().nextInt(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE) + LocationStatusCodes.GEOFENCE_NOT_AVAILABLE;
                }
                this.zzaDX *= 2;
                this.zzaDY = SystemClock.elapsedRealtime() + ((long) this.zzaDX);
                Log.w("InstanceID/Rpc", "Backoff due to " + str + " for " + this.zzaDX);
            }
        }
    }

    private void zze(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message obtain = Message.obtain();
            obtain.obj = obj2;
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                Log.w("InstanceID/Rpc", "Failed to send response " + e);
            }
        }
    }

    private void zzi(String str, Object obj) {
        synchronized (getClass()) {
            Object obj2 = this.zzaDR.get(str);
            this.zzaDR.put(str, obj);
            zze(obj2, obj);
        }
    }

    public static String zzws() {
        int i;
        synchronized (zzc.class) {
            try {
            } finally {
                i = zzc.class;
            }
        }
        int i2 = zzaDQ;
        i = i2 + 1;
        zzaDQ = i;
        String num = Integer.toString(i2);
        return num;
    }

    Intent zza(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent zzb = zzb(bundle, keyPair);
        return (zzb == null || !zzb.hasExtra("google.messenger")) ? zzb : zzb(bundle, keyPair);
    }

    void zza(Bundle bundle, KeyPair keyPair, String str) throws IOException {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzaDY == 0 || elapsedRealtime > this.zzaDY) {
            zzwr();
            if (zzaDN == null) {
                throw new IOException(InstanceID.ERROR_MISSING_INSTANCEID_SERVICE);
            }
            this.zzaDU = SystemClock.elapsedRealtime();
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage(zzaDN);
            bundle.putString("gmsv", Integer.toString(GoogleCloudMessaging.zzaB(this.context)));
            bundle.putString("osv", Integer.toString(VERSION.SDK_INT));
            bundle.putString("app_ver", Integer.toString(InstanceID.zzaC(this.context)));
            bundle.putString("cliv", "1");
            bundle.putString("appid", InstanceID.zza(keyPair));
            bundle.putString("pub2", InstanceID.zzm(keyPair.getPublic().getEncoded()));
            bundle.putString("sig", zza(keyPair, this.context.getPackageName(), r1));
            intent.putExtras(bundle);
            zzo(intent);
            zzb(intent, str);
            return;
        }
        Log.w("InstanceID/Rpc", "Backoff mode, next request attempt: " + (this.zzaDY - elapsedRealtime) + " interval: " + this.zzaDX);
        throw new IOException(InstanceID.ERROR_BACKOFF);
    }

    protected void zzb(Intent intent, String str) {
        this.zzaDU = SystemClock.elapsedRealtime();
        intent.putExtra("kid", "|ID|" + str + "|");
        intent.putExtra("X-kid", "|ID|" + str + "|");
        boolean equals = "com.google.android.gsf".equals(zzaDN);
        String stringExtra = intent.getStringExtra("useGsf");
        if (stringExtra != null) {
            equals = "1".equals(stringExtra);
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            Log.d("InstanceID/Rpc", "Sending " + intent.getExtras());
        }
        if (this.zzaDS != null) {
            intent.putExtra("google.messenger", this.zzaCA);
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                this.zzaDS.send(obtain);
                return;
            } catch (RemoteException e) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        if (equals) {
            Intent intent2 = new Intent("com.google.android.gms.iid.InstanceID");
            intent2.setPackage(this.context.getPackageName());
            intent2.putExtra("GSF", intent);
            this.context.startService(intent2);
            return;
        }
        intent.putExtra("google.messenger", this.zzaCA);
        intent.putExtra("messenger2", "1");
        if (this.zzaDT != null) {
            Message obtain2 = Message.obtain();
            obtain2.obj = intent;
            try {
                this.zzaDT.send(obtain2);
                return;
            } catch (RemoteException e2) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        this.context.startService(intent);
    }

    public void zze(Message message) {
        if (message != null) {
            if (message.obj instanceof Intent) {
                Intent intent = (Intent) message.obj;
                intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof MessengerCompat) {
                        this.zzaDT = (MessengerCompat) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.zzaDS = (Messenger) parcelableExtra;
                    }
                }
                zzr((Intent) message.obj);
                return;
            }
            Log.w("InstanceID/Rpc", "Dropping invalid message");
        }
    }

    void zzo(Intent intent) {
        synchronized (this) {
            if (this.zzaCw == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                this.zzaCw = PendingIntent.getBroadcast(this.context, 0, intent2, 0);
            }
            intent.putExtra("app", this.zzaCw);
        }
    }

    String zzp(Intent intent) throws IOException {
        if (intent == null) {
            throw new IOException(InstanceID.ERROR_SERVICE_NOT_AVAILABLE);
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        intent.getLongExtra("Retry-After", 0);
        if (stringExtra != null) {
            if (stringExtra == null) {
                return stringExtra;
            }
            stringExtra = intent.getStringExtra(GameServices.ERROR);
            if (stringExtra == null) {
                throw new IOException(stringExtra);
            }
            Log.w("InstanceID/Rpc", "Unexpected response from GCM " + intent.getExtras(), new Throwable());
            throw new IOException(InstanceID.ERROR_SERVICE_NOT_AVAILABLE);
        } else if (stringExtra == null) {
            return stringExtra;
        } else {
            stringExtra = intent.getStringExtra(GameServices.ERROR);
            if (stringExtra == null) {
                Log.w("InstanceID/Rpc", "Unexpected response from GCM " + intent.getExtras(), new Throwable());
                throw new IOException(InstanceID.ERROR_SERVICE_NOT_AVAILABLE);
            }
            throw new IOException(stringExtra);
        }
    }

    void zzq(Intent intent) {
        String str = null;
        String stringExtra = intent.getStringExtra(GameServices.ERROR);
        if (stringExtra == null) {
            Log.w("InstanceID/Rpc", "Unexpected response, no error or registration id " + intent.getExtras());
            return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            Log.d("InstanceID/Rpc", "Received InstanceID error " + stringExtra);
        }
        if (stringExtra.startsWith("|")) {
            String[] split = stringExtra.split("\\|");
            if (!"ID".equals(split[1])) {
                Log.w("InstanceID/Rpc", "Unexpected structured response " + stringExtra);
            }
            if (split.length > 2) {
                str = split[2];
                stringExtra = split[3];
                if (stringExtra.startsWith(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR)) {
                    stringExtra = stringExtra.substring(1);
                }
            } else {
                stringExtra = "UNKNOWN";
            }
            intent.putExtra(GameServices.ERROR, stringExtra);
        }
        if (str == null) {
            zzA(stringExtra);
        } else {
            zzi(str, stringExtra);
        }
        long longExtra = intent.getLongExtra("Retry-After", 0);
        if (longExtra > 0) {
            this.zzaDV = SystemClock.elapsedRealtime();
            this.zzaDX = ((int) longExtra) * LocationStatusCodes.GEOFENCE_NOT_AVAILABLE;
            this.zzaDY = SystemClock.elapsedRealtime() + ((long) this.zzaDX);
            Log.w("InstanceID/Rpc", "Explicit request from server to backoff: " + this.zzaDX);
        } else if (InstanceID.ERROR_SERVICE_NOT_AVAILABLE.equals(stringExtra) || "AUTHENTICATION_FAILED".equals(stringExtra)) {
            zzdn(stringExtra);
        }
    }

    void zzr(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("com.google.android.c2dm.intent.REGISTRATION".equals(action) || "com.google.android.gms.iid.InstanceID".equals(action)) {
                action = intent.getStringExtra("registration_id");
                String stringExtra = action == null ? intent.getStringExtra("unregistered") : action;
                if (stringExtra == null) {
                    zzq(intent);
                    return;
                }
                this.zzaDU = SystemClock.elapsedRealtime();
                this.zzaDY = 0;
                this.zzaDW = 0;
                this.zzaDX = 0;
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "AppIDResponse: " + stringExtra + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + intent.getExtras());
                }
                action = null;
                if (stringExtra.startsWith("|")) {
                    String[] split = stringExtra.split("\\|");
                    if (!"ID".equals(split[1])) {
                        Log.w("InstanceID/Rpc", "Unexpected structured response " + stringExtra);
                    }
                    stringExtra = split[2];
                    if (split.length > 4) {
                        if ("SYNC".equals(split[3])) {
                            InstanceIDListenerService.zzaD(this.context);
                        } else if ("RST".equals(split[3])) {
                            InstanceIDListenerService.zza(this.context, InstanceID.getInstance(this.context).zzwo());
                            intent.removeExtra("registration_id");
                            zzi(stringExtra, intent);
                            return;
                        }
                    }
                    action = split[split.length - 1];
                    if (action.startsWith(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR)) {
                        action = action.substring(1);
                    }
                    intent.putExtra("registration_id", action);
                    action = stringExtra;
                }
                if (action == null) {
                    zzA(intent);
                } else {
                    zzi(action, intent);
                }
            } else if (Log.isLoggable("InstanceID/Rpc", 3)) {
                Log.d("InstanceID/Rpc", "Unexpected response " + intent.getAction());
            }
        } else if (Log.isLoggable("InstanceID/Rpc", 3)) {
            Log.d("InstanceID/Rpc", "Unexpected response: null");
        }
    }

    void zzwr() {
        if (this.zzaCA == null) {
            zzaE(this.context);
            this.zzaCA = new Messenger(new C04621(this, Looper.getMainLooper()));
        }
    }
}
