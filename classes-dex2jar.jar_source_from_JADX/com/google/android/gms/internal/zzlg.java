package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.signin.internal.AuthAccountResult;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import spacemadness.com.lunarconsole.C1401R;

public class zzlg implements zzlj {
    private final Context mContext;
    private final GoogleApiAvailability zzaaP;
    private final com.google.android.gms.common.api.Api.zza<? extends zzqw, zzqx> zzaaQ;
    private final Set<com.google.android.gms.common.api.Api.zzc> zzabA;
    private zzqw zzabB;
    private int zzabC;
    private boolean zzabD;
    private boolean zzabE;
    private zzp zzabF;
    private boolean zzabG;
    private boolean zzabH;
    private final com.google.android.gms.common.internal.zzf zzabI;
    private final Map<Api<?>, Integer> zzabJ;
    private ArrayList<Future<?>> zzabK;
    private final zzli zzabr;
    private final Lock zzabt;
    private ConnectionResult zzabu;
    private int zzabv;
    private int zzabw;
    private boolean zzabx;
    private int zzaby;
    private final Bundle zzabz;

    /* renamed from: com.google.android.gms.internal.zzlg.1 */
    class C06071 implements Runnable {
        final /* synthetic */ zzlg zzabL;

        C06071(zzlg com_google_android_gms_internal_zzlg) {
            this.zzabL = com_google_android_gms_internal_zzlg;
        }

        public void run() {
            this.zzabL.zzaaP.zzac(this.zzabL.mContext);
        }
    }

    private static class zza extends com.google.android.gms.signin.internal.zzb {
        private final WeakReference<zzlg> zzabM;

        /* renamed from: com.google.android.gms.internal.zzlg.zza.1 */
        class C06081 extends zzb {
            final /* synthetic */ zzlg zzabN;
            final /* synthetic */ ConnectionResult zzabO;
            final /* synthetic */ zza zzabP;

            C06081(zza com_google_android_gms_internal_zzlg_zza, zzlj com_google_android_gms_internal_zzlj, zzlg com_google_android_gms_internal_zzlg, ConnectionResult connectionResult) {
                this.zzabP = com_google_android_gms_internal_zzlg_zza;
                this.zzabN = com_google_android_gms_internal_zzlg;
                this.zzabO = connectionResult;
                super(com_google_android_gms_internal_zzlj);
            }

            public void zznO() {
                this.zzabN.zzc(this.zzabO);
            }
        }

        zza(zzlg com_google_android_gms_internal_zzlg) {
            this.zzabM = new WeakReference(com_google_android_gms_internal_zzlg);
        }

        public void zza(ConnectionResult connectionResult, AuthAccountResult authAccountResult) {
            zzlg com_google_android_gms_internal_zzlg = (zzlg) this.zzabM.get();
            if (com_google_android_gms_internal_zzlg != null) {
                com_google_android_gms_internal_zzlg.zzabr.zza(new C06081(this, com_google_android_gms_internal_zzlg, com_google_android_gms_internal_zzlg, connectionResult));
            }
        }
    }

    private static class zzb extends com.google.android.gms.common.internal.zzt.zza {
        private final WeakReference<zzlg> zzabM;

        /* renamed from: com.google.android.gms.internal.zzlg.zzb.1 */
        class C06091 extends zzb {
            final /* synthetic */ zzlg zzabN;
            final /* synthetic */ ResolveAccountResponse zzabQ;
            final /* synthetic */ zzb zzabR;

            C06091(zzb com_google_android_gms_internal_zzlg_zzb, zzlj com_google_android_gms_internal_zzlj, zzlg com_google_android_gms_internal_zzlg, ResolveAccountResponse resolveAccountResponse) {
                this.zzabR = com_google_android_gms_internal_zzlg_zzb;
                this.zzabN = com_google_android_gms_internal_zzlg;
                this.zzabQ = resolveAccountResponse;
                super(com_google_android_gms_internal_zzlj);
            }

            public void zznO() {
                this.zzabN.zza(this.zzabQ);
            }
        }

        zzb(zzlg com_google_android_gms_internal_zzlg) {
            this.zzabM = new WeakReference(com_google_android_gms_internal_zzlg);
        }

        public void zzb(ResolveAccountResponse resolveAccountResponse) {
            zzlg com_google_android_gms_internal_zzlg = (zzlg) this.zzabM.get();
            if (com_google_android_gms_internal_zzlg != null) {
                com_google_android_gms_internal_zzlg.zzabr.zza(new C06091(this, com_google_android_gms_internal_zzlg, com_google_android_gms_internal_zzlg, resolveAccountResponse));
            }
        }
    }

    private abstract class zzi implements Runnable {
        final /* synthetic */ zzlg zzabL;

        private zzi(zzlg com_google_android_gms_internal_zzlg) {
            this.zzabL = com_google_android_gms_internal_zzlg;
        }

        public void run() {
            this.zzabL.zzabt.lock();
            try {
                if (!Thread.interrupted()) {
                    zznO();
                    this.zzabL.zzabt.unlock();
                }
            } catch (RuntimeException e) {
                this.zzabL.zzabr.zza(e);
            } finally {
                this.zzabL.zzabt.unlock();
            }
        }

        protected abstract void zznO();
    }

    private class zzc extends zzi {
        final /* synthetic */ zzlg zzabL;

        private zzc(zzlg com_google_android_gms_internal_zzlg) {
            this.zzabL = com_google_android_gms_internal_zzlg;
            super(null);
        }

        public void zznO() {
            this.zzabL.zzabB.zza(this.zzabL.zzabF, this.zzabL.zzabr.zzaci, new zza(this.zzabL));
        }
    }

    private static class zzd implements com.google.android.gms.common.api.GoogleApiClient.zza {
        private final WeakReference<zzlg> zzabM;
        private final Api<?> zzabS;
        private final int zzabT;

        public zzd(zzlg com_google_android_gms_internal_zzlg, Api<?> api, int i) {
            this.zzabM = new WeakReference(com_google_android_gms_internal_zzlg);
            this.zzabS = api;
            this.zzabT = i;
        }

        public void zza(ConnectionResult connectionResult) {
            boolean z = false;
            zzlg com_google_android_gms_internal_zzlg = (zzlg) this.zzabM.get();
            if (com_google_android_gms_internal_zzlg != null) {
                if (Looper.myLooper() == com_google_android_gms_internal_zzlg.zzabr.getLooper()) {
                    z = true;
                }
                zzx.zza(z, (Object) "onReportServiceBinding must be called on the GoogleApiClient handler thread");
                com_google_android_gms_internal_zzlg.zzabt.lock();
                try {
                    if (com_google_android_gms_internal_zzlg.zzbn(0)) {
                        if (!connectionResult.isSuccess()) {
                            com_google_android_gms_internal_zzlg.zzb(connectionResult, this.zzabS, this.zzabT);
                        }
                        if (com_google_android_gms_internal_zzlg.zznP()) {
                            com_google_android_gms_internal_zzlg.zznQ();
                        }
                        com_google_android_gms_internal_zzlg.zzabt.unlock();
                    }
                } finally {
                    com_google_android_gms_internal_zzlg.zzabt.unlock();
                }
            }
        }

        public void zzb(ConnectionResult connectionResult) {
            boolean z = true;
            zzlg com_google_android_gms_internal_zzlg = (zzlg) this.zzabM.get();
            if (com_google_android_gms_internal_zzlg != null) {
                if (Looper.myLooper() != com_google_android_gms_internal_zzlg.zzabr.getLooper()) {
                    z = false;
                }
                zzx.zza(z, (Object) "onReportAccountValidation must be called on the GoogleApiClient handler thread");
                com_google_android_gms_internal_zzlg.zzabt.lock();
                try {
                    if (com_google_android_gms_internal_zzlg.zzbn(1)) {
                        if (!connectionResult.isSuccess()) {
                            com_google_android_gms_internal_zzlg.zzb(connectionResult, this.zzabS, this.zzabT);
                        }
                        if (com_google_android_gms_internal_zzlg.zznP()) {
                            com_google_android_gms_internal_zzlg.zznS();
                        }
                        com_google_android_gms_internal_zzlg.zzabt.unlock();
                    }
                } finally {
                    com_google_android_gms_internal_zzlg.zzabt.unlock();
                }
            }
        }
    }

    private class zze extends zzi {
        final /* synthetic */ zzlg zzabL;
        private final Map<com.google.android.gms.common.api.Api.zzb, com.google.android.gms.common.api.GoogleApiClient.zza> zzabU;

        /* renamed from: com.google.android.gms.internal.zzlg.zze.1 */
        class C06101 extends zzb {
            final /* synthetic */ ConnectionResult zzabV;
            final /* synthetic */ zze zzabW;

            C06101(zze com_google_android_gms_internal_zzlg_zze, zzlj com_google_android_gms_internal_zzlj, ConnectionResult connectionResult) {
                this.zzabW = com_google_android_gms_internal_zzlg_zze;
                this.zzabV = connectionResult;
                super(com_google_android_gms_internal_zzlj);
            }

            public void zznO() {
                this.zzabW.zzabL.zzf(this.zzabV);
            }
        }

        public zze(zzlg com_google_android_gms_internal_zzlg, Map<com.google.android.gms.common.api.Api.zzb, com.google.android.gms.common.api.GoogleApiClient.zza> map) {
            this.zzabL = com_google_android_gms_internal_zzlg;
            super(null);
            this.zzabU = map;
        }

        public void zznO() {
            int isGooglePlayServicesAvailable = this.zzabL.zzaaP.isGooglePlayServicesAvailable(this.zzabL.mContext);
            if (isGooglePlayServicesAvailable != 0) {
                this.zzabL.zzabr.zza(new C06101(this, this.zzabL, new ConnectionResult(isGooglePlayServicesAvailable, null)));
                return;
            }
            if (this.zzabL.zzabD) {
                this.zzabL.zzabB.connect();
            }
            for (com.google.android.gms.common.api.Api.zzb com_google_android_gms_common_api_Api_zzb : this.zzabU.keySet()) {
                com_google_android_gms_common_api_Api_zzb.zza((com.google.android.gms.common.api.GoogleApiClient.zza) this.zzabU.get(com_google_android_gms_common_api_Api_zzb));
            }
        }
    }

    private class zzf extends zzi {
        final /* synthetic */ zzlg zzabL;
        private final ArrayList<com.google.android.gms.common.api.Api.zzb> zzabX;

        public zzf(zzlg com_google_android_gms_internal_zzlg, ArrayList<com.google.android.gms.common.api.Api.zzb> arrayList) {
            this.zzabL = com_google_android_gms_internal_zzlg;
            super(null);
            this.zzabX = arrayList;
        }

        public void zznO() {
            Set set = this.zzabL.zzabr.zzaci;
            Set zzh = set.isEmpty() ? this.zzabL.zznX() : set;
            Iterator it = this.zzabX.iterator();
            while (it.hasNext()) {
                ((com.google.android.gms.common.api.Api.zzb) it.next()).zza(this.zzabL.zzabF, zzh);
            }
        }
    }

    private class zzg implements ConnectionCallbacks, OnConnectionFailedListener {
        final /* synthetic */ zzlg zzabL;

        private zzg(zzlg com_google_android_gms_internal_zzlg) {
            this.zzabL = com_google_android_gms_internal_zzlg;
        }

        public void onConnected(Bundle bundle) {
            this.zzabL.zzabB.zza(new zzb(this.zzabL));
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.zzabL.zzabt.lock();
            try {
                if (this.zzabL.zze(connectionResult)) {
                    this.zzabL.zznV();
                    this.zzabL.zznT();
                } else {
                    this.zzabL.zzf(connectionResult);
                }
                this.zzabL.zzabt.unlock();
            } catch (Throwable th) {
                this.zzabL.zzabt.unlock();
            }
        }

        public void onConnectionSuspended(int i) {
        }
    }

    private class zzh extends zzi {
        final /* synthetic */ zzlg zzabL;
        private final ArrayList<com.google.android.gms.common.api.Api.zzb> zzabX;

        public zzh(zzlg com_google_android_gms_internal_zzlg, ArrayList<com.google.android.gms.common.api.Api.zzb> arrayList) {
            this.zzabL = com_google_android_gms_internal_zzlg;
            super(null);
            this.zzabX = arrayList;
        }

        public void zznO() {
            Iterator it = this.zzabX.iterator();
            while (it.hasNext()) {
                ((com.google.android.gms.common.api.Api.zzb) it.next()).zza(this.zzabL.zzabF);
            }
        }
    }

    public zzlg(zzli com_google_android_gms_internal_zzli, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf, Map<Api<?>, Integer> map, GoogleApiAvailability googleApiAvailability, com.google.android.gms.common.api.Api.zza<? extends zzqw, zzqx> com_google_android_gms_common_api_Api_zza__extends_com_google_android_gms_internal_zzqw__com_google_android_gms_internal_zzqx, Lock lock, Context context) {
        this.zzabw = 0;
        this.zzabx = false;
        this.zzabz = new Bundle();
        this.zzabA = new HashSet();
        this.zzabK = new ArrayList();
        this.zzabr = com_google_android_gms_internal_zzli;
        this.zzabI = com_google_android_gms_common_internal_zzf;
        this.zzabJ = map;
        this.zzaaP = googleApiAvailability;
        this.zzaaQ = com_google_android_gms_common_api_Api_zza__extends_com_google_android_gms_internal_zzqw__com_google_android_gms_internal_zzqx;
        this.zzabt = lock;
        this.mContext = context;
    }

    private void zzY(boolean z) {
        if (this.zzabB != null) {
            if (this.zzabB.isConnected() && z) {
                this.zzabB.zzCe();
            }
            this.zzabB.disconnect();
            this.zzabF = null;
        }
    }

    private void zza(ResolveAccountResponse resolveAccountResponse) {
        if (zzbn(0)) {
            ConnectionResult zzpr = resolveAccountResponse.zzpr();
            if (zzpr.isSuccess()) {
                this.zzabF = resolveAccountResponse.zzpq();
                this.zzabE = true;
                this.zzabG = resolveAccountResponse.zzps();
                this.zzabH = resolveAccountResponse.zzpt();
                zznQ();
            } else if (zze(zzpr)) {
                zznV();
                zznQ();
            } else {
                zzf(zzpr);
            }
        }
    }

    private boolean zza(int i, int i2, ConnectionResult connectionResult) {
        return (i2 != 1 || zzd(connectionResult)) ? this.zzabu == null || i < this.zzabv : false;
    }

    private void zzb(ConnectionResult connectionResult, Api<?> api, int i) {
        if (i != 2) {
            int priority = api.zznv().getPriority();
            if (zza(priority, i, connectionResult)) {
                this.zzabu = connectionResult;
                this.zzabv = priority;
            }
        }
        this.zzabr.zzach.put(api.zznx(), connectionResult);
    }

    private boolean zzbn(int i) {
        if (this.zzabw == i) {
            return true;
        }
        Log.i("GoogleApiClientConnecting", this.zzabr.zzog());
        Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + zzbo(this.zzabw) + " but received callback for step " + zzbo(i), new Exception());
        zzf(new ConnectionResult(8, null));
        return false;
    }

    private String zzbo(int i) {
        switch (i) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                return "STEP_GETTING_SERVICE_BINDINGS";
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return "STEP_VALIDATING_ACCOUNT";
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return "STEP_AUTHENTICATING";
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    private void zzc(ConnectionResult connectionResult) {
        if (!zzbn(2)) {
            return;
        }
        if (connectionResult.isSuccess()) {
            zznT();
        } else if (zze(connectionResult)) {
            zznV();
            zznT();
        } else {
            zzf(connectionResult);
        }
    }

    private boolean zzd(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || this.zzaaP.zzbi(connectionResult.getErrorCode()) != null;
    }

    private boolean zze(ConnectionResult connectionResult) {
        return this.zzabC != 2 ? this.zzabC == 1 && !connectionResult.hasResolution() : true;
    }

    private void zzf(ConnectionResult connectionResult) {
        zznW();
        zzY(!connectionResult.hasResolution());
        this.zzabr.zzach.clear();
        this.zzabr.zzg(connectionResult);
        if (!this.zzaaP.zzd(this.mContext, connectionResult.getErrorCode())) {
            this.zzabr.zzof();
        }
        if (!(this.zzabx || this.zzabr.zzoc())) {
            this.zzabr.zzabZ.zzi(connectionResult);
        }
        this.zzabx = false;
        this.zzabr.zzabZ.zzpk();
    }

    private boolean zznP() {
        this.zzaby--;
        if (this.zzaby > 0) {
            return false;
        }
        if (this.zzaby < 0) {
            Log.i("GoogleApiClientConnecting", this.zzabr.zzog());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            zzf(new ConnectionResult(8, null));
            return false;
        } else if (this.zzabu == null) {
            return true;
        } else {
            zzf(this.zzabu);
            return false;
        }
    }

    private void zznQ() {
        if (this.zzaby == 0) {
            if (!this.zzabD) {
                zznT();
            } else if (this.zzabE) {
                zznR();
            }
        }
    }

    private void zznR() {
        ArrayList arrayList = new ArrayList();
        this.zzabw = 1;
        this.zzaby = this.zzabr.zzacg.size();
        for (com.google.android.gms.common.api.Api.zzc com_google_android_gms_common_api_Api_zzc : this.zzabr.zzacg.keySet()) {
            if (!this.zzabr.zzach.containsKey(com_google_android_gms_common_api_Api_zzc)) {
                arrayList.add(this.zzabr.zzacg.get(com_google_android_gms_common_api_Api_zzc));
            } else if (zznP()) {
                zznS();
            }
        }
        if (!arrayList.isEmpty()) {
            this.zzabK.add(zzlk.zzoj().submit(new zzh(this, arrayList)));
        }
    }

    private void zznS() {
        this.zzabw = 2;
        this.zzabr.zzaci = zznX();
        this.zzabK.add(zzlk.zzoj().submit(new zzc()));
    }

    private void zznT() {
        ArrayList arrayList = new ArrayList();
        this.zzabw = 3;
        this.zzaby = this.zzabr.zzacg.size();
        for (com.google.android.gms.common.api.Api.zzc com_google_android_gms_common_api_Api_zzc : this.zzabr.zzacg.keySet()) {
            if (!this.zzabr.zzach.containsKey(com_google_android_gms_common_api_Api_zzc)) {
                arrayList.add(this.zzabr.zzacg.get(com_google_android_gms_common_api_Api_zzc));
            } else if (zznP()) {
                zznU();
            }
        }
        if (!arrayList.isEmpty()) {
            this.zzabK.add(zzlk.zzoj().submit(new zzf(this, arrayList)));
        }
    }

    private void zznU() {
        this.zzabr.zzob();
        zzlk.zzoj().execute(new C06071(this));
        if (this.zzabB != null) {
            if (this.zzabG) {
                this.zzabB.zza(this.zzabF, this.zzabH);
            }
            zzY(false);
        }
        for (com.google.android.gms.common.api.Api.zzc com_google_android_gms_common_api_Api_zzc : this.zzabr.zzach.keySet()) {
            ((com.google.android.gms.common.api.Api.zzb) this.zzabr.zzacg.get(com_google_android_gms_common_api_Api_zzc)).disconnect();
        }
        if (this.zzabx) {
            this.zzabx = false;
            disconnect();
            return;
        }
        this.zzabr.zzabZ.zzh(this.zzabz.isEmpty() ? null : this.zzabz);
    }

    private void zznV() {
        this.zzabD = false;
        this.zzabr.zzaci = Collections.emptySet();
        for (com.google.android.gms.common.api.Api.zzc com_google_android_gms_common_api_Api_zzc : this.zzabA) {
            if (!this.zzabr.zzach.containsKey(com_google_android_gms_common_api_Api_zzc)) {
                this.zzabr.zzach.put(com_google_android_gms_common_api_Api_zzc, new ConnectionResult(17, null));
            }
        }
    }

    private void zznW() {
        Iterator it = this.zzabK.iterator();
        while (it.hasNext()) {
            ((Future) it.next()).cancel(true);
        }
        this.zzabK.clear();
    }

    private Set<Scope> zznX() {
        Set<Scope> hashSet = new HashSet(this.zzabI.zzoK());
        Map zzoM = this.zzabI.zzoM();
        for (Api api : zzoM.keySet()) {
            if (!this.zzabr.zzach.containsKey(api.zznx())) {
                hashSet.addAll(((com.google.android.gms.common.internal.zzf.zza) zzoM.get(api)).zzTm);
            }
        }
        return hashSet;
    }

    public void begin() {
        this.zzabr.zzabZ.zzpl();
        this.zzabr.zzach.clear();
        this.zzabx = false;
        this.zzabD = false;
        this.zzabu = null;
        this.zzabw = 0;
        this.zzabC = 2;
        this.zzabE = false;
        this.zzabG = false;
        Map hashMap = new HashMap();
        int i = 0;
        for (Api api : this.zzabJ.keySet()) {
            com.google.android.gms.common.api.Api.zzb com_google_android_gms_common_api_Api_zzb = (com.google.android.gms.common.api.Api.zzb) this.zzabr.zzacg.get(api.zznx());
            int intValue = ((Integer) this.zzabJ.get(api)).intValue();
            int i2 = api.zznv().getPriority() == 1 ? 1 : 0;
            if (com_google_android_gms_common_api_Api_zzb.zzlN()) {
                this.zzabD = true;
                if (intValue < this.zzabC) {
                    this.zzabC = intValue;
                }
                if (intValue != 0) {
                    this.zzabA.add(api.zznx());
                }
            }
            hashMap.put(com_google_android_gms_common_api_Api_zzb, new zzd(this, api, intValue));
            i = i2 | i;
        }
        if (i != 0) {
            this.zzabD = false;
        }
        if (this.zzabD) {
            this.zzabI.zza(Integer.valueOf(this.zzabr.getSessionId()));
            ConnectionCallbacks com_google_android_gms_internal_zzlg_zzg = new zzg();
            this.zzabB = (zzqw) this.zzaaQ.zza(this.mContext, this.zzabr.getLooper(), this.zzabI, this.zzabI.zzoQ(), com_google_android_gms_internal_zzlg_zzg, com_google_android_gms_internal_zzlg_zzg);
        }
        this.zzaby = this.zzabr.zzacg.size();
        this.zzabK.add(zzlk.zzoj().submit(new zze(this, hashMap)));
    }

    public void connect() {
        this.zzabx = false;
    }

    public void disconnect() {
        Iterator it = this.zzabr.zzaca.iterator();
        while (it.hasNext()) {
            zzf com_google_android_gms_internal_zzli_zzf = (zzf) it.next();
            if (com_google_android_gms_internal_zzli_zzf.zznK() != 1) {
                com_google_android_gms_internal_zzli_zzf.cancel();
                it.remove();
            }
        }
        this.zzabr.zznY();
        if (this.zzabu != null || this.zzabr.zzaca.isEmpty()) {
            zznW();
            zzY(true);
            this.zzabr.zzach.clear();
            this.zzabr.zzg(null);
            this.zzabr.zzabZ.zzpk();
            return;
        }
        this.zzabx = true;
    }

    public String getName() {
        return "CONNECTING";
    }

    public void onConnected(Bundle bundle) {
        if (zzbn(3)) {
            if (bundle != null) {
                this.zzabz.putAll(bundle);
            }
            if (zznP()) {
                zznU();
            }
        }
    }

    public void onConnectionSuspended(int i) {
        zzf(new ConnectionResult(8, null));
    }

    public <A extends com.google.android.gms.common.api.Api.zzb, R extends Result, T extends com.google.android.gms.internal.zzlb.zza<R, A>> T zza(T t) {
        this.zzabr.zzaca.add(t);
        return t;
    }

    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
        if (zzbn(3)) {
            zzb(connectionResult, api, i);
            if (zznP()) {
                zznU();
            }
        }
    }

    public <A extends com.google.android.gms.common.api.Api.zzb, T extends com.google.android.gms.internal.zzlb.zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
