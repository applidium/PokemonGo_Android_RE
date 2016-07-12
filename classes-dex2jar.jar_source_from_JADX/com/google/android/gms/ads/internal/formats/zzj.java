package com.google.android.gms.ads.internal.formats;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.zzl;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzco.zza;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zziu;
import com.google.android.gms.internal.zziz;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class zzj extends zza implements OnClickListener, OnTouchListener, OnGlobalLayoutListener, OnScrollChangedListener {
    private final FrameLayout zznZ;
    private final Object zzpd;
    private final FrameLayout zzwU;
    private final Map<String, WeakReference<View>> zzwV;
    private zzb zzwW;
    boolean zzwX;
    int zzwY;
    int zzwZ;
    private zzh zzwx;

    /* renamed from: com.google.android.gms.ads.internal.formats.zzj.1 */
    class C01811 implements Runnable {
        final /* synthetic */ zzh zzxa;
        final /* synthetic */ zzj zzxb;

        C01811(zzj com_google_android_gms_ads_internal_formats_zzj, zzh com_google_android_gms_ads_internal_formats_zzh) {
            this.zzxb = com_google_android_gms_ads_internal_formats_zzj;
            this.zzxa = com_google_android_gms_ads_internal_formats_zzh;
        }

        public void run() {
            zziz zzdC = this.zzxa.zzdC();
            if (zzdC != null) {
                this.zzxb.zznZ.addView(zzdC.getView());
            }
        }
    }

    public zzj(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.zzpd = new Object();
        this.zzwV = new HashMap();
        this.zzwX = false;
        this.zzwU = frameLayout;
        this.zznZ = frameLayout2;
        zziu.zza(this.zzwU, (OnGlobalLayoutListener) this);
        zziu.zza(this.zzwU, (OnScrollChangedListener) this);
        this.zzwU.setOnTouchListener(this);
    }

    int getMeasuredHeight() {
        return this.zzwU.getMeasuredHeight();
    }

    int getMeasuredWidth() {
        return this.zzwU.getMeasuredWidth();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onClick(android.view.View r10) {
        /*
        r9 = this;
        r2 = r9.zzpd;
        monitor-enter(r2);
        r0 = r9.zzwx;	 Catch:{ all -> 0x0091 }
        if (r0 != 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r2);	 Catch:{ all -> 0x0091 }
    L_0x0008:
        return;
    L_0x0009:
        r3 = new org.json.JSONObject;	 Catch:{ all -> 0x0091 }
        r3.<init>();	 Catch:{ all -> 0x0091 }
        r0 = r9.zzwV;	 Catch:{ all -> 0x0091 }
        r0 = r0.entrySet();	 Catch:{ all -> 0x0091 }
        r4 = r0.iterator();	 Catch:{ all -> 0x0091 }
    L_0x0018:
        r0 = r4.hasNext();	 Catch:{ all -> 0x0091 }
        if (r0 == 0) goto L_0x0094;
    L_0x001e:
        r0 = r4.next();	 Catch:{ all -> 0x0091 }
        r0 = (java.util.Map.Entry) r0;	 Catch:{ all -> 0x0091 }
        r1 = r0.getValue();	 Catch:{ all -> 0x0091 }
        r1 = (java.lang.ref.WeakReference) r1;	 Catch:{ all -> 0x0091 }
        r1 = r1.get();	 Catch:{ all -> 0x0091 }
        r1 = (android.view.View) r1;	 Catch:{ all -> 0x0091 }
        r5 = r9.zzj(r1);	 Catch:{ all -> 0x0091 }
        r6 = new org.json.JSONObject;	 Catch:{ all -> 0x0091 }
        r6.<init>();	 Catch:{ all -> 0x0091 }
        r7 = "width";
        r8 = r1.getWidth();	 Catch:{ JSONException -> 0x0073 }
        r8 = r9.zzp(r8);	 Catch:{ JSONException -> 0x0073 }
        r6.put(r7, r8);	 Catch:{ JSONException -> 0x0073 }
        r7 = "height";
        r1 = r1.getHeight();	 Catch:{ JSONException -> 0x0073 }
        r1 = r9.zzp(r1);	 Catch:{ JSONException -> 0x0073 }
        r6.put(r7, r1);	 Catch:{ JSONException -> 0x0073 }
        r1 = "x";
        r7 = r5.x;	 Catch:{ JSONException -> 0x0073 }
        r7 = r9.zzp(r7);	 Catch:{ JSONException -> 0x0073 }
        r6.put(r1, r7);	 Catch:{ JSONException -> 0x0073 }
        r1 = "y";
        r5 = r5.y;	 Catch:{ JSONException -> 0x0073 }
        r5 = r9.zzp(r5);	 Catch:{ JSONException -> 0x0073 }
        r6.put(r1, r5);	 Catch:{ JSONException -> 0x0073 }
        r1 = r0.getKey();	 Catch:{ JSONException -> 0x0073 }
        r1 = (java.lang.String) r1;	 Catch:{ JSONException -> 0x0073 }
        r3.put(r1, r6);	 Catch:{ JSONException -> 0x0073 }
        goto L_0x0018;
    L_0x0073:
        r1 = move-exception;
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0091 }
        r1.<init>();	 Catch:{ all -> 0x0091 }
        r5 = "Unable to get view rectangle for view ";
        r1 = r1.append(r5);	 Catch:{ all -> 0x0091 }
        r0 = r0.getKey();	 Catch:{ all -> 0x0091 }
        r0 = (java.lang.String) r0;	 Catch:{ all -> 0x0091 }
        r0 = r1.append(r0);	 Catch:{ all -> 0x0091 }
        r0 = r0.toString();	 Catch:{ all -> 0x0091 }
        com.google.android.gms.ads.internal.util.client.zzb.zzaH(r0);	 Catch:{ all -> 0x0091 }
        goto L_0x0018;
    L_0x0091:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0091 }
        throw r0;
    L_0x0094:
        r0 = new org.json.JSONObject;	 Catch:{ all -> 0x0091 }
        r0.<init>();	 Catch:{ all -> 0x0091 }
        r1 = "x";
        r4 = r9.zzwY;	 Catch:{ JSONException -> 0x00c9 }
        r4 = r9.zzp(r4);	 Catch:{ JSONException -> 0x00c9 }
        r0.put(r1, r4);	 Catch:{ JSONException -> 0x00c9 }
        r1 = "y";
        r4 = r9.zzwZ;	 Catch:{ JSONException -> 0x00c9 }
        r4 = r9.zzp(r4);	 Catch:{ JSONException -> 0x00c9 }
        r0.put(r1, r4);	 Catch:{ JSONException -> 0x00c9 }
    L_0x00af:
        r1 = r9.zzwW;	 Catch:{ all -> 0x0091 }
        if (r1 == 0) goto L_0x00d0;
    L_0x00b3:
        r1 = r9.zzwW;	 Catch:{ all -> 0x0091 }
        r1 = r1.zzdu();	 Catch:{ all -> 0x0091 }
        r1 = r1.equals(r10);	 Catch:{ all -> 0x0091 }
        if (r1 == 0) goto L_0x00d0;
    L_0x00bf:
        r1 = r9.zzwx;	 Catch:{ all -> 0x0091 }
        r4 = "1007";
        r1.zza(r4, r3, r0);	 Catch:{ all -> 0x0091 }
    L_0x00c6:
        monitor-exit(r2);	 Catch:{ all -> 0x0091 }
        goto L_0x0008;
    L_0x00c9:
        r1 = move-exception;
        r1 = "Unable to get click location";
        com.google.android.gms.ads.internal.util.client.zzb.zzaH(r1);	 Catch:{ all -> 0x0091 }
        goto L_0x00af;
    L_0x00d0:
        r1 = r9.zzwx;	 Catch:{ all -> 0x0091 }
        r4 = r9.zzwV;	 Catch:{ all -> 0x0091 }
        r1.zza(r10, r4, r3, r0);	 Catch:{ all -> 0x0091 }
        goto L_0x00c6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.formats.zzj.onClick(android.view.View):void");
    }

    public void onGlobalLayout() {
        synchronized (this.zzpd) {
            if (this.zzwX) {
                int measuredWidth = getMeasuredWidth();
                int measuredHeight = getMeasuredHeight();
                if (!(measuredWidth == 0 || measuredHeight == 0)) {
                    this.zznZ.setLayoutParams(new LayoutParams(measuredWidth, measuredHeight));
                    this.zzwX = false;
                }
            }
            if (this.zzwx != null) {
                this.zzwx.zzi(this.zzwU);
            }
        }
    }

    public void onScrollChanged() {
        synchronized (this.zzpd) {
            if (this.zzwx != null) {
                this.zzwx.zzi(this.zzwU);
            }
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.zzpd) {
            if (this.zzwx == null) {
            } else {
                Point zzc = zzc(motionEvent);
                this.zzwY = zzc.x;
                this.zzwZ = zzc.y;
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setLocation((float) zzc.x, (float) zzc.y);
                this.zzwx.zzb(obtain);
                obtain.recycle();
            }
        }
        return false;
    }

    public zzd zzW(String str) {
        zzd zzy;
        synchronized (this.zzpd) {
            Object obj;
            WeakReference weakReference = (WeakReference) this.zzwV.get(str);
            if (weakReference == null) {
                obj = null;
            } else {
                View view = (View) weakReference.get();
            }
            zzy = zze.zzy(obj);
        }
        return zzy;
    }

    public void zza(String str, zzd com_google_android_gms_dynamic_zzd) {
        View view = (View) zze.zzp(com_google_android_gms_dynamic_zzd);
        synchronized (this.zzpd) {
            if (view == null) {
                this.zzwV.remove(str);
            } else {
                this.zzwV.put(str, new WeakReference(view));
                view.setOnTouchListener(this);
                view.setOnClickListener(this);
            }
        }
    }

    public void zzb(zzd com_google_android_gms_dynamic_zzd) {
        synchronized (this.zzpd) {
            this.zzwX = true;
            zzh com_google_android_gms_ads_internal_formats_zzh = (zzh) zze.zzp(com_google_android_gms_dynamic_zzd);
            if ((this.zzwx instanceof zzg) && ((zzg) this.zzwx).zzdB()) {
                ((zzg) this.zzwx).zzb(com_google_android_gms_ads_internal_formats_zzh);
            } else {
                this.zzwx = com_google_android_gms_ads_internal_formats_zzh;
                if (this.zzwx instanceof zzg) {
                    ((zzg) this.zzwx).zzb(null);
                }
            }
            this.zznZ.removeAllViews();
            this.zzwW = zzf(com_google_android_gms_ads_internal_formats_zzh);
            if (this.zzwW != null) {
                this.zzwV.put("1007", new WeakReference(this.zzwW.zzdu()));
                this.zznZ.addView(this.zzwW);
            }
            zzid.zzIE.post(new C01811(this, com_google_android_gms_ads_internal_formats_zzh));
            com_google_android_gms_ads_internal_formats_zzh.zzh(this.zzwU);
        }
    }

    Point zzc(MotionEvent motionEvent) {
        int[] iArr = new int[2];
        this.zzwU.getLocationOnScreen(iArr);
        return new Point((int) (motionEvent.getRawX() - ((float) iArr[0])), (int) (motionEvent.getRawY() - ((float) iArr[1])));
    }

    zzb zzf(zzh com_google_android_gms_ads_internal_formats_zzh) {
        return com_google_android_gms_ads_internal_formats_zzh.zza(this);
    }

    Point zzj(View view) {
        if (this.zzwW == null || !this.zzwW.zzdu().equals(view)) {
            Point point = new Point();
            view.getGlobalVisibleRect(new Rect(), point);
            return point;
        }
        Point point2 = new Point();
        this.zzwU.getGlobalVisibleRect(new Rect(), point2);
        Point point3 = new Point();
        view.getGlobalVisibleRect(new Rect(), point3);
        return new Point(point3.x - point2.x, point3.y - point2.y);
    }

    int zzp(int i) {
        return zzl.zzcF().zzc(this.zzwx.getContext(), i);
    }
}
