package com.unity3d.player;

import android.app.Activity;
import android.content.ContextWrapper;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
import android.view.View;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import spacemadness.com.lunarconsole.C1401R;

/* renamed from: com.unity3d.player.p */
public final class C0858p implements C0845j {
    private final Queue f197a;
    private final Activity f198b;
    private Runnable f199c;

    /* renamed from: com.unity3d.player.p.1 */
    final class C08571 implements Runnable {
        final /* synthetic */ C0858p f196a;

        C08571(C0858p c0858p) {
            this.f196a = c0858p;
        }

        private static void m150a(View view, MotionEvent motionEvent) {
            if (C0859q.f201b) {
                C0859q.f209j.m115a(view, motionEvent);
            }
        }

        public final void run() {
            while (true) {
                MotionEvent motionEvent = (MotionEvent) this.f196a.f197a.poll();
                if (motionEvent != null) {
                    View decorView = this.f196a.f198b.getWindow().getDecorView();
                    int source = motionEvent.getSource();
                    if ((source & 2) != 0) {
                        switch (motionEvent.getAction() & MotionEventCompat.ACTION_MASK) {
                            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                            case Place.TYPE_AQUARIUM /*4*/:
                            case Place.TYPE_ART_GALLERY /*5*/:
                            case Place.TYPE_ATM /*6*/:
                                decorView.dispatchTouchEvent(motionEvent);
                                break;
                            default:
                                C08571.m150a(decorView, motionEvent);
                                break;
                        }
                    } else if ((source & 4) != 0) {
                        decorView.dispatchTrackballEvent(motionEvent);
                    } else {
                        C08571.m150a(decorView, motionEvent);
                    }
                } else {
                    return;
                }
            }
        }
    }

    public C0858p(ContextWrapper contextWrapper) {
        this.f197a = new ConcurrentLinkedQueue();
        this.f199c = new C08571(this);
        this.f198b = (Activity) contextWrapper;
    }

    private static int m151a(PointerCoords[] pointerCoordsArr, float[] fArr, int i) {
        for (int i2 = 0; i2 < pointerCoordsArr.length; i2++) {
            PointerCoords pointerCoords = new PointerCoords();
            pointerCoordsArr[i2] = pointerCoords;
            int i3 = i + 1;
            pointerCoords.orientation = fArr[i];
            int i4 = i3 + 1;
            pointerCoords.pressure = fArr[i3];
            i3 = i4 + 1;
            pointerCoords.size = fArr[i4];
            i4 = i3 + 1;
            pointerCoords.toolMajor = fArr[i3];
            i3 = i4 + 1;
            pointerCoords.toolMinor = fArr[i4];
            i4 = i3 + 1;
            pointerCoords.touchMajor = fArr[i3];
            i3 = i4 + 1;
            pointerCoords.touchMinor = fArr[i4];
            i4 = i3 + 1;
            pointerCoords.x = fArr[i3];
            i = i4 + 1;
            pointerCoords.y = fArr[i4];
        }
        return i;
    }

    private static PointerCoords[] m153a(int i, float[] fArr) {
        PointerCoords[] pointerCoordsArr = new PointerCoords[i];
        C0858p.m151a(pointerCoordsArr, fArr, 0);
        return pointerCoordsArr;
    }

    public final void m155a(long j, long j2, int i, int i2, int[] iArr, float[] fArr, int i3, float f, float f2, int i4, int i5, int i6, int i7, int i8, long[] jArr, float[] fArr2) {
        if (this.f198b != null) {
            MotionEvent obtain = MotionEvent.obtain(j, j2, i, i2, iArr, C0858p.m153a(i2, fArr), i3, f, f2, i4, i5, i6, i7);
            int i9 = 0;
            for (int i10 = 0; i10 < i8; i10++) {
                PointerCoords[] pointerCoordsArr = new PointerCoords[i2];
                i9 = C0858p.m151a(pointerCoordsArr, fArr2, i9);
                obtain.addBatch(jArr[i10], pointerCoordsArr, i3);
            }
            this.f197a.add(obtain);
            this.f198b.runOnUiThread(this.f199c);
        }
    }
}
