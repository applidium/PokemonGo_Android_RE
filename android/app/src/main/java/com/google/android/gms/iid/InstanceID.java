package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.view.MotionEventCompat;
import android.util.Base64;
import android.util.Log;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import spacemadness.com.lunarconsole.BuildConfig;

public class InstanceID {
    public static final String ERROR_BACKOFF = "RETRY_LATER";
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_MISSING_INSTANCEID_SERVICE = "MISSING_INSTANCEID_SERVICE";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String ERROR_TIMEOUT = "TIMEOUT";
    static String zzaDC;
    static Map<String, InstanceID> zzaDw;
    private static zzd zzaDx;
    private static zzc zzaDy;
    Context mContext;
    String zzaDA;
    long zzaDB;
    KeyPair zzaDz;

    static {
        zzaDw = new HashMap();
    }

    protected InstanceID(Context context, String str, Bundle bundle) {
        this.zzaDA = BuildConfig.FLAVOR;
        this.mContext = context.getApplicationContext();
        this.zzaDA = str;
    }

    public static InstanceID getInstance(Context context) {
        return zza(context, null);
    }

    public static InstanceID zza(Context context, Bundle bundle) {
        InstanceID instanceID;
        synchronized (InstanceID.class) {
            String string = bundle == null ? BuildConfig.FLAVOR : bundle.getString("subtype");
            String str = string == null ? BuildConfig.FLAVOR : string;
            try {
                Context applicationContext = context.getApplicationContext();
                if (zzaDx == null) {
                    zzaDx = new zzd(applicationContext);
                    zzaDy = new zzc(applicationContext);
                }
                zzaDC = Integer.toString(zzaC(applicationContext));
                instanceID = (InstanceID) zzaDw.get(str);
                if (instanceID == null) {
                    instanceID = new InstanceID(applicationContext, str, bundle);
                    zzaDw.put(str, instanceID);
                }
            } catch (Throwable th) {
                Class cls = InstanceID.class;
            }
        }
        return instanceID;
    }

    static String zza(KeyPair keyPair) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & MotionEventCompat.ACTION_MASK);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("InstanceID", "Unexpected error, device missing required alghorithms");
            return null;
        }
    }

    static int zzaC(Context context) {
        int i = 0;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            Log.w("InstanceID", "Never happens: can't find own package " + e);
            return i;
        }
    }

    static String zzm(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public void deleteInstanceID() throws IOException {
        zzb("*", "*", null);
        zzwn();
    }

    public void deleteToken(String str, String str2) throws IOException {
        zzb(str, str2, null);
    }

    public long getCreationTime() {
        if (this.zzaDB == 0) {
            String str = zzaDx.get(this.zzaDA, "cre");
            if (str != null) {
                this.zzaDB = Long.parseLong(str);
            }
        }
        return this.zzaDB;
    }

    public String getId() {
        return zza(zzwm());
    }

    public String getToken(String str, String str2) throws IOException {
        return getToken(str, str2, null);
    }

    public String getToken(String str, String str2, Bundle bundle) throws IOException {
        Object obj = null;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        }
        Object obj2 = 1;
        String zzg = zzwq() ? null : zzaDx.zzg(this.zzaDA, str, str2);
        if (zzg == null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            if (bundle.getString("ttl") != null) {
                obj2 = null;
            }
            if (!"jwt".equals(bundle.getString(Keys.TYPE))) {
                obj = obj2;
            }
            zzg = zzc(str, str2, bundle);
            Log.w("InstanceID", "token: " + zzg);
            if (!(zzg == null || r1 == null)) {
                zzaDx.zza(this.zzaDA, str, str2, zzg, zzaDC);
            }
        }
        return zzg;
    }

    public void zzb(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        }
        zzaDx.zzh(this.zzaDA, str, str2);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("sender", str);
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("subscription", str);
        bundle.putString("delete", "1");
        bundle.putString("X-delete", "1");
        bundle.putString("subtype", BuildConfig.FLAVOR.equals(this.zzaDA) ? str : this.zzaDA);
        if (!BuildConfig.FLAVOR.equals(this.zzaDA)) {
            str = this.zzaDA;
        }
        bundle.putString("X-subtype", str);
        zzaDy.zzp(zzaDy.zza(bundle, zzwm()));
    }

    public String zzc(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        String str3 = BuildConfig.FLAVOR.equals(this.zzaDA) ? str : this.zzaDA;
        if (!bundle.containsKey("legacy.register")) {
            bundle.putString("subscription", str);
            bundle.putString("subtype", str3);
            bundle.putString("X-subscription", str);
            bundle.putString("X-subtype", str3);
        }
        return zzaDy.zzp(zzaDy.zza(bundle, zzwm()));
    }

    KeyPair zzwm() {
        if (this.zzaDz == null) {
            this.zzaDz = zzaDx.zzdq(this.zzaDA);
        }
        if (this.zzaDz == null) {
            this.zzaDB = System.currentTimeMillis();
            this.zzaDz = zzaDx.zze(this.zzaDA, this.zzaDB);
        }
        return this.zzaDz;
    }

    void zzwn() {
        this.zzaDB = 0;
        zzaDx.zzdr(this.zzaDA);
        this.zzaDz = null;
    }

    zzd zzwo() {
        return zzaDx;
    }

    zzc zzwp() {
        return zzaDy;
    }

    boolean zzwq() {
        String str = zzaDx.get("appVersion");
        if (str == null || !str.equals(zzaDC)) {
            return true;
        }
        str = zzaDx.get("lastToken");
        if (str == null) {
            return true;
        }
        return (System.currentTimeMillis() / 1000) - Long.valueOf(Long.parseLong(str)).longValue() > 604800;
    }
}
