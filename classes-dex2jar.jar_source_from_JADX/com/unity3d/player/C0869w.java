package com.unity3d.player;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.FileInputStream;
import java.io.IOException;

/* renamed from: com.unity3d.player.w */
public final class C0869w extends FrameLayout implements OnBufferingUpdateListener, OnCompletionListener, OnPreparedListener, OnVideoSizeChangedListener, Callback, MediaPlayerControl {
    private static boolean f240a;
    private final UnityPlayer f241b;
    private final Context f242c;
    private final SurfaceView f243d;
    private final SurfaceHolder f244e;
    private final String f245f;
    private final int f246g;
    private final int f247h;
    private final boolean f248i;
    private final long f249j;
    private final long f250k;
    private final FrameLayout f251l;
    private final Display f252m;
    private int f253n;
    private int f254o;
    private int f255p;
    private int f256q;
    private MediaPlayer f257r;
    private MediaController f258s;
    private boolean f259t;
    private boolean f260u;
    private int f261v;
    private boolean f262w;
    private int f263x;
    private boolean f264y;

    /* renamed from: com.unity3d.player.w.1 */
    final class C08681 implements Runnable {
        final /* synthetic */ C0869w f239a;

        C08681(C0869w c0869w) {
            this.f239a = c0869w;
        }

        public final void run() {
            this.f239a.f241b.hideVideoPlayer();
        }
    }

    static {
        f240a = false;
    }

    protected C0869w(UnityPlayer unityPlayer, Context context, String str, int i, int i2, int i3, boolean z, long j, long j2) {
        super(context);
        this.f259t = false;
        this.f260u = false;
        this.f261v = 0;
        this.f262w = false;
        this.f263x = 0;
        this.f241b = unityPlayer;
        this.f242c = context;
        this.f251l = this;
        this.f243d = new SurfaceView(context);
        this.f244e = this.f243d.getHolder();
        this.f244e.addCallback(this);
        this.f244e.setType(3);
        this.f251l.setBackgroundColor(i);
        this.f251l.addView(this.f243d);
        this.f252m = ((WindowManager) this.f242c.getSystemService("window")).getDefaultDisplay();
        this.f245f = str;
        this.f246g = i2;
        this.f247h = i3;
        this.f248i = z;
        this.f249j = j;
        this.f250k = j2;
        if (f240a) {
            C0869w.m195a("fileName: " + this.f245f);
        }
        if (f240a) {
            C0869w.m195a("backgroundColor: " + i);
        }
        if (f240a) {
            C0869w.m195a("controlMode: " + this.f246g);
        }
        if (f240a) {
            C0869w.m195a("scalingMode: " + this.f247h);
        }
        if (f240a) {
            C0869w.m195a("isURL: " + this.f248i);
        }
        if (f240a) {
            C0869w.m195a("videoOffset: " + this.f249j);
        }
        if (f240a) {
            C0869w.m195a("videoLength: " + this.f250k);
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.f264y = true;
    }

    private void m194a() {
        doCleanUp();
        try {
            this.f257r = new MediaPlayer();
            if (this.f248i) {
                this.f257r.setDataSource(this.f242c, Uri.parse(this.f245f));
            } else if (this.f250k != 0) {
                FileInputStream fileInputStream = new FileInputStream(this.f245f);
                this.f257r.setDataSource(fileInputStream.getFD(), this.f249j, this.f250k);
                fileInputStream.close();
            } else {
                try {
                    AssetFileDescriptor openFd = getResources().getAssets().openFd(this.f245f);
                    this.f257r.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                    openFd.close();
                } catch (IOException e) {
                    FileInputStream fileInputStream2 = new FileInputStream(this.f245f);
                    this.f257r.setDataSource(fileInputStream2.getFD());
                    fileInputStream2.close();
                }
            }
            this.f257r.setDisplay(this.f244e);
            this.f257r.setScreenOnWhilePlaying(true);
            this.f257r.setOnBufferingUpdateListener(this);
            this.f257r.setOnCompletionListener(this);
            this.f257r.setOnPreparedListener(this);
            this.f257r.setOnVideoSizeChangedListener(this);
            this.f257r.setAudioStreamType(3);
            this.f257r.prepare();
            if (this.f246g == 0 || this.f246g == 1) {
                this.f258s = new MediaController(this.f242c);
                this.f258s.setMediaPlayer(this);
                this.f258s.setAnchorView(this);
                this.f258s.setEnabled(true);
                this.f258s.show();
            }
        } catch (Exception e2) {
            if (f240a) {
                C0869w.m195a("error: " + e2.getMessage() + e2);
            }
            onDestroy();
        }
    }

    private static void m195a(String str) {
        Log.v("Video", "VideoPlayer: " + str);
    }

    private void m196b() {
        if (!isPlaying()) {
            if (f240a) {
                C0869w.m195a("startVideoPlayback");
            }
            updateVideoLayout();
            if (!this.f262w) {
                start();
            }
        }
    }

    public final boolean canPause() {
        return true;
    }

    public final boolean canSeekBackward() {
        return true;
    }

    public final boolean canSeekForward() {
        return true;
    }

    protected final void doCleanUp() {
        if (this.f257r != null) {
            this.f257r.release();
            this.f257r = null;
        }
        this.f255p = 0;
        this.f256q = 0;
        this.f260u = false;
        this.f259t = false;
    }

    public final int getBufferPercentage() {
        return this.f248i ? this.f261v : 100;
    }

    public final int getCurrentPosition() {
        return this.f257r == null ? 0 : this.f257r.getCurrentPosition();
    }

    public final int getDuration() {
        return this.f257r == null ? 0 : this.f257r.getDuration();
    }

    public final boolean isPlaying() {
        boolean z = this.f260u && this.f259t;
        return this.f257r == null ? !z : this.f257r.isPlaying() || !z;
    }

    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        if (f240a) {
            C0869w.m195a("onBufferingUpdate percent:" + i);
        }
        this.f261v = i;
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        if (f240a) {
            C0869w.m195a("onCompletion called");
        }
        onDestroy();
    }

    public final void onControllerHide() {
    }

    protected final void onDestroy() {
        onPause();
        doCleanUp();
        UnityPlayer.m66a(new C08681(this));
    }

    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 && (this.f246g != 2 || i == 0 || keyEvent.isSystem())) {
            return this.f258s != null ? this.f258s.onKeyDown(i, keyEvent) : super.onKeyDown(i, keyEvent);
        } else {
            onDestroy();
            return true;
        }
    }

    protected final void onPause() {
        if (f240a) {
            C0869w.m195a("onPause called");
        }
        if (!this.f262w) {
            pause();
            this.f262w = false;
        }
        if (this.f257r != null) {
            this.f263x = this.f257r.getCurrentPosition();
        }
        this.f264y = false;
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        if (f240a) {
            C0869w.m195a("onPrepared called");
        }
        this.f260u = true;
        if (this.f260u && this.f259t) {
            m196b();
        }
    }

    protected final void onResume() {
        if (f240a) {
            C0869w.m195a("onResume called");
        }
        if (!(this.f264y || this.f262w)) {
            start();
        }
        this.f264y = true;
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.f246g != 2 || (action & MotionEventCompat.ACTION_MASK) != 0) {
            return this.f258s != null ? this.f258s.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
        } else {
            onDestroy();
            return true;
        }
    }

    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        if (f240a) {
            C0869w.m195a("onVideoSizeChanged called " + i + "x" + i2);
        }
        if (i != 0 && i2 != 0) {
            this.f259t = true;
            this.f255p = i;
            this.f256q = i2;
            if (this.f260u && this.f259t) {
                m196b();
            }
        } else if (f240a) {
            C0869w.m195a("invalid video width(" + i + ") or height(" + i2 + ")");
        }
    }

    public final void pause() {
        if (this.f257r != null) {
            this.f257r.pause();
            this.f262w = true;
        }
    }

    public final void seekTo(int i) {
        if (this.f257r != null) {
            this.f257r.seekTo(i);
        }
    }

    public final void start() {
        if (this.f257r != null) {
            this.f257r.start();
            this.f262w = false;
        }
    }

    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (f240a) {
            C0869w.m195a("surfaceChanged called " + i + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + i2 + "x" + i3);
        }
        if (this.f253n != i2 || this.f254o != i3) {
            this.f253n = i2;
            this.f254o = i3;
            updateVideoLayout();
        }
    }

    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (f240a) {
            C0869w.m195a("surfaceCreated called");
        }
        m194a();
        seekTo(this.f263x);
    }

    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (f240a) {
            C0869w.m195a("surfaceDestroyed called");
        }
        doCleanUp();
    }

    protected final void updateVideoLayout() {
        if (f240a) {
            C0869w.m195a("updateVideoLayout");
        }
        if (this.f253n == 0 || this.f254o == 0) {
            WindowManager windowManager = (WindowManager) this.f242c.getSystemService("window");
            this.f253n = windowManager.getDefaultDisplay().getWidth();
            this.f254o = windowManager.getDefaultDisplay().getHeight();
        }
        int i = this.f253n;
        int i2 = this.f254o;
        float f = ((float) this.f255p) / ((float) this.f256q);
        float f2 = ((float) this.f253n) / ((float) this.f254o);
        if (this.f247h == 1) {
            if (f2 <= f) {
                i2 = (int) (((float) this.f253n) / f);
            } else {
                i = (int) (((float) this.f254o) * f);
            }
        } else if (this.f247h == 2) {
            if (f2 >= f) {
                i2 = (int) (((float) this.f253n) / f);
            } else {
                i = (int) (((float) this.f254o) * f);
            }
        } else if (this.f247h == 0) {
            i = this.f255p;
            i2 = this.f256q;
        }
        if (f240a) {
            C0869w.m195a("frameWidth = " + i + "; frameHeight = " + i2);
        }
        this.f251l.updateViewLayout(this.f243d, new LayoutParams(i, i2, 17));
    }
}
