package com.unity3d.player;

import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.unity3d.player.l */
public final class C0852l implements C0843h {
    private Choreographer f186a;
    private long f187b;
    private FrameCallback f188c;
    private Lock f189d;

    /* renamed from: com.unity3d.player.l.1 */
    final class C08511 implements FrameCallback {
        final /* synthetic */ UnityPlayer f184a;
        final /* synthetic */ C0852l f185b;

        C08511(C0852l c0852l, UnityPlayer unityPlayer) {
            this.f185b = c0852l;
            this.f184a = unityPlayer;
        }

        public final void doFrame(long j) {
            UnityPlayer.lockNativeAccess();
            if (C0867v.m185c()) {
                this.f184a.nativeAddVSyncTime(j);
            }
            UnityPlayer.unlockNativeAccess();
            this.f185b.f189d.lock();
            if (this.f185b.f186a != null) {
                this.f185b.f186a.postFrameCallback(this.f185b.f188c);
            }
            this.f185b.f189d.unlock();
        }
    }

    public C0852l() {
        this.f186a = null;
        this.f187b = 0;
        this.f189d = new ReentrantLock();
    }

    public final void m144a() {
        this.f189d.lock();
        if (this.f186a != null) {
            this.f186a.removeFrameCallback(this.f188c);
        }
        this.f186a = null;
        this.f189d.unlock();
    }

    public final void m145a(UnityPlayer unityPlayer) {
        this.f189d.lock();
        if (this.f186a == null) {
            this.f186a = Choreographer.getInstance();
            if (this.f186a != null) {
                C0853m.Log(4, "Choreographer available: Enabling VSYNC timing");
                this.f188c = new C08511(this, unityPlayer);
                this.f186a.postFrameCallback(this.f188c);
            }
        }
        this.f189d.unlock();
    }
}
