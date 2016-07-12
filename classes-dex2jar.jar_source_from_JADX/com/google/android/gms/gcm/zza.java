package com.google.android.gms.gcm;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import com.squareup.otto.Bus;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;

class zza {
    static zza zzaCi;
    private Context mContext;

    private class zza extends IllegalArgumentException {
        final /* synthetic */ zza zzaCj;

        private zza(zza com_google_android_gms_gcm_zza, String str) {
            this.zzaCj = com_google_android_gms_gcm_zza;
            super(str);
        }
    }

    private zza(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void zza(String str, Notification notification) {
        if (Log.isLoggable("GcmNotification", 3)) {
            Log.d("GcmNotification", "Showing notification");
        }
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (TextUtils.isEmpty(str)) {
            str = "GCM-Notification:" + SystemClock.uptimeMillis();
        }
        notificationManager.notify(str, 0, notification);
    }

    static zza zzaz(Context context) {
        synchronized (zza.class) {
            try {
            } finally {
                Object obj = zza.class;
            }
        }
        if (zzaCi == null) {
            zzaCi = new zza(context);
        }
        zza com_google_android_gms_gcm_zza = zzaCi;
        return com_google_android_gms_gcm_zza;
    }

    static String zzc(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    private String zzd(Bundle bundle, String str) {
        Object zzc = zzc(bundle, str);
        if (!TextUtils.isEmpty(zzc)) {
            return zzc;
        }
        String zzc2 = zzc(bundle, str + "_loc_key");
        if (TextUtils.isEmpty(zzc2)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(zzc2, "string", this.mContext.getPackageName());
        if (identifier == 0) {
            throw new zza(zzdj(str + "_loc_key") + " resource not found: " + zzc2, null);
        }
        String zzc3 = zzc(bundle, str + "_loc_args");
        if (TextUtils.isEmpty(zzc3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(zzc3);
            String[] strArr = new String[jSONArray.length()];
            for (int i = 0; i < strArr.length; i++) {
                strArr[i] = jSONArray.opt(i);
            }
            try {
                return resources.getString(identifier, strArr);
            } catch (MissingFormatArgumentException e) {
                throw new zza("Missing format argument for " + zzc2 + ": " + e, null);
            }
        } catch (JSONException e2) {
            throw new zza("Malformed " + zzdj(str + "_loc_args") + ": " + zzc3, null);
        }
    }

    private String zzdj(String str) {
        return str.substring("gcm.n.".length());
    }

    private int zzdk(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new zza("Missing icon", null);
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(str, "drawable", this.mContext.getPackageName());
        if (identifier == 0) {
            identifier = resources.getIdentifier(str, "mipmap", this.mContext.getPackageName());
            if (identifier == 0) {
                throw new zza("Icon resource not found: " + str, null);
            }
        }
        return identifier;
    }

    private Uri zzdl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (Bus.DEFAULT_IDENTIFIER.equals(str)) {
            return RingtoneManager.getDefaultUri(2);
        }
        throw new zza("Invalid sound: " + str, null);
    }

    static boolean zzu(Bundle bundle) {
        return zzc(bundle, "gcm.n.icon") != null;
    }

    private int zzvW() {
        return (int) SystemClock.uptimeMillis();
    }

    private Notification zzw(Bundle bundle) {
        CharSequence zzd = zzd(bundle, "gcm.n.title");
        if (TextUtils.isEmpty(zzd)) {
            throw new zza("Missing title", null);
        }
        CharSequence zzd2 = zzd(bundle, "gcm.n.body");
        int zzdk = zzdk(zzc(bundle, "gcm.n.icon"));
        Uri zzdl = zzdl(zzc(bundle, "gcm.n.sound"));
        PendingIntent zzx = zzx(bundle);
        if (VERSION.SDK_INT >= 11) {
            Builder contentText = new Builder(this.mContext).setAutoCancel(true).setSmallIcon(zzdk).setContentTitle(zzd).setContentText(zzd2);
            if (VERSION.SDK_INT >= 21) {
                Object zzc = zzc(bundle, "gcm.n.color");
                if (!TextUtils.isEmpty(zzc)) {
                    contentText.setColor(Color.parseColor(zzc));
                }
            }
            if (zzdl != null) {
                contentText.setSound(zzdl);
            }
            if (zzx != null) {
                contentText.setContentIntent(zzx);
            }
            return VERSION.SDK_INT >= 16 ? contentText.build() : contentText.getNotification();
        } else {
            if (zzx == null) {
                Intent intent = new Intent();
                intent.setPackage("com.google.example.invalidpackage");
                zzx = PendingIntent.getBroadcast(this.mContext, 0, intent, 0);
            }
            NotificationCompat.Builder contentText2 = new NotificationCompat.Builder(this.mContext).setSmallIcon(zzdk).setAutoCancel(true).setContentIntent(zzx).setContentTitle(zzd).setContentText(zzd2);
            if (zzdl != null) {
                contentText2.setSound(zzdl);
            }
            return contentText2.build();
        }
    }

    private PendingIntent zzx(Bundle bundle) {
        Object zzc = zzc(bundle, "gcm.n.click_action");
        if (TextUtils.isEmpty(zzc)) {
            return null;
        }
        Intent intent = new Intent(zzc);
        intent.setPackage(this.mContext.getPackageName());
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        for (String str : bundle.keySet()) {
            if (str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                intent.removeExtra(str);
            }
        }
        return PendingIntent.getActivity(this.mContext, zzvW(), intent, 1073741824);
    }

    boolean zzv(Bundle bundle) {
        try {
            zza(zzc(bundle, "gcm.n.tag"), zzw(bundle));
            return true;
        } catch (zza e) {
            Log.w("GcmNotification", "Failed to show notification: " + e.getMessage());
            return false;
        }
    }
}
