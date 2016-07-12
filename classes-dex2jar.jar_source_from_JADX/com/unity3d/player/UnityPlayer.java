package com.unity3d.player;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.NativeActivity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Size;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import com.google.android.gms.location.places.Place;
import com.unity3d.player.C0833a.C0829a;
import com.upsight.android.marketing.internal.BaseMarketingModule;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class UnityPlayer extends FrameLayout implements C0829a {
    private static Lock f104D;
    public static Activity currentActivity;
    private static boolean f105p;
    private ProgressBar f106A;
    private Runnable f107B;
    private Runnable f108C;
    C0828b f109a;
    C0864s f110b;
    private boolean f111c;
    private boolean f112d;
    private boolean f113e;
    private final C0845j f114f;
    private final C0865t f115g;
    private boolean f116h;
    private C0867v f117i;
    private final ConcurrentLinkedQueue f118j;
    private BroadcastReceiver f119k;
    private boolean f120l;
    private ContextWrapper f121m;
    private SurfaceView f122n;
    private WindowManager f123o;
    private boolean f124q;
    private boolean f125r;
    private int f126s;
    private int f127t;
    private final C0860r f128u;
    private String f129v;
    private NetworkInfo f130w;
    private Bundle f131x;
    private List f132y;
    private C0869w f133z;

    /* renamed from: com.unity3d.player.UnityPlayer.c */
    private abstract class C0816c implements Runnable {
        final /* synthetic */ UnityPlayer f45f;

        private C0816c(UnityPlayer unityPlayer) {
            this.f45f = unityPlayer;
        }

        public abstract void m46a();

        public final void run() {
            if (!this.f45f.isFinishing()) {
                m46a();
            }
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.10 */
    final class AnonymousClass10 extends C0816c {
        final /* synthetic */ boolean f46a;
        final /* synthetic */ String f47b;
        final /* synthetic */ int f48c;
        final /* synthetic */ UnityPlayer f49d;

        AnonymousClass10(UnityPlayer unityPlayer, boolean z, String str, int i) {
            this.f49d = unityPlayer;
            this.f46a = z;
            this.f47b = str;
            this.f48c = i;
            super((byte) 0);
        }

        public final void m47a() {
            if (this.f46a) {
                this.f49d.nativeSetInputCanceled(true);
            } else if (this.f47b != null) {
                this.f49d.nativeSetInputString(this.f47b);
            }
            if (this.f48c == 1) {
                this.f49d.nativeSoftInputClosed();
            }
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.11 */
    final class AnonymousClass11 extends C0816c {
        final /* synthetic */ int f50a;
        final /* synthetic */ byte[] f51b;
        final /* synthetic */ Size f52c;
        final /* synthetic */ C0833a f53d;
        final /* synthetic */ UnityPlayer f54e;

        AnonymousClass11(UnityPlayer unityPlayer, int i, byte[] bArr, Size size, C0833a c0833a) {
            this.f54e = unityPlayer;
            this.f50a = i;
            this.f51b = bArr;
            this.f52c = size;
            this.f53d = c0833a;
            super((byte) 0);
        }

        public final void m48a() {
            this.f54e.nativeVideoFrameCallback(this.f50a, this.f51b, this.f52c.width, this.f52c.height);
            this.f53d.m112a(this.f51b);
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.12 */
    final class AnonymousClass12 implements Runnable {
        final /* synthetic */ String f55a;
        final /* synthetic */ int f56b;
        final /* synthetic */ int f57c;
        final /* synthetic */ int f58d;
        final /* synthetic */ boolean f59e;
        final /* synthetic */ int f60f;
        final /* synthetic */ int f61g;
        final /* synthetic */ UnityPlayer f62h;

        AnonymousClass12(UnityPlayer unityPlayer, String str, int i, int i2, int i3, boolean z, int i4, int i5) {
            this.f62h = unityPlayer;
            this.f55a = str;
            this.f56b = i;
            this.f57c = i2;
            this.f58d = i3;
            this.f59e = z;
            this.f60f = i4;
            this.f61g = i5;
        }

        public final void run() {
            if (this.f62h.f133z == null) {
                this.f62h.pause();
                this.f62h.f133z = new C0869w(this.f62h, this.f62h.f121m, this.f55a, this.f56b, this.f57c, this.f58d, this.f59e, (long) this.f60f, (long) this.f61g);
                this.f62h.addView(this.f62h.f133z);
                this.f62h.f133z.requestFocus();
                this.f62h.f115g.m181d(this.f62h.f122n);
            }
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.17 */
    final class AnonymousClass17 implements Runnable {
        final /* synthetic */ Semaphore f68a;
        final /* synthetic */ UnityPlayer f69b;

        AnonymousClass17(UnityPlayer unityPlayer, Semaphore semaphore) {
            this.f69b = unityPlayer;
            this.f68a = semaphore;
        }

        public final void run() {
            this.f69b.m80f();
            this.f68a.release();
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.18 */
    final class AnonymousClass18 implements Runnable {
        final /* synthetic */ Semaphore f70a;
        final /* synthetic */ UnityPlayer f71b;

        AnonymousClass18(UnityPlayer unityPlayer, Semaphore semaphore) {
            this.f71b = unityPlayer;
            this.f70a = semaphore;
        }

        public final void run() {
            if (this.f71b.nativePause()) {
                this.f71b.f124q = true;
                this.f71b.m80f();
                this.f70a.release(2);
                return;
            }
            this.f70a.release();
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.1 */
    final class C08181 implements OnClickListener {
        final /* synthetic */ UnityPlayer f73a;

        C08181(UnityPlayer unityPlayer) {
            this.f73a = unityPlayer;
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f73a.m69b();
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.20 */
    final class AnonymousClass20 implements Runnable {
        final /* synthetic */ boolean f74a;
        final /* synthetic */ UnityPlayer f75b;

        AnonymousClass20(UnityPlayer unityPlayer, boolean z) {
            this.f75b = unityPlayer;
            this.f74a = z;
        }

        public final void run() {
            this.f75b.nativeFocusChanged(this.f74a);
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.2 */
    final class C08192 implements Runnable {
        final /* synthetic */ UnityPlayer f76a;

        C08192(UnityPlayer unityPlayer) {
            this.f76a = unityPlayer;
        }

        public final void run() {
            int l = this.f76a.nativeActivityIndicatorStyle();
            if (l >= 0) {
                if (this.f76a.f106A == null) {
                    this.f76a.f106A = new ProgressBar(this.f76a.f121m, null, new int[]{16842874, 16843401, 16842873, 16843400}[l]);
                    this.f76a.f106A.setIndeterminate(true);
                    this.f76a.f106A.setLayoutParams(new LayoutParams(-2, -2, 51));
                    this.f76a.addView(this.f76a.f106A);
                }
                this.f76a.f106A.setVisibility(0);
                this.f76a.bringChildToFront(this.f76a.f106A);
            }
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.3 */
    class C08203 extends BroadcastReceiver {
        final /* synthetic */ UnityPlayer f77a;

        public void onReceive(Context context, Intent intent) {
            this.f77a.m69b();
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.4 */
    final class C08214 implements Runnable {
        final /* synthetic */ UnityPlayer f78a;

        C08214(UnityPlayer unityPlayer) {
            this.f78a = unityPlayer;
        }

        public final void run() {
            if (this.f78a.f106A != null) {
                this.f78a.f106A.setVisibility(8);
                this.f78a.removeView(this.f78a.f106A);
                this.f78a.f106A = null;
            }
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.5 */
    final class C08225 implements Runnable {
        final /* synthetic */ boolean f79a;
        final /* synthetic */ UnityPlayer f80b;

        C08225(UnityPlayer unityPlayer, boolean z) {
            this.f80b = unityPlayer;
            this.f79a = z;
        }

        public final void run() {
            C0859q.f208i.m118a(this.f80b, this.f79a);
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.6 */
    final class C08236 implements Runnable {
        final /* synthetic */ UnityPlayer f81a;
        final /* synthetic */ String f82b;
        final /* synthetic */ int f83c;
        final /* synthetic */ boolean f84d;
        final /* synthetic */ boolean f85e;
        final /* synthetic */ boolean f86f;
        final /* synthetic */ boolean f87g;
        final /* synthetic */ String f88h;
        final /* synthetic */ UnityPlayer f89i;

        C08236(UnityPlayer unityPlayer, UnityPlayer unityPlayer2, String str, int i, boolean z, boolean z2, boolean z3, boolean z4, String str2) {
            this.f89i = unityPlayer;
            this.f81a = unityPlayer2;
            this.f82b = str;
            this.f83c = i;
            this.f84d = z;
            this.f85e = z2;
            this.f86f = z3;
            this.f87g = z4;
            this.f88h = str2;
        }

        public final void run() {
            this.f89i.f110b = new C0864s(this.f89i.f121m, this.f81a, this.f82b, this.f83c, this.f84d, this.f85e, this.f86f, this.f88h);
            this.f89i.f110b.show();
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.7 */
    final class C08247 implements Runnable {
        final /* synthetic */ UnityPlayer f90a;

        C08247(UnityPlayer unityPlayer) {
            this.f90a = unityPlayer;
        }

        public final void run() {
            if (this.f90a.f110b != null) {
                this.f90a.f110b.dismiss();
                this.f90a.f110b = null;
            }
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.8 */
    final class C08258 extends C0816c {
        final /* synthetic */ Runnable f91a;
        final /* synthetic */ UnityPlayer f92b;

        C08258(UnityPlayer unityPlayer, Runnable runnable) {
            this.f92b = unityPlayer;
            this.f91a = runnable;
            super((byte) 0);
        }

        public final void m49a() {
            this.f92b.m97b(this.f91a);
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.9 */
    final class C08269 implements Runnable {
        final /* synthetic */ String f93a;
        final /* synthetic */ UnityPlayer f94b;

        C08269(UnityPlayer unityPlayer, String str) {
            this.f94b = unityPlayer;
            this.f93a = str;
        }

        public final void run() {
            if (this.f94b.f110b != null && this.f93a != null) {
                this.f94b.f110b.m174a(this.f93a);
            }
        }
    }

    /* renamed from: com.unity3d.player.UnityPlayer.a */
    enum C0827a {
        PAUSE,
        RESUME,
        QUIT,
        FOCUS_GAINED,
        FOCUS_LOST
    }

    /* renamed from: com.unity3d.player.UnityPlayer.b */
    private final class C0828b extends Thread {
        ArrayBlockingQueue f101a;
        boolean f102b;
        final /* synthetic */ UnityPlayer f103c;

        C0828b(UnityPlayer unityPlayer) {
            this.f103c = unityPlayer;
            this.f102b = false;
            this.f101a = new ArrayBlockingQueue(32);
        }

        private void m50a(C0827a c0827a) {
            try {
                this.f101a.put(c0827a);
            } catch (InterruptedException e) {
                interrupt();
            }
        }

        public final void m51a() {
            m50a(C0827a.QUIT);
        }

        public final void m52a(boolean z) {
            m50a(z ? C0827a.FOCUS_GAINED : C0827a.FOCUS_LOST);
        }

        public final void m53b() {
            m50a(C0827a.RESUME);
        }

        public final void m54c() {
            m50a(C0827a.PAUSE);
        }

        public final void run() {
            setName("UnityMain");
            while (true) {
                try {
                    C0827a c0827a = (C0827a) this.f101a.take();
                    if (c0827a != C0827a.QUIT) {
                        if (c0827a == C0827a.RESUME) {
                            this.f102b = true;
                        } else if (c0827a == C0827a.PAUSE) {
                            this.f102b = false;
                            this.f103c.executeGLThreadJobs();
                        } else if (c0827a == C0827a.FOCUS_LOST && !this.f102b) {
                            this.f103c.executeGLThreadJobs();
                        }
                        if (this.f102b) {
                            do {
                                this.f103c.executeGLThreadJobs();
                                if (this.f101a.peek() != null) {
                                    break;
                                } else if (!(this.f103c.isFinishing() || this.f103c.nativeRender())) {
                                    this.f103c.m69b();
                                }
                            } while (!C0828b.interrupted());
                        }
                    } else {
                        return;
                    }
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    }

    static {
        currentActivity = null;
        new C0866u().m182a();
        f105p = false;
        f105p = loadLibraryStatic(BaseMarketingModule.SCHEDULER_MAIN);
        f104D = new ReentrantLock();
    }

    public UnityPlayer(ContextWrapper contextWrapper) {
        super(contextWrapper);
        this.f111c = false;
        this.f112d = false;
        this.f113e = true;
        this.f116h = false;
        this.f117i = new C0867v();
        this.f118j = new ConcurrentLinkedQueue();
        this.f119k = null;
        this.f120l = false;
        this.f109a = new C0828b(this);
        this.f125r = true;
        this.f126s = 0;
        this.f127t = 0;
        this.f129v = null;
        this.f130w = null;
        this.f131x = new Bundle();
        this.f132y = new ArrayList();
        this.f110b = null;
        this.f106A = null;
        this.f107B = new C08192(this);
        this.f108C = new C08214(this);
        if (contextWrapper instanceof Activity) {
            currentActivity = (Activity) contextWrapper;
        }
        this.f115g = new C0865t(this);
        this.f121m = contextWrapper;
        this.f114f = contextWrapper instanceof Activity ? new C0858p(contextWrapper) : null;
        this.f128u = new C0860r(contextWrapper, this);
        m58a();
        if (C0859q.f200a) {
            C0859q.f208i.m117a((View) this);
        }
        setFullscreen(true);
        m60a(this.f121m.getApplicationInfo());
        if (C0867v.m185c()) {
            initJni(contextWrapper);
            nativeFile(this.f121m.getPackageCodePath());
            m87j();
            this.f122n = new SurfaceView(contextWrapper);
            this.f122n.getHolder().setFormat(2);
            this.f122n.getHolder().addCallback(new Callback() {
                final /* synthetic */ UnityPlayer f63a;

                {
                    this.f63a = r1;
                }

                public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                    this.f63a.m59a(0, surfaceHolder.getSurface());
                }

                public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                    this.f63a.m59a(0, surfaceHolder.getSurface());
                }

                public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                    this.f63a.m59a(0, null);
                }
            });
            this.f122n.setFocusable(true);
            this.f122n.setFocusableInTouchMode(true);
            this.f115g.m180c(this.f122n);
            this.f124q = false;
            m73c();
            nativeInitWWW(WWW.class);
            nativeInitWebRequest(UnityWebRequest.class);
            if (C0859q.f204e) {
                C0859q.f211l.m129a(this, this.f121m);
            }
            if (C0859q.f207h) {
                if (currentActivity != null) {
                    C0859q.f212m.m133a(currentActivity, new Runnable() {
                        final /* synthetic */ UnityPlayer f66a;

                        /* renamed from: com.unity3d.player.UnityPlayer.15.1 */
                        final class C08171 implements Runnable {
                            final /* synthetic */ AnonymousClass15 f65a;

                            C08171(AnonymousClass15 anonymousClass15) {
                                this.f65a = anonymousClass15;
                            }

                            public final void run() {
                                this.f65a.f66a.f117i.m189d();
                                this.f65a.f66a.m82g();
                            }
                        }

                        {
                            this.f66a = r1;
                        }

                        public final void run() {
                            this.f66a.m97b(new C08171(this));
                        }
                    });
                } else {
                    this.f117i.m189d();
                }
            }
            if (C0859q.f203d) {
                C0859q.f210k.m132a(this);
            }
            this.f123o = (WindowManager) this.f121m.getSystemService("window");
            m89k();
            this.f109a.start();
            return;
        }
        AlertDialog create = new Builder(this.f121m).setTitle("Failure to initialize!").setPositiveButton("OK", new C08181(this)).setMessage("Your hardware does not support this application, sorry!").create();
        create.setCancelable(false);
        create.show();
    }

    public static native void UnitySendMessage(String str, String str2, String str3);

    private static String m57a(String str) {
        byte[] digest;
        int i = 0;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(str);
            long length = new File(str).length();
            fileInputStream.skip(length - Math.min(length, 65558));
            byte[] bArr = new byte[Place.TYPE_SUBLOCALITY_LEVEL_2];
            for (int i2 = 0; i2 != -1; i2 = fileInputStream.read(bArr)) {
                instance.update(bArr, 0, i2);
            }
            digest = instance.digest();
        } catch (FileNotFoundException e) {
            digest = null;
        } catch (IOException e2) {
            digest = null;
        } catch (NoSuchAlgorithmException e3) {
            digest = null;
        }
        if (digest == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (i < digest.length) {
            stringBuffer.append(Integer.toString((digest[i] & MotionEventCompat.ACTION_MASK) + AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, 16).substring(1));
            i++;
        }
        return stringBuffer.toString();
    }

    private void m58a() {
        try {
            File file = new File(this.f121m.getPackageCodePath(), "assets/bin/Data/settings.xml");
            InputStream fileInputStream = file.exists() ? new FileInputStream(file) : this.f121m.getAssets().open("bin/Data/settings.xml");
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            XmlPullParser newPullParser = newInstance.newPullParser();
            newPullParser.setInput(fileInputStream, null);
            String str = null;
            int eventType = newPullParser.getEventType();
            String str2 = null;
            while (eventType != 1) {
                String name;
                String str3;
                if (eventType == 2) {
                    name = newPullParser.getName();
                    str3 = str;
                    str2 = str3;
                    for (int i = 0; i < newPullParser.getAttributeCount(); i++) {
                        if (newPullParser.getAttributeName(i).equalsIgnoreCase(Twitter.NAME)) {
                            str2 = newPullParser.getAttributeValue(i);
                        }
                    }
                    str3 = name;
                    name = str2;
                    str2 = str3;
                } else if (eventType == 3) {
                    str2 = null;
                    name = str;
                } else if (eventType != 4 || str == null) {
                    name = str;
                } else {
                    if (str2.equalsIgnoreCase("integer")) {
                        this.f131x.putInt(str, Integer.parseInt(newPullParser.getText()));
                    } else if (str2.equalsIgnoreCase("string")) {
                        this.f131x.putString(str, newPullParser.getText());
                    } else if (str2.equalsIgnoreCase("bool")) {
                        this.f131x.putBoolean(str, Boolean.parseBoolean(newPullParser.getText()));
                    } else if (str2.equalsIgnoreCase("float")) {
                        this.f131x.putFloat(str, Float.parseFloat(newPullParser.getText()));
                    }
                    name = null;
                }
                str3 = name;
                eventType = newPullParser.next();
                str = str3;
            }
        } catch (Exception e) {
            C0853m.Log(6, "Unable to locate player settings. " + e.getLocalizedMessage());
            m69b();
        }
    }

    private void m59a(int i, Surface surface) {
        if (!this.f111c) {
            m71b(0, surface);
        }
    }

    private static void m60a(ApplicationInfo applicationInfo) {
        if (f105p && NativeLoader.load(applicationInfo.nativeLibraryDir)) {
            C0867v.m183a();
        }
    }

    private void m61a(C0816c c0816c) {
        if (!isFinishing()) {
            m74c((Runnable) c0816c);
        }
    }

    static void m66a(Runnable runnable) {
        new Thread(runnable).start();
    }

    private static String[] m68a(Context context) {
        String packageName = context.getPackageName();
        Vector vector = new Vector();
        try {
            int i = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
            if (Environment.getExternalStorageState().equals("mounted")) {
                File file = new File(Environment.getExternalStorageDirectory().toString() + "/Android/obb/" + packageName);
                if (file.exists()) {
                    if (i > 0) {
                        String str = file + File.separator + "main." + i + "." + packageName + ".obb";
                        if (new File(str).isFile()) {
                            vector.add(str);
                        }
                    }
                    if (i > 0) {
                        packageName = file + File.separator + "patch." + i + "." + packageName + ".obb";
                        if (new File(packageName).isFile()) {
                            vector.add(packageName);
                        }
                    }
                }
            }
            String[] strArr = new String[vector.size()];
            vector.toArray(strArr);
            return strArr;
        } catch (NameNotFoundException e) {
            return new String[0];
        }
    }

    private void m69b() {
        if ((this.f121m instanceof Activity) && !((Activity) this.f121m).isFinishing()) {
            ((Activity) this.f121m).finish();
        }
    }

    private boolean m71b(int i, Surface surface) {
        if (!C0867v.m185c()) {
            return false;
        }
        nativeRecreateGfxState(i, surface);
        return true;
    }

    private void m73c() {
        C0856o c0856o = new C0856o((Activity) this.f121m);
        if (this.f121m instanceof NativeActivity) {
            boolean a = c0856o.m149a();
            this.f120l = a;
            nativeForwardEventsToDalvik(a);
        }
    }

    private void m74c(Runnable runnable) {
        if (!C0867v.m185c()) {
            return;
        }
        if (Thread.currentThread() == this.f109a) {
            runnable.run();
        } else {
            this.f118j.add(runnable);
        }
    }

    private void m75d() {
        for (C0833a c : this.f132y) {
            c.m114c();
        }
    }

    private void m77e() {
        for (C0833a c0833a : this.f132y) {
            try {
                c0833a.m111a((C0829a) this);
            } catch (Exception e) {
                C0853m.Log(6, "Unable to initialize camera: " + e.getMessage());
                c0833a.m114c();
            }
        }
    }

    private void m80f() {
        nativeDone();
    }

    private void m82g() {
        if (!this.f117i.m191f()) {
            return;
        }
        if (this.f133z != null) {
            this.f133z.onResume();
            return;
        }
        this.f117i.m188c(true);
        m77e();
        this.f128u.m166e();
        this.f129v = null;
        this.f130w = null;
        if (C0867v.m185c()) {
            m87j();
        }
        m74c(new Runnable() {
            final /* synthetic */ UnityPlayer f72a;

            {
                this.f72a = r1;
            }

            public final void run() {
                this.f72a.nativeResume();
            }
        });
        this.f109a.m53b();
    }

    private static void m83h() {
        if (C0867v.m185c()) {
            lockNativeAccess();
            if (NativeLoader.unload()) {
                C0867v.m184b();
                unlockNativeAccess();
                return;
            }
            unlockNativeAccess();
            throw new UnsatisfiedLinkError("Unable to unload libraries from libmain.so");
        }
    }

    private boolean m85i() {
        return this.f121m.getPackageManager().hasSystemFeature("android.hardware.camera") || this.f121m.getPackageManager().hasSystemFeature("android.hardware.camera.front");
    }

    private final native void initJni(Context context);

    private void m87j() {
        if (this.f131x.getBoolean("useObb")) {
            for (String str : m68a(this.f121m)) {
                String a = m57a(str);
                if (this.f131x.getBoolean(a)) {
                    nativeFile(str);
                }
                this.f131x.remove(a);
            }
        }
    }

    private void m89k() {
        if (this.f121m instanceof Activity) {
            ((Activity) this.f121m).getWindow().setFlags(Place.TYPE_SUBLOCALITY_LEVEL_2, Place.TYPE_SUBLOCALITY_LEVEL_2);
        }
    }

    protected static boolean loadLibraryStatic(String str) {
        try {
            System.loadLibrary(str);
            return true;
        } catch (UnsatisfiedLinkError e) {
            C0853m.Log(6, "Unable to find " + str);
            return false;
        } catch (Exception e2) {
            C0853m.Log(6, "Unknown error " + e2);
            return false;
        }
    }

    protected static void lockNativeAccess() {
        f104D.lock();
    }

    private final native int nativeActivityIndicatorStyle();

    private final native void nativeDone();

    private final native void nativeFile(String str);

    private final native void nativeFocusChanged(boolean z);

    private final native void nativeInitWWW(Class cls);

    private final native void nativeInitWebRequest(Class cls);

    private final native boolean nativeInjectEvent(InputEvent inputEvent);

    private final native boolean nativePause();

    private final native void nativeRecreateGfxState(int i, Surface surface);

    private final native boolean nativeRender();

    private final native void nativeResume();

    private final native void nativeSetExtras(Bundle bundle);

    private final native void nativeSetInputCanceled(boolean z);

    private final native void nativeSetInputString(String str);

    private final native void nativeSetTouchDeltaY(float f);

    private final native void nativeSoftInputClosed();

    private final native void nativeVideoFrameCallback(int i, byte[] bArr, int i2, int i3);

    protected static void unlockNativeAccess() {
        f104D.unlock();
    }

    protected boolean Location_IsServiceEnabledByUser() {
        return this.f128u.m161a();
    }

    protected void Location_SetDesiredAccuracy(float f) {
        this.f128u.m163b(f);
    }

    protected void Location_SetDistanceFilter(float f) {
        this.f128u.m160a(f);
    }

    protected void Location_StartUpdatingLocation() {
        this.f128u.m162b();
    }

    protected void Location_StopUpdatingLocation() {
        this.f128u.m164c();
    }

    final void m97b(Runnable runnable) {
        if (this.f121m instanceof Activity) {
            ((Activity) this.f121m).runOnUiThread(runnable);
        } else {
            C0853m.Log(5, "Not running Unity from an Activity; ignored...");
        }
    }

    protected void closeCamera(int i) {
        for (C0833a c0833a : this.f132y) {
            if (c0833a.m110a() == i) {
                c0833a.m114c();
                this.f132y.remove(c0833a);
                return;
            }
        }
    }

    public void configurationChanged(Configuration configuration) {
        if (this.f122n instanceof SurfaceView) {
            this.f122n.getHolder().setSizeFromLayout();
        }
        if (this.f133z != null) {
            this.f133z.updateVideoLayout();
        }
    }

    protected void disableLogger() {
        C0853m.f190a = true;
    }

    public boolean displayChanged(int i, Surface surface) {
        if (i == 0) {
            this.f111c = surface != null;
            m97b(new Runnable() {
                final /* synthetic */ UnityPlayer f67a;

                {
                    this.f67a = r1;
                }

                public final void run() {
                    if (this.f67a.f111c) {
                        this.f67a.f115g.m181d(this.f67a.f122n);
                    } else {
                        this.f67a.f115g.m180c(this.f67a.f122n);
                    }
                }
            });
        }
        return m71b(i, surface);
    }

    protected void executeGLThreadJobs() {
        while (true) {
            Runnable runnable = (Runnable) this.f118j.poll();
            if (runnable != null) {
                runnable.run();
            } else {
                return;
            }
        }
    }

    protected void forwardMotionEventToDalvik(long j, long j2, int i, int i2, int[] iArr, float[] fArr, int i3, float f, float f2, int i4, int i5, int i6, int i7, int i8, long[] jArr, float[] fArr2) {
        this.f114f.m134a(j, j2, i, i2, iArr, fArr, i3, f, f2, i4, i5, i6, i7, i8, jArr, fArr2);
    }

    protected int getCameraOrientation(int i) {
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        return cameraInfo.orientation;
    }

    protected int getNumCameras() {
        return !m85i() ? 0 : Camera.getNumberOfCameras();
    }

    public Bundle getSettings() {
        return this.f131x;
    }

    protected int getSplashMode() {
        return this.f131x.getInt("splash_mode");
    }

    public View getView() {
        return this;
    }

    protected void hideSoftInput() {
        Runnable c08247 = new C08247(this);
        if (C0859q.f206g) {
            m61a(new C08258(this, c08247));
        } else {
            m97b(c08247);
        }
    }

    protected void hideVideoPlayer() {
        m97b(new Runnable() {
            final /* synthetic */ UnityPlayer f64a;

            {
                this.f64a = r1;
            }

            public final void run() {
                if (this.f64a.f133z != null) {
                    this.f64a.f115g.m180c(this.f64a.f122n);
                    this.f64a.removeView(this.f64a.f133z);
                    this.f64a.f133z = null;
                    this.f64a.resume();
                }
            }
        });
    }

    public void init(int i, boolean z) {
    }

    protected int[] initCamera(int i, int i2, int i3, int i4) {
        C0833a c0833a = new C0833a(i, i2, i3, i4);
        try {
            c0833a.m111a((C0829a) this);
            this.f132y.add(c0833a);
            Size b = c0833a.m113b();
            return new int[]{b.width, b.height};
        } catch (Exception e) {
            C0853m.Log(6, "Unable to initialize camera: " + e.getMessage());
            c0833a.m114c();
            return null;
        }
    }

    public boolean injectEvent(InputEvent inputEvent) {
        return nativeInjectEvent(inputEvent);
    }

    protected boolean installPresentationDisplay(int i) {
        return C0859q.f204e ? C0859q.f211l.m130a(this, this.f121m, i) : false;
    }

    protected boolean isCameraFrontFacing(int i) {
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        return cameraInfo.facing == 1;
    }

    protected boolean isFinishing() {
        if (!this.f124q) {
            boolean z = (this.f121m instanceof Activity) && ((Activity) this.f121m).isFinishing();
            this.f124q = z;
            if (!z) {
                return false;
            }
        }
        return true;
    }

    protected void kill() {
        Process.killProcess(Process.myPid());
    }

    protected boolean loadLibrary(String str) {
        return loadLibraryStatic(str);
    }

    protected final native void nativeAddVSyncTime(long j);

    final native void nativeForwardEventsToDalvik(boolean z);

    protected native void nativeSetLocation(float f, float f2, float f3, float f4, double d, float f5);

    protected native void nativeSetLocationStatus(int i);

    public void onCameraFrame(C0833a c0833a, byte[] bArr) {
        m61a(new AnonymousClass11(this, c0833a.m110a(), bArr, c0833a.m113b(), c0833a));
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return injectEvent(motionEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return injectEvent(motionEvent);
    }

    public void pause() {
        if (this.f133z != null) {
            this.f133z.onPause();
            return;
        }
        reportSoftInputStr(null, 1, true);
        if (this.f117i.m192g()) {
            if (C0867v.m185c()) {
                Semaphore semaphore = new Semaphore(0);
                if (isFinishing()) {
                    m74c(new AnonymousClass17(this, semaphore));
                } else {
                    m74c(new AnonymousClass18(this, semaphore));
                }
                try {
                    if (!semaphore.tryAcquire(4, TimeUnit.SECONDS)) {
                        C0853m.Log(5, "Timeout while trying to pause the Unity Engine.");
                    }
                } catch (InterruptedException e) {
                    C0853m.Log(5, "UI thread got interrupted while trying to pause the Unity Engine.");
                }
                if (semaphore.drainPermits() > 0) {
                    quit();
                }
            }
            this.f117i.m188c(false);
            this.f117i.m187b(true);
            m75d();
            this.f109a.m54c();
            this.f128u.m165d();
        }
    }

    public void quit() {
        this.f124q = true;
        if (!this.f117i.m190e()) {
            pause();
        }
        this.f109a.m51a();
        try {
            this.f109a.join(4000);
        } catch (InterruptedException e) {
            this.f109a.interrupt();
        }
        if (this.f119k != null) {
            this.f121m.unregisterReceiver(this.f119k);
        }
        this.f119k = null;
        if (C0867v.m185c()) {
            removeAllViews();
        }
        if (C0859q.f204e) {
            C0859q.f211l.m128a(this.f121m);
        }
        if (C0859q.f203d) {
            C0859q.f210k.m131a();
        }
        kill();
        m83h();
    }

    protected void reportSoftInputStr(String str, int i, boolean z) {
        if (i == 1) {
            hideSoftInput();
        }
        m61a(new AnonymousClass10(this, z, str, i));
    }

    public void resume() {
        if (C0859q.f200a) {
            C0859q.f208i.m120b(this);
        }
        this.f117i.m187b(false);
        m82g();
    }

    protected void setFullscreen(boolean z) {
        this.f113e = z;
        if (C0859q.f200a) {
            m97b(new C08225(this, z));
        }
    }

    protected void setSoftInputStr(String str) {
        m97b(new C08269(this, str));
    }

    protected void showSoftInput(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, String str2) {
        m97b(new C08236(this, this, str, i, z, z2, z3, z4, str2));
    }

    protected void showVideoPlayer(String str, int i, int i2, int i3, boolean z, int i4, int i5) {
        m97b(new AnonymousClass12(this, str, i, i2, i3, z, i4, i5));
    }

    protected void startActivityIndicator() {
        m97b(this.f107B);
    }

    protected void stopActivityIndicator() {
        m97b(this.f108C);
    }

    public void windowFocusChanged(boolean z) {
        this.f117i.m186a(z);
        if (z && this.f110b != null) {
            reportSoftInputStr(null, 1, false);
        }
        if (C0859q.f200a && z) {
            C0859q.f208i.m120b(this);
        }
        m74c(new AnonymousClass20(this, z));
        this.f109a.m52a(z);
        m82g();
    }
}
