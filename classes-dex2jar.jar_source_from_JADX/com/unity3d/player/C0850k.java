package com.unity3d.player;

import android.app.Presentation;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManager.DisplayListener;
import android.os.Bundle;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;

/* renamed from: com.unity3d.player.k */
public final class C0850k implements C0842g {
    private Object f181a;
    private Presentation f182b;
    private DisplayListener f183c;

    /* renamed from: com.unity3d.player.k.1 */
    final class C08461 implements DisplayListener {
        final /* synthetic */ UnityPlayer f173a;
        final /* synthetic */ C0850k f174b;

        C08461(C0850k c0850k, UnityPlayer unityPlayer) {
            this.f174b = c0850k;
            this.f173a = unityPlayer;
        }

        public final void onDisplayAdded(int i) {
            this.f173a.displayChanged(-1, null);
        }

        public final void onDisplayChanged(int i) {
            this.f173a.displayChanged(-1, null);
        }

        public final void onDisplayRemoved(int i) {
            this.f173a.displayChanged(-1, null);
        }
    }

    /* renamed from: com.unity3d.player.k.2 */
    final class C08492 implements Runnable {
        final /* synthetic */ Context f177a;
        final /* synthetic */ Display f178b;
        final /* synthetic */ UnityPlayer f179c;
        final /* synthetic */ C0850k f180d;

        /* renamed from: com.unity3d.player.k.2.1 */
        final class C08481 extends Presentation {
            final /* synthetic */ C08492 f176a;

            /* renamed from: com.unity3d.player.k.2.1.1 */
            final class C08471 implements Callback {
                final /* synthetic */ C08481 f175a;

                C08471(C08481 c08481) {
                    this.f175a = c08481;
                }

                public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                    this.f175a.f176a.f179c.displayChanged(1, surfaceHolder.getSurface());
                }

                public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                    this.f175a.f176a.f179c.displayChanged(1, surfaceHolder.getSurface());
                }

                public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                    this.f175a.f176a.f179c.displayChanged(1, null);
                }
            }

            C08481(C08492 c08492, Context context, Display display) {
                this.f176a = c08492;
                super(context, display);
            }

            protected final void onCreate(Bundle bundle) {
                View surfaceView = new SurfaceView(this.f176a.f177a);
                surfaceView.getHolder().addCallback(new C08471(this));
                setContentView(surfaceView);
            }

            public final void onDisplayRemoved() {
                dismiss();
                synchronized (this.f176a.f180d.f181a) {
                    this.f176a.f180d.f182b = null;
                }
            }
        }

        C08492(C0850k c0850k, Context context, Display display, UnityPlayer unityPlayer) {
            this.f180d = c0850k;
            this.f177a = context;
            this.f178b = display;
            this.f179c = unityPlayer;
        }

        public final void run() {
            synchronized (this.f180d.f181a) {
                if (this.f180d.f182b != null) {
                    this.f180d.f182b.dismiss();
                }
                this.f180d.f182b = new C08481(this, this.f177a, this.f178b);
                this.f180d.f182b.show();
            }
        }
    }

    public C0850k() {
        this.f181a = new Object[0];
    }

    public final void m138a(Context context) {
        if (this.f183c != null) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                displayManager.unregisterDisplayListener(this.f183c);
            }
        }
    }

    public final void m139a(UnityPlayer unityPlayer, Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            displayManager.registerDisplayListener(new C08461(this, unityPlayer), null);
        }
    }

    public final boolean m140a(UnityPlayer unityPlayer, Context context, int i) {
        synchronized (this.f181a) {
            Display display;
            if (this.f182b != null && this.f182b.isShowing()) {
                display = this.f182b.getDisplay();
                if (display != null && display.getDisplayId() == i) {
                    return true;
                }
            }
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager == null) {
                return false;
            }
            display = displayManager.getDisplay(i);
            if (display == null) {
                return false;
            }
            unityPlayer.m97b(new C08492(this, context, display, unityPlayer));
            return true;
        }
    }
}
