package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzk implements Callback {
    private final Handler mHandler;
    private final zza zzafP;
    private final ArrayList<ConnectionCallbacks> zzafQ;
    final ArrayList<ConnectionCallbacks> zzafR;
    private final ArrayList<OnConnectionFailedListener> zzafS;
    private volatile boolean zzafT;
    private final AtomicInteger zzafU;
    private boolean zzafV;
    private final Object zzpd;

    public interface zza {
        boolean isConnected();

        Bundle zzmS();
    }

    public zzk(Looper looper, zza com_google_android_gms_common_internal_zzk_zza) {
        this.zzafQ = new ArrayList();
        this.zzafR = new ArrayList();
        this.zzafS = new ArrayList();
        this.zzafT = false;
        this.zzafU = new AtomicInteger(0);
        this.zzafV = false;
        this.zzpd = new Object();
        this.zzafP = com_google_android_gms_common_internal_zzk_zza;
        this.mHandler = new Handler(looper, this);
    }

    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            ConnectionCallbacks connectionCallbacks = (ConnectionCallbacks) message.obj;
            synchronized (this.zzpd) {
                if (this.zzafT && this.zzafP.isConnected() && this.zzafQ.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(this.zzafP.zzmS());
                }
            }
            return true;
        }
        Log.wtf("GmsClientEvents", "Don't know how to handle message: " + message.what, new Exception());
        return false;
    }

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        zzx.zzw(connectionCallbacks);
        synchronized (this.zzpd) {
            contains = this.zzafQ.contains(connectionCallbacks);
        }
        return contains;
    }

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        zzx.zzw(onConnectionFailedListener);
        synchronized (this.zzpd) {
            contains = this.zzafS.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        zzx.zzw(connectionCallbacks);
        synchronized (this.zzpd) {
            if (this.zzafQ.contains(connectionCallbacks)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + connectionCallbacks + " is already registered");
            } else {
                this.zzafQ.add(connectionCallbacks);
            }
        }
        if (this.zzafP.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        zzx.zzw(onConnectionFailedListener);
        synchronized (this.zzpd) {
            if (this.zzafS.contains(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + onConnectionFailedListener + " is already registered");
            } else {
                this.zzafS.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        zzx.zzw(connectionCallbacks);
        synchronized (this.zzpd) {
            if (!this.zzafQ.remove(connectionCallbacks)) {
                Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + connectionCallbacks + " not found");
            } else if (this.zzafV) {
                this.zzafR.add(connectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        zzx.zzw(onConnectionFailedListener);
        synchronized (this.zzpd) {
            if (!this.zzafS.remove(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + onConnectionFailedListener + " not found");
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzbG(int r6) {
        /*
        r5 = this;
        r0 = 0;
        r1 = 1;
        r2 = android.os.Looper.myLooper();
        r3 = r5.mHandler;
        r3 = r3.getLooper();
        if (r2 != r3) goto L_0x000f;
    L_0x000e:
        r0 = r1;
    L_0x000f:
        r2 = "onUnintentionalDisconnection must only be called on the Handler thread";
        com.google.android.gms.common.internal.zzx.zza(r0, r2);
        r0 = r5.mHandler;
        r0.removeMessages(r1);
        r1 = r5.zzpd;
        monitor-enter(r1);
        r0 = 1;
        r5.zzafV = r0;	 Catch:{ all -> 0x005e }
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x005e }
        r2 = r5.zzafQ;	 Catch:{ all -> 0x005e }
        r0.<init>(r2);	 Catch:{ all -> 0x005e }
        r2 = r5.zzafU;	 Catch:{ all -> 0x005e }
        r2 = r2.get();	 Catch:{ all -> 0x005e }
        r3 = r0.iterator();	 Catch:{ all -> 0x005e }
    L_0x0030:
        r0 = r3.hasNext();	 Catch:{ all -> 0x005e }
        if (r0 == 0) goto L_0x0048;
    L_0x0036:
        r0 = r3.next();	 Catch:{ all -> 0x005e }
        r0 = (com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks) r0;	 Catch:{ all -> 0x005e }
        r4 = r5.zzafT;	 Catch:{ all -> 0x005e }
        if (r4 == 0) goto L_0x0048;
    L_0x0040:
        r4 = r5.zzafU;	 Catch:{ all -> 0x005e }
        r4 = r4.get();	 Catch:{ all -> 0x005e }
        if (r4 == r2) goto L_0x0052;
    L_0x0048:
        r0 = r5.zzafR;	 Catch:{ all -> 0x005e }
        r0.clear();	 Catch:{ all -> 0x005e }
        r0 = 0;
        r5.zzafV = r0;	 Catch:{ all -> 0x005e }
        monitor-exit(r1);	 Catch:{ all -> 0x005e }
        return;
    L_0x0052:
        r4 = r5.zzafQ;	 Catch:{ all -> 0x005e }
        r4 = r4.contains(r0);	 Catch:{ all -> 0x005e }
        if (r4 == 0) goto L_0x0030;
    L_0x005a:
        r0.onConnectionSuspended(r6);	 Catch:{ all -> 0x005e }
        goto L_0x0030;
    L_0x005e:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x005e }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzk.zzbG(int):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzh(android.os.Bundle r6) {
        /*
        r5 = this;
        r2 = 0;
        r1 = 1;
        r0 = android.os.Looper.myLooper();
        r3 = r5.mHandler;
        r3 = r3.getLooper();
        if (r0 != r3) goto L_0x006e;
    L_0x000e:
        r0 = r1;
    L_0x000f:
        r3 = "onConnectionSuccess must only be called on the Handler thread";
        com.google.android.gms.common.internal.zzx.zza(r0, r3);
        r3 = r5.zzpd;
        monitor-enter(r3);
        r0 = r5.zzafV;	 Catch:{ all -> 0x0080 }
        if (r0 != 0) goto L_0x0070;
    L_0x001b:
        r0 = r1;
    L_0x001c:
        com.google.android.gms.common.internal.zzx.zzZ(r0);	 Catch:{ all -> 0x0080 }
        r0 = r5.mHandler;	 Catch:{ all -> 0x0080 }
        r4 = 1;
        r0.removeMessages(r4);	 Catch:{ all -> 0x0080 }
        r0 = 1;
        r5.zzafV = r0;	 Catch:{ all -> 0x0080 }
        r0 = r5.zzafR;	 Catch:{ all -> 0x0080 }
        r0 = r0.size();	 Catch:{ all -> 0x0080 }
        if (r0 != 0) goto L_0x0072;
    L_0x0030:
        com.google.android.gms.common.internal.zzx.zzZ(r1);	 Catch:{ all -> 0x0080 }
        r0 = new java.util.ArrayList;	 Catch:{ all -> 0x0080 }
        r1 = r5.zzafQ;	 Catch:{ all -> 0x0080 }
        r0.<init>(r1);	 Catch:{ all -> 0x0080 }
        r1 = r5.zzafU;	 Catch:{ all -> 0x0080 }
        r1 = r1.get();	 Catch:{ all -> 0x0080 }
        r2 = r0.iterator();	 Catch:{ all -> 0x0080 }
    L_0x0044:
        r0 = r2.hasNext();	 Catch:{ all -> 0x0080 }
        if (r0 == 0) goto L_0x0064;
    L_0x004a:
        r0 = r2.next();	 Catch:{ all -> 0x0080 }
        r0 = (com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks) r0;	 Catch:{ all -> 0x0080 }
        r4 = r5.zzafT;	 Catch:{ all -> 0x0080 }
        if (r4 == 0) goto L_0x0064;
    L_0x0054:
        r4 = r5.zzafP;	 Catch:{ all -> 0x0080 }
        r4 = r4.isConnected();	 Catch:{ all -> 0x0080 }
        if (r4 == 0) goto L_0x0064;
    L_0x005c:
        r4 = r5.zzafU;	 Catch:{ all -> 0x0080 }
        r4 = r4.get();	 Catch:{ all -> 0x0080 }
        if (r4 == r1) goto L_0x0074;
    L_0x0064:
        r0 = r5.zzafR;	 Catch:{ all -> 0x0080 }
        r0.clear();	 Catch:{ all -> 0x0080 }
        r0 = 0;
        r5.zzafV = r0;	 Catch:{ all -> 0x0080 }
        monitor-exit(r3);	 Catch:{ all -> 0x0080 }
        return;
    L_0x006e:
        r0 = r2;
        goto L_0x000f;
    L_0x0070:
        r0 = r2;
        goto L_0x001c;
    L_0x0072:
        r1 = r2;
        goto L_0x0030;
    L_0x0074:
        r4 = r5.zzafR;	 Catch:{ all -> 0x0080 }
        r4 = r4.contains(r0);	 Catch:{ all -> 0x0080 }
        if (r4 != 0) goto L_0x0044;
    L_0x007c:
        r0.onConnected(r6);	 Catch:{ all -> 0x0080 }
        goto L_0x0044;
    L_0x0080:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0080 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzk.zzh(android.os.Bundle):void");
    }

    public void zzi(ConnectionResult connectionResult) {
        zzx.zza(Looper.myLooper() == this.mHandler.getLooper(), (Object) "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzpd) {
            ArrayList arrayList = new ArrayList(this.zzafS);
            int i = this.zzafU.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                OnConnectionFailedListener onConnectionFailedListener = (OnConnectionFailedListener) it.next();
                if (!this.zzafT || this.zzafU.get() != i) {
                    return;
                } else if (this.zzafS.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public void zzpk() {
        this.zzafT = false;
        this.zzafU.incrementAndGet();
    }

    public void zzpl() {
        this.zzafT = true;
    }
}
