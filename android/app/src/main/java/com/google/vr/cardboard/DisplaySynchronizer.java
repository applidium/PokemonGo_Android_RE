package com.google.vr.cardboard;

import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;

public class DisplaySynchronizer implements FrameCallback {
    private static final long FRAME_TIME_NS = 16666666;
    private Choreographer choreographer;
    private final long nativeDisplaySynchronizer;

    public DisplaySynchronizer() {
        this.nativeDisplaySynchronizer = nativeInit(FRAME_TIME_NS);
        this.choreographer = Choreographer.getInstance();
        this.choreographer.postFrameCallback(this);
    }

    private native void nativeAddSyncTime(long j, long j2);

    private native void nativeDestroy(long j);

    private native long nativeInit(long j);

    private native long nativeRetainNativeDisplaySynchronizer(long j);

    private native long nativeSyncToNextVsync(long j);

    public void doFrame(long j) {
        nativeAddSyncTime(this.nativeDisplaySynchronizer, j);
        this.choreographer.postFrameCallback(this);
    }

    protected void finalize() throws Throwable {
        try {
            nativeDestroy(this.nativeDisplaySynchronizer);
        } finally {
            super.finalize();
        }
    }

    public long retainNativeDisplaySynchronizer() {
        return nativeRetainNativeDisplaySynchronizer(this.nativeDisplaySynchronizer);
    }

    public long syncToNextVsync() {
        return nativeSyncToNextVsync(this.nativeDisplaySynchronizer);
    }
}
