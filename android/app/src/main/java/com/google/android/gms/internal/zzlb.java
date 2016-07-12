package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.atomic.AtomicReference;

public class zzlb {

    public interface zzb<R> {
        void zzp(R r);

        void zzv(Status status);
    }

    public static abstract class zza<R extends Result, A extends com.google.android.gms.common.api.Api.zzb> extends zzlc<R> implements zzb<R>, zzf<A> {
        private final zzc<A> zzZM;
        private AtomicReference<zze> zzabg;

        protected zza(zzc<A> com_google_android_gms_common_api_Api_zzc_A, GoogleApiClient googleApiClient) {
            super(((GoogleApiClient) zzx.zzb((Object) googleApiClient, (Object) "GoogleApiClient must not be null")).getLooper());
            this.zzabg = new AtomicReference();
            this.zzZM = (zzc) zzx.zzw(com_google_android_gms_common_api_Api_zzc_A);
        }

        private void zza(RemoteException remoteException) {
            zzv(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        protected abstract void zza(A a) throws RemoteException;

        public void zza(zze com_google_android_gms_internal_zzli_zze) {
            this.zzabg.set(com_google_android_gms_internal_zzli_zze);
        }

        public final void zzb(A a) throws DeadObjectException {
            try {
                zza((com.google.android.gms.common.api.Api.zzb) a);
            } catch (RemoteException e) {
                zza(e);
                throw e;
            } catch (RemoteException e2) {
                zza(e2);
            }
        }

        public void zznJ() {
            setResultCallback(null);
        }

        public int zznK() {
            return 0;
        }

        protected void zznL() {
            zze com_google_android_gms_internal_zzli_zze = (zze) this.zzabg.getAndSet(null);
            if (com_google_android_gms_internal_zzli_zze != null) {
                com_google_android_gms_internal_zzli_zze.zzc(this);
            }
        }

        public final zzc<A> zznx() {
            return this.zzZM;
        }

        public /* synthetic */ void zzp(Object obj) {
            super.zzb((Result) obj);
        }

        public final void zzv(Status status) {
            zzx.zzb(!status.isSuccess(), (Object) "Failed result must not be success");
            zzb(zzb(status));
        }
    }
}
