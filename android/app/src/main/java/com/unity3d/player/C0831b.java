package com.unity3d.player;

import android.app.Activity;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;

/* renamed from: com.unity3d.player.b */
abstract class C0831b implements Callback {
    private final Activity f148a;
    private final int f149b;
    private SurfaceView f150c;

    /* renamed from: com.unity3d.player.b.1 */
    final class C08341 implements Runnable {
        final /* synthetic */ C0831b f164a;

        C08341(C0831b c0831b) {
            this.f164a = c0831b;
        }

        public final void run() {
            if (this.f164a.f150c == null) {
                this.f164a.f150c = new SurfaceView(C0865t.f228a.m177a());
                this.f164a.f150c.getHolder().setType(this.f164a.f149b);
                this.f164a.f150c.getHolder().addCallback(this.f164a);
                C0865t.f228a.m178a(this.f164a.f150c);
                this.f164a.f150c.setVisibility(0);
            }
        }
    }

    /* renamed from: com.unity3d.player.b.2 */
    final class C08352 implements Runnable {
        final /* synthetic */ C0831b f165a;

        C08352(C0831b c0831b) {
            this.f165a = c0831b;
        }

        public final void run() {
            if (this.f165a.f150c != null) {
                C0865t.f228a.m179b(this.f165a.f150c);
            }
            this.f165a.f150c = null;
        }
    }

    C0831b(int i) {
        this.f148a = (Activity) C0865t.f228a.m177a();
        this.f149b = 3;
    }

    final void m101a() {
        this.f148a.runOnUiThread(new C08341(this));
    }

    final void m102b() {
        this.f148a.runOnUiThread(new C08352(this));
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }
}
