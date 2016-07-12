package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import spacemadness.com.lunarconsole.C1401R;

public abstract class zzj<T extends IInterface> implements com.google.android.gms.common.api.Api.zzb, com.google.android.gms.common.internal.zzk.zza {
    public static final String[] zzafI;
    private final Context mContext;
    final Handler mHandler;
    private final Account zzQd;
    private final Set<Scope> zzTm;
    private final Looper zzaaO;
    private final GoogleApiAvailability zzaaP;
    private final zzf zzabI;
    private T zzafA;
    private final ArrayList<zzc<?>> zzafB;
    private zze zzafC;
    private int zzafD;
    private final ConnectionCallbacks zzafE;
    private final OnConnectionFailedListener zzafF;
    private final int zzafG;
    protected AtomicInteger zzafH;
    private final zzl zzafx;
    private zzs zzafy;
    private com.google.android.gms.common.api.GoogleApiClient.zza zzafz;
    private final Object zzpd;

    protected abstract class zzc<TListener> {
        private TListener mListener;
        final /* synthetic */ zzj zzafK;
        private boolean zzafL;

        public zzc(zzj com_google_android_gms_common_internal_zzj, TListener tListener) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
            this.mListener = tListener;
            this.zzafL = false;
        }

        public void unregister() {
            zzpi();
            synchronized (this.zzafK.zzafB) {
                this.zzafK.zzafB.remove(this);
            }
        }

        protected abstract void zzpg();

        public void zzph() {
            synchronized (this) {
                Object obj = this.mListener;
                if (this.zzafL) {
                    Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
                }
            }
            if (obj != null) {
                try {
                    zzt(obj);
                } catch (RuntimeException e) {
                    zzpg();
                    throw e;
                }
            }
            zzpg();
            synchronized (this) {
                this.zzafL = true;
            }
            unregister();
        }

        public void zzpi() {
            synchronized (this) {
                this.mListener = null;
            }
        }

        protected abstract void zzt(TListener tListener);
    }

    private abstract class zza extends zzc<Boolean> {
        public final int statusCode;
        public final Bundle zzafJ;
        final /* synthetic */ zzj zzafK;

        protected zza(zzj com_google_android_gms_common_internal_zzj, int i, Bundle bundle) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
            super(com_google_android_gms_common_internal_zzj, Boolean.valueOf(true));
            this.statusCode = i;
            this.zzafJ = bundle;
        }

        protected void zzc(Boolean bool) {
            PendingIntent pendingIntent = null;
            if (bool == null) {
                this.zzafK.zzb(1, null);
                return;
            }
            switch (this.statusCode) {
                case C1401R.styleable.AdsAttrs_adSize /*0*/:
                    if (!zzpf()) {
                        this.zzafK.zzb(1, null);
                        zzh(new ConnectionResult(8, null));
                    }
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    this.zzafK.zzb(1, null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    this.zzafK.zzb(1, null);
                    if (this.zzafJ != null) {
                        pendingIntent = (PendingIntent) this.zzafJ.getParcelable("pendingIntent");
                    }
                    zzh(new ConnectionResult(this.statusCode, pendingIntent));
            }
        }

        protected abstract void zzh(ConnectionResult connectionResult);

        protected abstract boolean zzpf();

        protected void zzpg() {
        }

        protected /* synthetic */ void zzt(Object obj) {
            zzc((Boolean) obj);
        }
    }

    final class zzb extends Handler {
        final /* synthetic */ zzj zzafK;

        public zzb(zzj com_google_android_gms_common_internal_zzj, Looper looper) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
            super(looper);
        }

        private void zza(Message message) {
            zzc com_google_android_gms_common_internal_zzj_zzc = (zzc) message.obj;
            com_google_android_gms_common_internal_zzj_zzc.zzpg();
            com_google_android_gms_common_internal_zzj_zzc.unregister();
        }

        private boolean zzb(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 5 || message.what == 6;
        }

        public void handleMessage(Message message) {
            if (this.zzafK.zzafH.get() != message.arg1) {
                if (zzb(message)) {
                    zza(message);
                }
            } else if ((message.what == 1 || message.what == 5 || message.what == 6) && !this.zzafK.isConnecting()) {
                zza(message);
            } else if (message.what == 3) {
                ConnectionResult connectionResult = new ConnectionResult(message.arg2, null);
                this.zzafK.zzafz.zza(connectionResult);
                this.zzafK.onConnectionFailed(connectionResult);
            } else if (message.what == 4) {
                this.zzafK.zzb(4, null);
                if (this.zzafK.zzafE != null) {
                    this.zzafK.zzafE.onConnectionSuspended(message.arg2);
                }
                this.zzafK.onConnectionSuspended(message.arg2);
                this.zzafK.zza(4, 1, null);
            } else if (message.what == 2 && !this.zzafK.isConnected()) {
                zza(message);
            } else if (zzb(message)) {
                ((zzc) message.obj).zzph();
            } else {
                Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
            }
        }
    }

    public static final class zzd extends com.google.android.gms.common.internal.zzr.zza {
        private zzj zzafM;
        private final int zzafN;

        public zzd(zzj com_google_android_gms_common_internal_zzj, int i) {
            this.zzafM = com_google_android_gms_common_internal_zzj;
            this.zzafN = i;
        }

        private void zzpj() {
            this.zzafM = null;
        }

        public void zza(int i, IBinder iBinder, Bundle bundle) {
            zzx.zzb(this.zzafM, (Object) "onPostInitComplete can be called only once per call to getRemoteService");
            this.zzafM.zza(i, iBinder, bundle, this.zzafN);
            zzpj();
        }

        public void zzb(int i, Bundle bundle) {
            zzx.zzb(this.zzafM, (Object) "onAccountValidationComplete can be called only once per call to validateAccount");
            this.zzafM.zza(i, bundle, this.zzafN);
            zzpj();
        }
    }

    public final class zze implements ServiceConnection {
        final /* synthetic */ zzj zzafK;
        private final int zzafN;

        public zze(zzj com_google_android_gms_common_internal_zzj, int i) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
            this.zzafN = i;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            zzx.zzb((Object) iBinder, (Object) "Expecting a valid IBinder");
            this.zzafK.zzafy = com.google.android.gms.common.internal.zzs.zza.zzaK(iBinder);
            this.zzafK.zzbF(this.zzafN);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            this.zzafK.mHandler.sendMessage(this.zzafK.mHandler.obtainMessage(4, this.zzafN, 1));
        }
    }

    protected class zzf implements com.google.android.gms.common.api.GoogleApiClient.zza {
        final /* synthetic */ zzj zzafK;

        public zzf(zzj com_google_android_gms_common_internal_zzj) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
        }

        public void zza(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                this.zzafK.zza(null, this.zzafK.zzTm);
            } else if (this.zzafK.zzafF != null) {
                this.zzafK.zzafF.onConnectionFailed(connectionResult);
            }
        }

        public void zzb(ConnectionResult connectionResult) {
            throw new IllegalStateException("Legacy GmsClient received onReportAccountValidation callback.");
        }
    }

    protected final class zzg extends zza {
        final /* synthetic */ zzj zzafK;
        public final IBinder zzafO;

        public zzg(zzj com_google_android_gms_common_internal_zzj, int i, IBinder iBinder, Bundle bundle) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
            super(com_google_android_gms_common_internal_zzj, i, bundle);
            this.zzafO = iBinder;
        }

        protected void zzh(ConnectionResult connectionResult) {
            if (this.zzafK.zzafF != null) {
                this.zzafK.zzafF.onConnectionFailed(connectionResult);
            }
            this.zzafK.onConnectionFailed(connectionResult);
        }

        protected boolean zzpf() {
            try {
                String interfaceDescriptor = this.zzafO.getInterfaceDescriptor();
                if (this.zzafK.zzfL().equals(interfaceDescriptor)) {
                    IInterface zzW = this.zzafK.zzW(this.zzafO);
                    if (zzW == null || !this.zzafK.zza(2, 3, zzW)) {
                        return false;
                    }
                    Bundle zzmS = this.zzafK.zzmS();
                    if (this.zzafK.zzafE != null) {
                        this.zzafK.zzafE.onConnected(zzmS);
                    }
                    return true;
                }
                Log.e("GmsClient", "service descriptor mismatch: " + this.zzafK.zzfL() + " vs. " + interfaceDescriptor);
                return false;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    protected final class zzh extends zza {
        final /* synthetic */ zzj zzafK;

        public zzh(zzj com_google_android_gms_common_internal_zzj) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
            super(com_google_android_gms_common_internal_zzj, 0, null);
        }

        protected void zzh(ConnectionResult connectionResult) {
            this.zzafK.zzafz.zza(connectionResult);
            this.zzafK.onConnectionFailed(connectionResult);
        }

        protected boolean zzpf() {
            this.zzafK.zzafz.zza(ConnectionResult.zzZY);
            return true;
        }
    }

    protected final class zzi extends zza {
        final /* synthetic */ zzj zzafK;

        public zzi(zzj com_google_android_gms_common_internal_zzj, int i, Bundle bundle) {
            this.zzafK = com_google_android_gms_common_internal_zzj;
            super(com_google_android_gms_common_internal_zzj, i, bundle);
        }

        protected void zzh(ConnectionResult connectionResult) {
            this.zzafK.zzafz.zzb(connectionResult);
            this.zzafK.onConnectionFailed(connectionResult);
        }

        protected boolean zzpf() {
            this.zzafK.zzafz.zzb(ConnectionResult.zzZY);
            return true;
        }
    }

    static {
        zzafI = new String[]{"service_esmobile", "service_googleme"};
    }

    protected zzj(Context context, Looper looper, int i, zzf com_google_android_gms_common_internal_zzf, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzl.zzal(context), GoogleApiAvailability.getInstance(), i, com_google_android_gms_common_internal_zzf, (ConnectionCallbacks) zzx.zzw(connectionCallbacks), (OnConnectionFailedListener) zzx.zzw(onConnectionFailedListener));
    }

    protected zzj(Context context, Looper looper, zzl com_google_android_gms_common_internal_zzl, GoogleApiAvailability googleApiAvailability, int i, zzf com_google_android_gms_common_internal_zzf, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this.zzpd = new Object();
        this.zzafB = new ArrayList();
        this.zzafD = 1;
        this.zzafH = new AtomicInteger(0);
        this.mContext = (Context) zzx.zzb((Object) context, (Object) "Context must not be null");
        this.zzaaO = (Looper) zzx.zzb((Object) looper, (Object) "Looper must not be null");
        this.zzafx = (zzl) zzx.zzb((Object) com_google_android_gms_common_internal_zzl, (Object) "Supervisor must not be null");
        this.zzaaP = (GoogleApiAvailability) zzx.zzb((Object) googleApiAvailability, (Object) "API availability must not be null");
        this.mHandler = new zzb(this, looper);
        this.zzafG = i;
        this.zzabI = (zzf) zzx.zzw(com_google_android_gms_common_internal_zzf);
        this.zzQd = com_google_android_gms_common_internal_zzf.getAccount();
        this.zzTm = zza(com_google_android_gms_common_internal_zzf.zzoL());
        this.zzafE = connectionCallbacks;
        this.zzafF = onConnectionFailedListener;
    }

    private Set<Scope> zza(Set<Scope> set) {
        Set<Scope> zzb = zzb((Set) set);
        if (zzb != null) {
            for (Scope contains : zzb) {
                if (!set.contains(contains)) {
                    throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
                }
            }
        }
        return zzb;
    }

    private boolean zza(int i, int i2, T t) {
        boolean z;
        synchronized (this.zzpd) {
            if (this.zzafD != i) {
                z = false;
            } else {
                zzb(i2, t);
                z = true;
            }
        }
        return z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void zzb(int r5, T r6) {
        /*
        r4 = this;
        r1 = 1;
        r0 = 0;
        r2 = 3;
        if (r5 != r2) goto L_0x001e;
    L_0x0005:
        r3 = r1;
    L_0x0006:
        if (r6 == 0) goto L_0x0020;
    L_0x0008:
        r2 = r1;
    L_0x0009:
        if (r3 != r2) goto L_0x000c;
    L_0x000b:
        r0 = r1;
    L_0x000c:
        com.google.android.gms.common.internal.zzx.zzaa(r0);
        r1 = r4.zzpd;
        monitor-enter(r1);
        r4.zzafD = r5;	 Catch:{ all -> 0x0026 }
        r4.zzafA = r6;	 Catch:{ all -> 0x0026 }
        r4.zzc(r5, r6);	 Catch:{ all -> 0x0026 }
        switch(r5) {
            case 1: goto L_0x002d;
            case 2: goto L_0x0022;
            case 3: goto L_0x0029;
            default: goto L_0x001c;
        };	 Catch:{ all -> 0x0026 }
    L_0x001c:
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
        return;
    L_0x001e:
        r3 = r0;
        goto L_0x0006;
    L_0x0020:
        r2 = r0;
        goto L_0x0009;
    L_0x0022:
        r4.zzoX();	 Catch:{ all -> 0x0026 }
        goto L_0x001c;
    L_0x0026:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
        throw r0;
    L_0x0029:
        r4.zzoW();	 Catch:{ all -> 0x0026 }
        goto L_0x001c;
    L_0x002d:
        r4.zzoY();	 Catch:{ all -> 0x0026 }
        goto L_0x001c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzj.zzb(int, android.os.IInterface):void");
    }

    private void zzoX() {
        if (this.zzafC != null) {
            Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + zzfK());
            this.zzafx.zzb(zzfK(), this.zzafC, zzoV());
            this.zzafH.incrementAndGet();
        }
        this.zzafC = new zze(this, this.zzafH.get());
        if (!this.zzafx.zza(zzfK(), this.zzafC, zzoV())) {
            Log.e("GmsClient", "unable to connect to service: " + zzfK());
            this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.zzafH.get(), 9));
        }
    }

    private void zzoY() {
        if (this.zzafC != null) {
            this.zzafx.zzb(zzfK(), this.zzafC, zzoV());
            this.zzafC = null;
        }
    }

    public void disconnect() {
        this.zzafH.incrementAndGet();
        synchronized (this.zzafB) {
            int size = this.zzafB.size();
            for (int i = 0; i < size; i++) {
                ((zzc) this.zzafB.get(i)).zzpi();
            }
            this.zzafB.clear();
        }
        zzb(1, null);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (this.zzpd) {
            int i = this.zzafD;
            IInterface iInterface = this.zzafA;
        }
        printWriter.append(str).append("mConnectState=");
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                printWriter.print("DISCONNECTED");
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                printWriter.print("CONNECTING");
                break;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                printWriter.print("CONNECTED");
                break;
            case Place.TYPE_AQUARIUM /*4*/:
                printWriter.print("DISCONNECTING");
                break;
            default:
                printWriter.print("UNKNOWN");
                break;
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.println("null");
        } else {
            printWriter.append(zzfL()).append("@").println(Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzaaO;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzafD == 3;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzafD == 2;
        }
        return z;
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
    }

    protected void onConnectionSuspended(int i) {
    }

    protected abstract T zzW(IBinder iBinder);

    protected void zza(int i, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i2, -1, new zzi(this, i, bundle)));
    }

    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, i2, -1, new zzg(this, i, iBinder, bundle)));
    }

    public void zza(com.google.android.gms.common.api.GoogleApiClient.zza com_google_android_gms_common_api_GoogleApiClient_zza) {
        this.zzafz = (com.google.android.gms.common.api.GoogleApiClient.zza) zzx.zzb((Object) com_google_android_gms_common_api_GoogleApiClient_zza, (Object) "Connection progress callbacks cannot be null.");
        zzb(2, null);
    }

    public void zza(zzp com_google_android_gms_common_internal_zzp) {
        try {
            this.zzafy.zza(new zzd(this, this.zzafH.get()), new ValidateAccountRequest(com_google_android_gms_common_internal_zzp, (Scope[]) this.zzTm.toArray(new Scope[this.zzTm.size()]), this.mContext.getPackageName(), zzpd()));
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            zzbE(1);
        } catch (Throwable e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        }
    }

    public void zza(zzp com_google_android_gms_common_internal_zzp, Set<Scope> set) {
        try {
            GetServiceRequest zzg = new GetServiceRequest(this.zzafG).zzcl(this.mContext.getPackageName()).zzg(zzly());
            if (set != null) {
                zzg.zzd(set);
            }
            if (zzlN()) {
                zzg.zzc(zzoI()).zzc(com_google_android_gms_common_internal_zzp);
            } else if (zzpe()) {
                zzg.zzc(this.zzQd);
            }
            this.zzafy.zza(new zzd(this, this.zzafH.get()), zzg);
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "service died");
            zzbE(1);
        } catch (Throwable e2) {
            Log.w("GmsClient", "Remote exception occurred", e2);
        }
    }

    protected Set<Scope> zzb(Set<Scope> set) {
        return set;
    }

    public void zzbE(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, this.zzafH.get(), i));
    }

    protected void zzbF(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, i, -1, new zzh(this)));
    }

    protected void zzc(int i, T t) {
    }

    protected abstract String zzfK();

    protected abstract String zzfL();

    public boolean zzlN() {
        return false;
    }

    protected Bundle zzly() {
        return new Bundle();
    }

    public Bundle zzmS() {
        return null;
    }

    public IBinder zznz() {
        return this.zzafy == null ? null : this.zzafy.asBinder();
    }

    public final Account zzoI() {
        return this.zzQd != null ? this.zzQd : new Account("<<default account>>", GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE);
    }

    protected final String zzoV() {
        return this.zzabI.zzoO();
    }

    protected void zzoW() {
    }

    public void zzoZ() {
        int isGooglePlayServicesAvailable = this.zzaaP.isGooglePlayServicesAvailable(this.mContext);
        if (isGooglePlayServicesAvailable != 0) {
            zzb(1, null);
            this.zzafz = new zzf(this);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.zzafH.get(), isGooglePlayServicesAvailable));
            return;
        }
        zza(new zzf(this));
    }

    protected final zzf zzpa() {
        return this.zzabI;
    }

    protected final void zzpb() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzpc() throws DeadObjectException {
        T t;
        synchronized (this.zzpd) {
            if (this.zzafD == 4) {
                throw new DeadObjectException();
            }
            zzpb();
            zzx.zza(this.zzafA != null, (Object) "Client is connected but service is null");
            t = this.zzafA;
        }
        return t;
    }

    protected Bundle zzpd() {
        return null;
    }

    public boolean zzpe() {
        return false;
    }
}
