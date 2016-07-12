package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import spacemadness.com.lunarconsole.C1401R;

public abstract class zzlc<R extends Result> extends PendingResult<R> {
    private boolean zzL;
    private volatile R zzaaX;
    private final Object zzabh;
    protected final zza<R> zzabi;
    private final ArrayList<com.google.android.gms.common.api.PendingResult.zza> zzabj;
    private ResultCallback<? super R> zzabk;
    private volatile boolean zzabl;
    private boolean zzabm;
    private zzq zzabn;
    private Integer zzabo;
    private volatile zzlq<R> zzabp;
    private final CountDownLatch zzoS;

    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    ((zzlc) message.obj).zzw(Status.zzabe);
                default:
                    Log.wtf("BasePendingResult", "Don't know how to handle message: " + message.what, new Exception());
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void zza(zzlc<R> com_google_android_gms_internal_zzlc_R, long j) {
            sendMessageDelayed(obtainMessage(2, com_google_android_gms_internal_zzlc_R), j);
        }

        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzlc.zzd(r);
                throw e;
            }
        }

        public void zznM() {
            removeMessages(2);
        }
    }

    @Deprecated
    protected zzlc(Looper looper) {
        this.zzabh = new Object();
        this.zzoS = new CountDownLatch(1);
        this.zzabj = new ArrayList();
        this.zzabi = new zza(looper);
    }

    protected zzlc(GoogleApiClient googleApiClient) {
        this.zzabh = new Object();
        this.zzoS = new CountDownLatch(1);
        this.zzabj = new ArrayList();
        this.zzabi = new zza(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    private R get() {
        R r;
        boolean z = true;
        synchronized (this.zzabh) {
            if (this.zzabl) {
                z = false;
            }
            zzx.zza(z, (Object) "Result has already been consumed.");
            zzx.zza(isReady(), (Object) "Result is not ready.");
            r = this.zzaaX;
            this.zzaaX = null;
            this.zzabk = null;
            this.zzabl = true;
        }
        zznL();
        return r;
    }

    private void zzc(R r) {
        this.zzaaX = r;
        this.zzabn = null;
        this.zzoS.countDown();
        Status status = this.zzaaX.getStatus();
        if (this.zzabk != null) {
            this.zzabi.zznM();
            if (!this.zzL) {
                this.zzabi.zza(this.zzabk, get());
            }
        }
        Iterator it = this.zzabj.iterator();
        while (it.hasNext()) {
            ((com.google.android.gms.common.api.PendingResult.zza) it.next()).zzt(status);
        }
        this.zzabj.clear();
    }

    public static void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (Throwable e) {
                Log.w("BasePendingResult", "Unable to release " + result, e);
            }
        }
    }

    public final R await() {
        boolean z = true;
        zzx.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "await must not be called on the UI thread");
        zzx.zza(!this.zzabl, (Object) "Result has already been consumed");
        if (this.zzabp != null) {
            z = false;
        }
        zzx.zza(z, (Object) "Cannot await if then() has been called.");
        try {
            this.zzoS.await();
        } catch (InterruptedException e) {
            zzw(Status.zzabc);
        }
        zzx.zza(isReady(), (Object) "Result is not ready.");
        return get();
    }

    public final R await(long j, TimeUnit timeUnit) {
        boolean z = true;
        boolean z2 = j <= 0 || Looper.myLooper() != Looper.getMainLooper();
        zzx.zza(z2, (Object) "await must not be called on the UI thread when time is greater than zero.");
        zzx.zza(!this.zzabl, (Object) "Result has already been consumed.");
        if (this.zzabp != null) {
            z = false;
        }
        zzx.zza(z, (Object) "Cannot await if then() has been called.");
        try {
            if (!this.zzoS.await(j, timeUnit)) {
                zzw(Status.zzabe);
            }
        } catch (InterruptedException e) {
            zzw(Status.zzabc);
        }
        zzx.zza(isReady(), (Object) "Result is not ready.");
        return get();
    }

    public void cancel() {
        synchronized (this.zzabh) {
            if (this.zzL || this.zzabl) {
                return;
            }
            if (this.zzabn != null) {
                try {
                    this.zzabn.cancel();
                } catch (RemoteException e) {
                }
            }
            zzd(this.zzaaX);
            this.zzabk = null;
            this.zzL = true;
            zzc(zzb(Status.zzabf));
        }
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.zzabh) {
            z = this.zzL;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zzoS.getCount() == 0;
    }

    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        boolean z = true;
        zzx.zza(!this.zzabl, (Object) "Result has already been consumed.");
        synchronized (this.zzabh) {
            if (this.zzabp != null) {
                z = false;
            }
            zzx.zza(z, (Object) "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzabi.zza((ResultCallback) resultCallback, get());
            } else {
                this.zzabk = resultCallback;
            }
        }
    }

    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        boolean z = true;
        zzx.zza(!this.zzabl, (Object) "Result has already been consumed.");
        synchronized (this.zzabh) {
            if (this.zzabp != null) {
                z = false;
            }
            zzx.zza(z, (Object) "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzabi.zza((ResultCallback) resultCallback, get());
            } else {
                this.zzabk = resultCallback;
                this.zzabi.zza(this, timeUnit.toMillis(j));
            }
        }
    }

    public final void zza(com.google.android.gms.common.api.PendingResult.zza com_google_android_gms_common_api_PendingResult_zza) {
        boolean z = true;
        zzx.zza(!this.zzabl, (Object) "Result has already been consumed.");
        if (com_google_android_gms_common_api_PendingResult_zza == null) {
            z = false;
        }
        zzx.zzb(z, (Object) "Callback cannot be null.");
        synchronized (this.zzabh) {
            if (isReady()) {
                com_google_android_gms_common_api_PendingResult_zza.zzt(this.zzaaX.getStatus());
            } else {
                this.zzabj.add(com_google_android_gms_common_api_PendingResult_zza);
            }
        }
    }

    protected final void zza(zzq com_google_android_gms_common_internal_zzq) {
        synchronized (this.zzabh) {
            this.zzabn = com_google_android_gms_common_internal_zzq;
        }
    }

    protected abstract R zzb(Status status);

    public final void zzb(R r) {
        boolean z = true;
        synchronized (this.zzabh) {
            if (this.zzabm || this.zzL) {
                zzd(r);
                return;
            }
            zzx.zza(!isReady(), (Object) "Results have already been set");
            if (this.zzabl) {
                z = false;
            }
            zzx.zza(z, (Object) "Result has already been consumed");
            zzc(r);
        }
    }

    public Integer zznF() {
        return this.zzabo;
    }

    protected void zznL() {
    }

    public final void zzw(Status status) {
        synchronized (this.zzabh) {
            if (!isReady()) {
                zzb(zzb(status));
                this.zzabm = true;
            }
        }
    }
}
