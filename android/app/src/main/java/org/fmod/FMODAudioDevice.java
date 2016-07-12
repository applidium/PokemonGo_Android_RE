package org.fmod;

import android.media.AudioTrack;
import android.util.Log;
import java.nio.ByteBuffer;

public class FMODAudioDevice implements Runnable {
    private static int f894h;
    private static int f895i;
    private static int f896j;
    private static int f897k;
    private volatile Thread f898a;
    private volatile boolean f899b;
    private AudioTrack f900c;
    private boolean f901d;
    private ByteBuffer f902e;
    private byte[] f903f;
    private volatile C1109a f904g;

    static {
        f894h = 0;
        f895i = 1;
        f896j = 2;
        f897k = 3;
    }

    public FMODAudioDevice() {
        this.f898a = null;
        this.f899b = false;
        this.f900c = null;
        this.f901d = false;
        this.f902e = null;
        this.f903f = null;
    }

    private native int fmodGetInfo(int i);

    private native int fmodProcess(ByteBuffer byteBuffer);

    private void releaseAudioTrack() {
        if (this.f900c != null) {
            if (this.f900c.getState() == 1) {
                this.f900c.stop();
            }
            this.f900c.release();
            this.f900c = null;
        }
        this.f902e = null;
        this.f903f = null;
        this.f901d = false;
    }

    public void close() {
        synchronized (this) {
            stop();
        }
    }

    native int fmodProcessMicData(ByteBuffer byteBuffer, int i);

    public boolean isRunning() {
        return this.f898a != null && this.f898a.isAlive();
    }

    public void run() {
        int i = 3;
        while (this.f899b) {
            int i2;
            if (this.f901d || i <= 0) {
                i2 = i;
            } else {
                releaseAudioTrack();
                int fmodGetInfo = fmodGetInfo(f894h);
                int round = Math.round(((float) AudioTrack.getMinBufferSize(fmodGetInfo, 3, 2)) * 1.1f) & -4;
                int fmodGetInfo2 = fmodGetInfo(f895i);
                i2 = fmodGetInfo(f896j);
                if ((fmodGetInfo2 * i2) * 4 > round) {
                    round = (i2 * fmodGetInfo2) * 4;
                }
                this.f900c = new AudioTrack(3, fmodGetInfo, 3, 2, round, 1);
                this.f901d = this.f900c.getState() == 1;
                if (this.f901d) {
                    this.f902e = ByteBuffer.allocateDirect((fmodGetInfo2 * 2) * 2);
                    this.f903f = new byte[this.f902e.capacity()];
                    this.f900c.play();
                    i2 = 3;
                } else {
                    Log.e("FMOD", "AudioTrack failed to initialize (status " + this.f900c.getState() + ")");
                    releaseAudioTrack();
                    i2 = i - 1;
                }
            }
            if (!this.f901d) {
                i = i2;
            } else if (fmodGetInfo(f897k) == 1) {
                fmodProcess(this.f902e);
                this.f902e.get(this.f903f, 0, this.f902e.capacity());
                this.f900c.write(this.f903f, 0, this.f902e.capacity());
                this.f902e.position(0);
                i = i2;
            } else {
                releaseAudioTrack();
                i = i2;
            }
        }
        releaseAudioTrack();
    }

    public void start() {
        synchronized (this) {
            if (this.f898a != null) {
                stop();
            }
            this.f898a = new Thread(this, "FMODAudioDevice");
            this.f898a.setPriority(10);
            this.f899b = true;
            this.f898a.start();
            if (this.f904g != null) {
                this.f904g.m857b();
            }
        }
    }

    public int startAudioRecord(int i, int i2, int i3) {
        int a;
        synchronized (this) {
            if (this.f904g == null) {
                this.f904g = new C1109a(this, i, i2);
                this.f904g.m857b();
            }
            a = this.f904g.m856a();
        }
        return a;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void stop() {
        /*
        r1 = this;
        monitor-enter(r1);
    L_0x0001:
        r0 = r1.f898a;	 Catch:{ all -> 0x001e }
        if (r0 == 0) goto L_0x0013;
    L_0x0005:
        r0 = 0;
        r1.f899b = r0;	 Catch:{ all -> 0x001e }
        r0 = r1.f898a;	 Catch:{ InterruptedException -> 0x0011 }
        r0.join();	 Catch:{ InterruptedException -> 0x0011 }
        r0 = 0;
        r1.f898a = r0;	 Catch:{ InterruptedException -> 0x0011 }
        goto L_0x0001;
    L_0x0011:
        r0 = move-exception;
        goto L_0x0001;
    L_0x0013:
        r0 = r1.f904g;	 Catch:{ all -> 0x001e }
        if (r0 == 0) goto L_0x001c;
    L_0x0017:
        r0 = r1.f904g;	 Catch:{ all -> 0x001e }
        r0.m858c();	 Catch:{ all -> 0x001e }
    L_0x001c:
        monitor-exit(r1);
        return;
    L_0x001e:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fmod.FMODAudioDevice.stop():void");
    }

    public void stopAudioRecord() {
        synchronized (this) {
            if (this.f904g != null) {
                this.f904g.m858c();
                this.f904g = null;
            }
        }
    }
}
