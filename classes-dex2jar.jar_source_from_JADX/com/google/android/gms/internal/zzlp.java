package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzx;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class zzlp extends Fragment implements OnCancelListener {
    private static final GoogleApiAvailability zzacJ;
    private boolean mStarted;
    private boolean zzacK;
    private int zzacL;
    private ConnectionResult zzacM;
    private final Handler zzacN;
    private zzll zzacO;
    private final SparseArray<zza> zzacP;

    private class zza implements OnConnectionFailedListener {
        public final int zzacQ;
        public final GoogleApiClient zzacR;
        public final OnConnectionFailedListener zzacS;
        final /* synthetic */ zzlp zzacT;

        public zza(zzlp com_google_android_gms_internal_zzlp, int i, GoogleApiClient googleApiClient, OnConnectionFailedListener onConnectionFailedListener) {
            this.zzacT = com_google_android_gms_internal_zzlp;
            this.zzacQ = i;
            this.zzacR = googleApiClient;
            this.zzacS = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append(str).append("GoogleApiClient #").print(this.zzacQ);
            printWriter.println(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR);
            this.zzacR.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.zzacT.zzacN.post(new zzb(this.zzacT, this.zzacQ, connectionResult));
        }

        public void zzom() {
            this.zzacR.unregisterConnectionFailedListener(this);
            this.zzacR.disconnect();
        }
    }

    private class zzb implements Runnable {
        final /* synthetic */ zzlp zzacT;
        private final int zzacU;
        private final ConnectionResult zzacV;

        /* renamed from: com.google.android.gms.internal.zzlp.zzb.1 */
        class C06201 extends zzll {
            final /* synthetic */ Dialog zzacW;
            final /* synthetic */ zzb zzacX;

            C06201(zzb com_google_android_gms_internal_zzlp_zzb, Dialog dialog) {
                this.zzacX = com_google_android_gms_internal_zzlp_zzb;
                this.zzacW = dialog;
            }

            protected void zzoi() {
                this.zzacX.zzacT.zzok();
                this.zzacW.dismiss();
            }
        }

        public zzb(zzlp com_google_android_gms_internal_zzlp, int i, ConnectionResult connectionResult) {
            this.zzacT = com_google_android_gms_internal_zzlp;
            this.zzacU = i;
            this.zzacV = connectionResult;
        }

        public void run() {
            if (this.zzacT.mStarted && !this.zzacT.zzacK) {
                this.zzacT.zzacK = true;
                this.zzacT.zzacL = this.zzacU;
                this.zzacT.zzacM = this.zzacV;
                if (this.zzacV.hasResolution()) {
                    try {
                        this.zzacV.startResolutionForResult(this.zzacT.getActivity(), ((this.zzacT.getActivity().getSupportFragmentManager().getFragments().indexOf(this.zzacT) + 1) << 16) + 1);
                    } catch (SendIntentException e) {
                        this.zzacT.zzok();
                    }
                } else if (zzlp.zzacJ.isUserResolvableError(this.zzacV.getErrorCode())) {
                    GooglePlayServicesUtil.showErrorDialogFragment(this.zzacV.getErrorCode(), this.zzacT.getActivity(), this.zzacT, 2, this.zzacT);
                } else if (this.zzacV.getErrorCode() == 18) {
                    this.zzacT.zzacO = zzll.zza(this.zzacT.getActivity().getApplicationContext(), new C06201(this, zzlp.zzacJ.zza(this.zzacT.getActivity(), this.zzacT)));
                } else {
                    this.zzacT.zza(this.zzacU, this.zzacV);
                }
            }
        }
    }

    static {
        zzacJ = GoogleApiAvailability.getInstance();
    }

    public zzlp() {
        this.zzacL = -1;
        this.zzacN = new Handler(Looper.getMainLooper());
        this.zzacP = new SparseArray();
    }

    public static zzlp zza(FragmentActivity fragmentActivity) {
        zzx.zzci("Must be called from main thread of process");
        try {
            zzlp com_google_android_gms_internal_zzlp = (zzlp) fragmentActivity.getSupportFragmentManager().findFragmentByTag("GmsSupportLifecycleFragment");
            return (com_google_android_gms_internal_zzlp == null || com_google_android_gms_internal_zzlp.isRemoving()) ? null : com_google_android_gms_internal_zzlp;
        } catch (Throwable e) {
            throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", e);
        }
    }

    private void zza(int i, ConnectionResult connectionResult) {
        Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        zza com_google_android_gms_internal_zzlp_zza = (zza) this.zzacP.get(i);
        if (com_google_android_gms_internal_zzlp_zza != null) {
            zzbp(i);
            OnConnectionFailedListener onConnectionFailedListener = com_google_android_gms_internal_zzlp_zza.zzacS;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
        zzok();
    }

    public static zzlp zzb(FragmentActivity fragmentActivity) {
        zzlp zza = zza(fragmentActivity);
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        if (zza != null) {
            return zza;
        }
        Fragment com_google_android_gms_internal_zzlp = new zzlp();
        supportFragmentManager.beginTransaction().add(com_google_android_gms_internal_zzlp, "GmsSupportLifecycleFragment").commitAllowingStateLoss();
        supportFragmentManager.executePendingTransactions();
        return com_google_android_gms_internal_zzlp;
    }

    private void zzok() {
        this.zzacK = false;
        this.zzacL = -1;
        this.zzacM = null;
        if (this.zzacO != null) {
            this.zzacO.unregister();
            this.zzacO = null;
        }
        for (int i = 0; i < this.zzacP.size(); i++) {
            ((zza) this.zzacP.valueAt(i)).zzacR.connect();
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (int i = 0; i < this.zzacP.size(); i++) {
            ((zza) this.zzacP.valueAt(i)).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onActivityResult(int r4, int r5, android.content.Intent r6) {
        /*
        r3 = this;
        r0 = 1;
        switch(r4) {
            case 1: goto L_0x0018;
            case 2: goto L_0x000b;
            default: goto L_0x0004;
        };
    L_0x0004:
        r0 = 0;
    L_0x0005:
        if (r0 == 0) goto L_0x0028;
    L_0x0007:
        r3.zzok();
    L_0x000a:
        return;
    L_0x000b:
        r1 = zzacJ;
        r2 = r3.getActivity();
        r1 = r1.isGooglePlayServicesAvailable(r2);
        if (r1 != 0) goto L_0x0004;
    L_0x0017:
        goto L_0x0005;
    L_0x0018:
        r1 = -1;
        if (r5 == r1) goto L_0x0005;
    L_0x001b:
        if (r5 != 0) goto L_0x0004;
    L_0x001d:
        r0 = new com.google.android.gms.common.ConnectionResult;
        r1 = 13;
        r2 = 0;
        r0.<init>(r1, r2);
        r3.zzacM = r0;
        goto L_0x0004;
    L_0x0028:
        r0 = r3.zzacL;
        r1 = r3.zzacM;
        r3.zza(r0, r1);
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzlp.onActivityResult(int, int, android.content.Intent):void");
    }

    public void onCancel(DialogInterface dialogInterface) {
        zza(this.zzacL, new ConnectionResult(13, null));
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zzacK = bundle.getBoolean("resolving_error", false);
            this.zzacL = bundle.getInt("failed_client_id", -1);
            if (this.zzacL >= 0) {
                this.zzacM = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.zzacK);
        if (this.zzacL >= 0) {
            bundle.putInt("failed_client_id", this.zzacL);
            bundle.putInt("failed_status", this.zzacM.getErrorCode());
            bundle.putParcelable("failed_resolution", this.zzacM.getResolution());
        }
    }

    public void onStart() {
        super.onStart();
        this.mStarted = true;
        if (!this.zzacK) {
            for (int i = 0; i < this.zzacP.size(); i++) {
                ((zza) this.zzacP.valueAt(i)).zzacR.connect();
            }
        }
    }

    public void onStop() {
        super.onStop();
        this.mStarted = false;
        for (int i = 0; i < this.zzacP.size(); i++) {
            ((zza) this.zzacP.valueAt(i)).zzacR.disconnect();
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, OnConnectionFailedListener onConnectionFailedListener) {
        zzx.zzb((Object) googleApiClient, (Object) "GoogleApiClient instance cannot be null");
        zzx.zza(this.zzacP.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        this.zzacP.put(i, new zza(this, i, googleApiClient, onConnectionFailedListener));
        if (this.mStarted && !this.zzacK) {
            googleApiClient.connect();
        }
    }

    public void zzbp(int i) {
        zza com_google_android_gms_internal_zzlp_zza = (zza) this.zzacP.get(i);
        this.zzacP.remove(i);
        if (com_google_android_gms_internal_zzlp_zza != null) {
            com_google_android_gms_internal_zzlp_zza.zzom();
        }
    }
}
