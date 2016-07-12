package com.google.android.gms.gcm;

import android.app.Service;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;

public abstract class GcmListenerService extends Service {
    private int zzaCe;
    private int zzaCf;
    private final Object zzpd;

    /* renamed from: com.google.android.gms.gcm.GcmListenerService.1 */
    class C04471 implements Runnable {
        final /* synthetic */ Intent val$intent;
        final /* synthetic */ GcmListenerService zzaCg;

        C04471(GcmListenerService gcmListenerService, Intent intent) {
            this.zzaCg = gcmListenerService;
            this.val$intent = intent;
        }

        public void run() {
            this.zzaCg.zzk(this.val$intent);
        }
    }

    /* renamed from: com.google.android.gms.gcm.GcmListenerService.2 */
    class C04482 extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ Intent val$intent;
        final /* synthetic */ GcmListenerService zzaCg;

        C04482(GcmListenerService gcmListenerService, Intent intent) {
            this.zzaCg = gcmListenerService;
            this.val$intent = intent;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return zzb((Void[]) objArr);
        }

        protected Void zzb(Void... voidArr) {
            this.zzaCg.zzk(this.val$intent);
            return null;
        }
    }

    public GcmListenerService() {
        this.zzpd = new Object();
        this.zzaCf = 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzk(android.content.Intent r5) {
        /*
        r4 = this;
        r0 = "com.google.android.c2dm.intent.RECEIVE";
        r1 = r5.getAction();	 Catch:{ all -> 0x0084 }
        r0 = r0.equals(r1);	 Catch:{ all -> 0x0084 }
        if (r0 != 0) goto L_0x0010;
    L_0x000c:
        android.support.v4.content.WakefulBroadcastReceiver.completeWakefulIntent(r5);
    L_0x000f:
        return;
    L_0x0010:
        r0 = "message_type";
        r0 = r5.getStringExtra(r0);	 Catch:{ all -> 0x0084 }
        if (r0 != 0) goto L_0x001a;
    L_0x0018:
        r0 = "gcm";
    L_0x001a:
        r1 = -1;
        r2 = r0.hashCode();	 Catch:{ all -> 0x0084 }
        switch(r2) {
            case -2062414158: goto L_0x005e;
            case 102161: goto L_0x0054;
            case 814694033: goto L_0x0072;
            case 814800675: goto L_0x0068;
            default: goto L_0x0022;
        };	 Catch:{ all -> 0x0084 }
    L_0x0022:
        switch(r1) {
            case 0: goto L_0x007c;
            case 1: goto L_0x0089;
            case 2: goto L_0x008d;
            case 3: goto L_0x0097;
            default: goto L_0x0025;
        };	 Catch:{ all -> 0x0084 }
    L_0x0025:
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0084 }
        r1.<init>();	 Catch:{ all -> 0x0084 }
        r2 = "GcmListenerService";
        r3 = "Received message with unknown type: ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0084 }
        r0 = r1.append(r0);	 Catch:{ all -> 0x0084 }
        r0 = r0.toString();	 Catch:{ all -> 0x0084 }
        android.util.Log.w(r2, r0);	 Catch:{ all -> 0x0084 }
    L_0x003d:
        r1 = r4.zzpd;	 Catch:{ all -> 0x0084 }
        monitor-enter(r1);	 Catch:{ all -> 0x0084 }
        r0 = r4.zzaCf;	 Catch:{ all -> 0x00a7 }
        r0 = r0 + -1;
        r4.zzaCf = r0;	 Catch:{ all -> 0x00a7 }
        r0 = r4.zzaCf;	 Catch:{ all -> 0x00a7 }
        if (r0 != 0) goto L_0x004f;
    L_0x004a:
        r0 = r4.zzaCe;	 Catch:{ all -> 0x00a7 }
        r4.zzgA(r0);	 Catch:{ all -> 0x00a7 }
    L_0x004f:
        monitor-exit(r1);	 Catch:{ all -> 0x00a7 }
        android.support.v4.content.WakefulBroadcastReceiver.completeWakefulIntent(r5);
        goto L_0x000f;
    L_0x0054:
        r2 = "gcm";
        r2 = r0.equals(r2);	 Catch:{ all -> 0x0084 }
        if (r2 == 0) goto L_0x0022;
    L_0x005c:
        r1 = 0;
        goto L_0x0022;
    L_0x005e:
        r2 = "deleted_messages";
        r2 = r0.equals(r2);	 Catch:{ all -> 0x0084 }
        if (r2 == 0) goto L_0x0022;
    L_0x0066:
        r1 = 1;
        goto L_0x0022;
    L_0x0068:
        r2 = "send_event";
        r2 = r0.equals(r2);	 Catch:{ all -> 0x0084 }
        if (r2 == 0) goto L_0x0022;
    L_0x0070:
        r1 = 2;
        goto L_0x0022;
    L_0x0072:
        r2 = "send_error";
        r2 = r0.equals(r2);	 Catch:{ all -> 0x0084 }
        if (r2 == 0) goto L_0x0022;
    L_0x007a:
        r1 = 3;
        goto L_0x0022;
    L_0x007c:
        r0 = r5.getExtras();	 Catch:{ all -> 0x0084 }
        r4.zzt(r0);	 Catch:{ all -> 0x0084 }
        goto L_0x003d;
    L_0x0084:
        r0 = move-exception;
        android.support.v4.content.WakefulBroadcastReceiver.completeWakefulIntent(r5);
        throw r0;
    L_0x0089:
        r4.onDeletedMessages();	 Catch:{ all -> 0x0084 }
        goto L_0x003d;
    L_0x008d:
        r0 = "google.message_id";
        r0 = r5.getStringExtra(r0);	 Catch:{ all -> 0x0084 }
        r4.onMessageSent(r0);	 Catch:{ all -> 0x0084 }
        goto L_0x003d;
    L_0x0097:
        r0 = "google.message_id";
        r0 = r5.getStringExtra(r0);	 Catch:{ all -> 0x0084 }
        r1 = "error";
        r1 = r5.getStringExtra(r1);	 Catch:{ all -> 0x0084 }
        r4.onSendError(r0, r1);	 Catch:{ all -> 0x0084 }
        goto L_0x003d;
    L_0x00a7:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00a7 }
        throw r0;	 Catch:{ all -> 0x0084 }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.GcmListenerService.zzk(android.content.Intent):void");
    }

    private void zzt(Bundle bundle) {
        bundle.remove("message_type");
        bundle.remove("android.support.content.wakelockid");
        if (zza.zzu(bundle)) {
            zza.zzaz(this).zzv(bundle);
            return;
        }
        String string = bundle.getString("from");
        bundle.remove("from");
        onMessageReceived(string, bundle);
    }

    public final IBinder onBind(Intent intent) {
        return null;
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(String str, Bundle bundle) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, String str2) {
    }

    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.zzpd) {
            this.zzaCe = i2;
            this.zzaCf++;
        }
        if (VERSION.SDK_INT >= 11) {
            AsyncTask.THREAD_POOL_EXECUTOR.execute(new C04471(this, intent));
        } else {
            new C04482(this, intent).execute(new Void[0]);
        }
        return 3;
    }

    boolean zzgA(int i) {
        return stopSelfResult(i);
    }
}
