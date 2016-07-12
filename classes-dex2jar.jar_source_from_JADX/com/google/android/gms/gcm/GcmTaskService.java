package com.google.android.gms.gcm;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.upsight.android.internal.SchedulersModule;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.HashSet;
import java.util.Set;

public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private final Set<String> zzaCo;
    private int zzaCp;

    private class zza extends Thread {
        private final Bundle mExtras;
        private final String mTag;
        private final zzb zzaCq;
        final /* synthetic */ GcmTaskService zzaCr;

        zza(GcmTaskService gcmTaskService, String str, IBinder iBinder, Bundle bundle) {
            this.zzaCr = gcmTaskService;
            this.mTag = str;
            this.zzaCq = com.google.android.gms.gcm.zzb.zza.zzbR(iBinder);
            this.mExtras = bundle;
        }

        public void run() {
            try {
                this.zzaCq.zzgB(this.zzaCr.onRunTask(new TaskParams(this.mTag, this.mExtras)));
            } catch (RemoteException e) {
                Log.e("GcmTaskService", "Error reporting result of operation to scheduler for " + this.mTag);
            } finally {
                this.zzaCr.zzdm(this.mTag);
            }
        }
    }

    public GcmTaskService() {
        this.zzaCo = new HashSet();
    }

    private void zzdm(String str) {
        synchronized (this.zzaCo) {
            this.zzaCo.remove(str);
            if (this.zzaCo.size() == 0) {
                stopSelf(this.zzaCp);
            }
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onInitializeTasks() {
    }

    public abstract int onRunTask(TaskParams taskParams);

    public int onStartCommand(Intent intent, int i, int i2) {
        intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
        if (SERVICE_ACTION_EXECUTE_TASK.equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra(Keys.TAG);
            Parcelable parcelableExtra = intent.getParcelableExtra(SchedulersModule.SCHEDULER_CALLBACK);
            Bundle bundle = (Bundle) intent.getParcelableExtra("extras");
            if (parcelableExtra == null || !(parcelableExtra instanceof PendingCallback)) {
                Log.e("GcmTaskService", getPackageName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + stringExtra + ": Could not process request, invalid callback.");
            } else {
                synchronized (this.zzaCo) {
                    this.zzaCo.add(stringExtra);
                    stopSelf(this.zzaCp);
                    this.zzaCp = i2;
                }
                new zza(this, stringExtra, ((PendingCallback) parcelableExtra).getIBinder(), bundle).start();
            }
        } else if (SERVICE_ACTION_INITIALIZE.equals(intent.getAction())) {
            onInitializeTasks();
            synchronized (this.zzaCo) {
                this.zzaCp = i2;
                if (this.zzaCo.size() == 0) {
                    stopSelf(this.zzaCp);
                }
            }
        }
        return 2;
    }
}
