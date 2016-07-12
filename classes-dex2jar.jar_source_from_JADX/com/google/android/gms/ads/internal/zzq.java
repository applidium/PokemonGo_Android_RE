package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ViewSwitcher;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.ads.internal.client.zzn;
import com.google.android.gms.ads.internal.client.zzo;
import com.google.android.gms.ads.internal.client.zzu;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.purchase.zzk;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzan;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzck;
import com.google.android.gms.internal.zzcw;
import com.google.android.gms.internal.zzcx;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.internal.zzcz;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzfw;
import com.google.android.gms.internal.zzgh;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzht;
import com.google.android.gms.internal.zzhx;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzif;
import com.google.android.gms.internal.zzik;
import com.google.android.gms.internal.zzim;
import com.google.android.gms.internal.zziz;
import com.google.android.gms.internal.zzja;
import com.google.android.gms.internal.zzmi;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public final class zzq implements OnGlobalLayoutListener, OnScrollChangedListener {
    public final Context context;
    boolean zzpt;
    zzmi<String, zzcz> zzqA;
    NativeAdOptionsParcel zzqB;
    zzck zzqC;
    List<String> zzqD;
    zzk zzqE;
    public zzhx zzqF;
    View zzqG;
    public int zzqH;
    boolean zzqI;
    private HashSet<zzht> zzqJ;
    private int zzqK;
    private int zzqL;
    private zzik zzqM;
    private boolean zzqN;
    private boolean zzqO;
    private boolean zzqP;
    final String zzqg;
    public String zzqh;
    final zzan zzqi;
    public final VersionInfoParcel zzqj;
    zza zzqk;
    public zzhz zzql;
    public zzgh zzqm;
    public AdSizeParcel zzqn;
    public zzhs zzqo;
    public com.google.android.gms.internal.zzhs.zza zzqp;
    public zzht zzqq;
    zzn zzqr;
    zzo zzqs;
    zzu zzqt;
    zzv zzqu;
    zzfs zzqv;
    zzfw zzqw;
    zzcw zzqx;
    zzcx zzqy;
    zzmi<String, zzcy> zzqz;

    public static class zza extends ViewSwitcher {
        private final zzif zzqQ;
        private final zzim zzqR;

        public zza(Context context, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
            super(context);
            this.zzqQ = new zzif(context);
            if (context instanceof Activity) {
                this.zzqR = new zzim((Activity) context, onGlobalLayoutListener, onScrollChangedListener);
                this.zzqR.zzgO();
                return;
            }
            this.zzqR = null;
        }

        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.zzqR != null) {
                this.zzqR.onAttachedToWindow();
            }
        }

        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.zzqR != null) {
                this.zzqR.onDetachedFromWindow();
            }
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.zzqQ.zze(motionEvent);
            return false;
        }

        public void removeAllViews() {
            List<zziz> arrayList = new ArrayList();
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt != null && (childAt instanceof zziz)) {
                    arrayList.add((zziz) childAt);
                }
            }
            super.removeAllViews();
            for (zziz destroy : arrayList) {
                destroy.destroy();
            }
        }

        public void zzbP() {
            zzb.m37v("Disable position monitoring on adFrame.");
            if (this.zzqR != null) {
                this.zzqR.zzgP();
            }
        }

        public zzif zzbT() {
            return this.zzqQ;
        }
    }

    public zzq(Context context, AdSizeParcel adSizeParcel, String str, VersionInfoParcel versionInfoParcel) {
        this(context, adSizeParcel, str, versionInfoParcel, null);
    }

    zzq(Context context, AdSizeParcel adSizeParcel, String str, VersionInfoParcel versionInfoParcel, zzan com_google_android_gms_internal_zzan) {
        this.zzqF = null;
        this.zzqG = null;
        this.zzqH = 0;
        this.zzqI = false;
        this.zzpt = false;
        this.zzqJ = null;
        this.zzqK = -1;
        this.zzqL = -1;
        this.zzqN = true;
        this.zzqO = true;
        this.zzqP = false;
        zzby.initialize(context);
        if (zzp.zzby().zzgo() != null) {
            List zzdf = zzby.zzdf();
            if (versionInfoParcel.zzJv != 0) {
                zzdf.add(Integer.toString(versionInfoParcel.zzJv));
            }
            zzp.zzby().zzgo().zzb(zzdf);
        }
        this.zzqg = UUID.randomUUID().toString();
        if (adSizeParcel.zztf || adSizeParcel.zzth) {
            this.zzqk = null;
        } else {
            this.zzqk = new zza(context, this, this);
            this.zzqk.setMinimumWidth(adSizeParcel.widthPixels);
            this.zzqk.setMinimumHeight(adSizeParcel.heightPixels);
            this.zzqk.setVisibility(4);
        }
        this.zzqn = adSizeParcel;
        this.zzqh = str;
        this.context = context;
        this.zzqj = versionInfoParcel;
        if (com_google_android_gms_internal_zzan == null) {
            com_google_android_gms_internal_zzan = new zzan(new zzh(this));
        }
        this.zzqi = com_google_android_gms_internal_zzan;
        this.zzqM = new zzik(200);
        this.zzqA = new zzmi();
    }

    private void zzbQ() {
        View findViewById = this.zzqk.getRootView().findViewById(16908290);
        if (findViewById != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            this.zzqk.getGlobalVisibleRect(rect);
            findViewById.getGlobalVisibleRect(rect2);
            if (rect.top != rect2.top) {
                this.zzqN = false;
            }
            if (rect.bottom != rect2.bottom) {
                this.zzqO = false;
            }
        }
    }

    private void zze(boolean z) {
        boolean z2 = true;
        if (this.zzqk != null && this.zzqo != null && this.zzqo.zzBD != null) {
            if (!z || this.zzqM.tryAcquire()) {
                if (this.zzqo.zzBD.zzhe().zzbY()) {
                    int[] iArr = new int[2];
                    this.zzqk.getLocationOnScreen(iArr);
                    int zzc = zzl.zzcF().zzc(this.context, iArr[0]);
                    int zzc2 = zzl.zzcF().zzc(this.context, iArr[1]);
                    if (!(zzc == this.zzqK && zzc2 == this.zzqL)) {
                        this.zzqK = zzc;
                        this.zzqL = zzc2;
                        zzja zzhe = this.zzqo.zzBD.zzhe();
                        zzc = this.zzqK;
                        int i = this.zzqL;
                        if (z) {
                            z2 = false;
                        }
                        zzhe.zza(zzc, i, z2);
                    }
                }
                zzbQ();
            }
        }
    }

    public void destroy() {
        zzbP();
        this.zzqs = null;
        this.zzqt = null;
        this.zzqw = null;
        this.zzqv = null;
        this.zzqC = null;
        this.zzqu = null;
        zzf(false);
        if (this.zzqk != null) {
            this.zzqk.removeAllViews();
        }
        zzbK();
        zzbM();
        this.zzqo = null;
    }

    public void onGlobalLayout() {
        zze(false);
    }

    public void onScrollChanged() {
        zze(true);
        this.zzqP = true;
    }

    public void zza(HashSet<zzht> hashSet) {
        this.zzqJ = hashSet;
    }

    public HashSet<zzht> zzbJ() {
        return this.zzqJ;
    }

    public void zzbK() {
        if (this.zzqo != null && this.zzqo.zzBD != null) {
            this.zzqo.zzBD.destroy();
        }
    }

    public void zzbL() {
        if (this.zzqo != null && this.zzqo.zzBD != null) {
            this.zzqo.zzBD.stopLoading();
        }
    }

    public void zzbM() {
        if (this.zzqo != null && this.zzqo.zzzv != null) {
            try {
                this.zzqo.zzzv.destroy();
            } catch (RemoteException e) {
                zzb.zzaH("Could not destroy mediation adapter.");
            }
        }
    }

    public boolean zzbN() {
        return this.zzqH == 0;
    }

    public boolean zzbO() {
        return this.zzqH == 1;
    }

    public void zzbP() {
        if (this.zzqk != null) {
            this.zzqk.zzbP();
        }
    }

    public String zzbR() {
        return (this.zzqN && this.zzqO) ? BuildConfig.FLAVOR : this.zzqN ? this.zzqP ? "top-scrollable" : "top-locked" : this.zzqO ? this.zzqP ? "bottom-scrollable" : "bottom-locked" : BuildConfig.FLAVOR;
    }

    public void zzbS() {
        this.zzqq.zzl(this.zzqo.zzHz);
        this.zzqq.zzm(this.zzqo.zzHA);
        this.zzqq.zzy(this.zzqn.zztf);
        this.zzqq.zzz(this.zzqo.zzEK);
    }

    public void zzf(boolean z) {
        if (this.zzqH == 0) {
            zzbL();
        }
        if (this.zzql != null) {
            this.zzql.cancel();
        }
        if (this.zzqm != null) {
            this.zzqm.cancel();
        }
        if (z) {
            this.zzqo = null;
        }
    }
}
