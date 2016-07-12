package com.unity3d.player;

import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.SurfaceHolder;
import com.google.android.gms.location.LocationStatusCodes;
import com.upsight.android.internal.util.NetworkHelper;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.unity3d.player.a */
final class C0833a {
    Camera f153a;
    Parameters f154b;
    Size f155c;
    int f156d;
    int[] f157e;
    C0831b f158f;
    private final Object[] f159g;
    private final int f160h;
    private final int f161i;
    private final int f162j;
    private final int f163k;

    /* renamed from: com.unity3d.player.a.a */
    interface C0829a {
        void onCameraFrame(C0833a c0833a, byte[] bArr);
    }

    /* renamed from: com.unity3d.player.a.1 */
    final class C08301 implements PreviewCallback {
        long f145a;
        final /* synthetic */ C0829a f146b;
        final /* synthetic */ C0833a f147c;

        C08301(C0833a c0833a, C0829a c0829a) {
            this.f147c = c0833a;
            this.f146b = c0829a;
            this.f145a = 0;
        }

        public final void onPreviewFrame(byte[] bArr, Camera camera) {
            if (this.f147c.f153a == camera) {
                this.f146b.onCameraFrame(this.f147c, bArr);
            }
        }
    }

    /* renamed from: com.unity3d.player.a.2 */
    final class C08322 extends C0831b {
        Camera f151a;
        final /* synthetic */ C0833a f152b;

        C08322(C0833a c0833a) {
            this.f152b = c0833a;
            super(3);
            this.f151a = this.f152b.f153a;
        }

        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            synchronized (this.f152b.f159g) {
                if (this.f152b.f153a != this.f151a) {
                    return;
                }
                try {
                    this.f152b.f153a.setPreviewDisplay(surfaceHolder);
                    this.f152b.f153a.startPreview();
                } catch (Exception e) {
                    C0853m.Log(6, "Unable to initialize webcam data stream: " + e.getMessage());
                }
            }
        }

        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            synchronized (this.f152b.f159g) {
                if (this.f152b.f153a != this.f151a) {
                    return;
                }
                this.f152b.f153a.stopPreview();
            }
        }
    }

    public C0833a(int i, int i2, int i3, int i4) {
        this.f159g = new Object[0];
        this.f160h = i;
        this.f161i = C0833a.m103a(i2, 640);
        this.f162j = C0833a.m103a(i3, 480);
        this.f163k = C0833a.m103a(i4, 24);
    }

    private static final int m103a(int i, int i2) {
        return i != 0 ? i : i2;
    }

    private static void m104a(Parameters parameters) {
        if (parameters.getSupportedColorEffects() != null) {
            parameters.setColorEffect(NetworkHelper.NETWORK_OPERATOR_NONE);
        }
        if (parameters.getSupportedFocusModes().contains("continuous-video")) {
            parameters.setFocusMode("continuous-video");
        }
    }

    private void m106b(C0829a c0829a) {
        synchronized (this.f159g) {
            this.f153a = Camera.open(this.f160h);
            this.f154b = this.f153a.getParameters();
            this.f155c = m109f();
            this.f157e = m108e();
            this.f156d = m107d();
            C0833a.m104a(this.f154b);
            this.f154b.setPreviewSize(this.f155c.width, this.f155c.height);
            this.f154b.setPreviewFpsRange(this.f157e[0], this.f157e[1]);
            this.f153a.setParameters(this.f154b);
            PreviewCallback c08301 = new C08301(this, c0829a);
            int i = (((this.f155c.width * this.f155c.height) * this.f156d) / 8) + AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD;
            this.f153a.addCallbackBuffer(new byte[i]);
            this.f153a.addCallbackBuffer(new byte[i]);
            this.f153a.setPreviewCallbackWithBuffer(c08301);
        }
    }

    private final int m107d() {
        this.f154b.setPreviewFormat(17);
        return ImageFormat.getBitsPerPixel(17);
    }

    private final int[] m108e() {
        double d = (double) (this.f163k * LocationStatusCodes.GEOFENCE_NOT_AVAILABLE);
        List supportedPreviewFpsRange = this.f154b.getSupportedPreviewFpsRange();
        if (supportedPreviewFpsRange == null) {
            supportedPreviewFpsRange = new ArrayList();
        }
        int[] iArr = new int[]{this.f163k * LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, this.f163k * LocationStatusCodes.GEOFENCE_NOT_AVAILABLE};
        double d2 = Double.MAX_VALUE;
        for (int[] iArr2 : r0) {
            int[] iArr22;
            double abs = Math.abs(Math.log(d / ((double) iArr22[0]))) + Math.abs(Math.log(d / ((double) iArr22[1])));
            if (abs < d2) {
                d2 = abs;
            } else {
                iArr22 = iArr;
            }
            iArr = iArr22;
        }
        return iArr;
    }

    private final Size m109f() {
        double d = (double) this.f161i;
        double d2 = (double) this.f162j;
        Size size = null;
        double d3 = Double.MAX_VALUE;
        for (Size size2 : this.f154b.getSupportedPreviewSizes()) {
            Size size22;
            double abs = Math.abs(Math.log(d / ((double) size22.width))) + Math.abs(Math.log(d2 / ((double) size22.height)));
            if (abs >= d3) {
                size22 = size;
                abs = d3;
            }
            size = size22;
            d3 = abs;
        }
        return size;
    }

    public final int m110a() {
        return this.f160h;
    }

    public final void m111a(C0829a c0829a) {
        synchronized (this.f159g) {
            if (this.f153a == null) {
                m106b(c0829a);
            }
            if (C0859q.f200a && C0859q.f208i.m119a(this.f153a)) {
                this.f153a.startPreview();
                return;
            }
            if (this.f158f == null) {
                this.f158f = new C08322(this);
                this.f158f.m101a();
            }
        }
    }

    public final void m112a(byte[] bArr) {
        synchronized (this.f159g) {
            if (this.f153a != null) {
                this.f153a.addCallbackBuffer(bArr);
            }
        }
    }

    public final Size m113b() {
        return this.f155c;
    }

    public final void m114c() {
        synchronized (this.f159g) {
            if (this.f153a != null) {
                this.f153a.setPreviewCallbackWithBuffer(null);
                this.f153a.stopPreview();
                this.f153a.release();
                this.f153a = null;
            }
            if (this.f158f != null) {
                this.f158f.m102b();
                this.f158f = null;
            }
        }
    }
}
