package org.fmod;

import android.media.AudioRecord;
import android.util.Log;
import java.nio.ByteBuffer;

/* renamed from: org.fmod.a */
final class C1109a implements Runnable {
    private final FMODAudioDevice f905a;
    private final ByteBuffer f906b;
    private final int f907c;
    private final int f908d;
    private final int f909e;
    private volatile Thread f910f;
    private volatile boolean f911g;
    private AudioRecord f912h;
    private boolean f913i;

    C1109a(FMODAudioDevice fMODAudioDevice, int i, int i2) {
        this.f905a = fMODAudioDevice;
        this.f907c = i;
        this.f908d = i2;
        this.f909e = 2;
        this.f906b = ByteBuffer.allocateDirect(AudioRecord.getMinBufferSize(i, i2, 2));
    }

    private void m855d() {
        if (this.f912h != null) {
            if (this.f912h.getState() == 1) {
                this.f912h.stop();
            }
            this.f912h.release();
            this.f912h = null;
        }
        this.f906b.position(0);
        this.f913i = false;
    }

    public final int m856a() {
        return this.f906b.capacity();
    }

    public final void m857b() {
        if (this.f910f != null) {
            m858c();
        }
        this.f911g = true;
        this.f910f = new Thread(this);
        this.f910f.start();
    }

    public final void m858c() {
        while (this.f910f != null) {
            this.f911g = false;
            try {
                this.f910f.join();
                this.f910f = null;
            } catch (InterruptedException e) {
            }
        }
    }

    public final void run() {
        int i = 3;
        while (this.f911g) {
            int i2;
            if (!this.f913i && i > 0) {
                m855d();
                this.f912h = new AudioRecord(1, this.f907c, this.f908d, this.f909e, this.f906b.capacity());
                this.f913i = this.f912h.getState() == 1;
                if (this.f913i) {
                    this.f906b.position(0);
                    this.f912h.startRecording();
                    i2 = 3;
                    if (this.f913i || this.f912h.getRecordingState() != 3) {
                        i = i2;
                    } else {
                        this.f905a.fmodProcessMicData(this.f906b, this.f912h.read(this.f906b, this.f906b.capacity()));
                        this.f906b.position(0);
                        i = i2;
                    }
                } else {
                    Log.e("FMOD", "AudioRecord failed to initialize (status " + this.f912h.getState() + ")");
                    i--;
                    m855d();
                }
            }
            i2 = i;
            if (this.f913i) {
            }
            i = i2;
        }
        m855d();
    }
}
