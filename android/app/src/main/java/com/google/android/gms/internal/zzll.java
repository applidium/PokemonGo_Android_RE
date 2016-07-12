package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;

abstract class zzll extends BroadcastReceiver {
    protected Context mContext;

    zzll() {
    }

    public static <T extends zzll> T zza(Context context, T t) {
        return zza(context, t, GoogleApiAvailability.getInstance());
    }

    public static <T extends zzll> T zza(Context context, T t, GoogleApiAvailability googleApiAvailability) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(t, intentFilter);
        t.mContext = context;
        if (googleApiAvailability.zzj(context, GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE)) {
            return t;
        }
        t.zzoi();
        t.unregister();
        return null;
    }

    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        Object obj = null;
        if (data != null) {
            obj = data.getSchemeSpecificPart();
        }
        if (GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE.equals(obj)) {
            zzoi();
            unregister();
        }
    }

    public void unregister() {
        synchronized (this) {
            if (this.mContext != null) {
                this.mContext.unregisterReceiver(this);
            }
            this.mContext = null;
        }
    }

    protected abstract void zzoi();
}
