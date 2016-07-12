package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzx;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.List;

public class GcmNetworkManager {
    public static final int RESULT_FAILURE = 2;
    public static final int RESULT_RESCHEDULE = 1;
    public static final int RESULT_SUCCESS = 0;
    private static GcmNetworkManager zzaCh;
    private Context mContext;
    private final PendingIntent mPendingIntent;

    private GcmNetworkManager(Context context) {
        this.mContext = context;
        this.mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent(), 0);
    }

    public static GcmNetworkManager getInstance(Context context) {
        if (zzaCh == null) {
            zzaCh = new GcmNetworkManager(context.getApplicationContext());
        }
        return zzaCh;
    }

    static void zzdh(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must provide a valid tag.");
        } else if (100 < str.length()) {
            throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)");
        }
    }

    private void zzdi(String str) {
        boolean z = true;
        zzx.zzb((Object) str, (Object) "GcmTaskService must not be null.");
        Intent intent = new Intent(GcmTaskService.SERVICE_ACTION_EXECUTE_TASK);
        intent.setPackage(this.mContext.getPackageName());
        List<ResolveInfo> queryIntentServices = this.mContext.getPackageManager().queryIntentServices(intent, 0);
        boolean z2 = (queryIntentServices == null || queryIntentServices.size() == 0) ? false : true;
        zzx.zzb(z2, (Object) "There is no GcmTaskService component registered within this package. Have you extended GcmTaskService correctly?");
        for (ResolveInfo resolveInfo : queryIntentServices) {
            if (resolveInfo.serviceInfo.name.equals(str)) {
                break;
            }
        }
        z = false;
        zzx.zzb(z, "The GcmTaskService class you provided " + str + " does not seem to support receiving" + " com.google.android.gms.gcm.ACTION_TASK_READY.");
    }

    private Intent zzvV() {
        int zzaB = GoogleCloudMessaging.zzaB(this.mContext);
        if (zzaB < GoogleCloudMessaging.zzaCs) {
            Log.e("GcmNetworkManager", "Google Play Services is not available, dropping GcmNetworkManager request. code=" + zzaB);
            return null;
        }
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
        intent.setPackage(GoogleCloudMessaging.zzaA(this.mContext));
        intent.putExtra("app", this.mPendingIntent);
        return intent;
    }

    public void cancelAllTasks(Class<? extends GcmTaskService> cls) {
        zzdi(cls.getName());
        Intent zzvV = zzvV();
        if (zzvV != null) {
            zzvV.putExtra("scheduler_action", "CANCEL_ALL");
            zzvV.putExtra("component", new ComponentName(this.mContext, cls));
            this.mContext.sendBroadcast(zzvV);
        }
    }

    public void cancelTask(String str, Class<? extends GcmTaskService> cls) {
        zzdh(str);
        zzdi(cls.getName());
        Intent zzvV = zzvV();
        if (zzvV != null) {
            zzvV.putExtra("scheduler_action", "CANCEL_TASK");
            zzvV.putExtra(Keys.TAG, str);
            zzvV.putExtra("component", new ComponentName(this.mContext, cls));
            this.mContext.sendBroadcast(zzvV);
        }
    }

    public void schedule(Task task) {
        zzdi(task.getServiceName());
        Intent zzvV = zzvV();
        if (zzvV != null) {
            Bundle extras = zzvV.getExtras();
            extras.putString("scheduler_action", "SCHEDULE_TASK");
            task.toBundle(extras);
            zzvV.putExtras(extras);
            this.mContext.sendBroadcast(zzvV);
        }
    }
}
