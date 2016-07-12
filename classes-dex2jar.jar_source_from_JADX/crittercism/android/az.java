package crittercism.android;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.MessageQueue.IdleHandler;
import android.os.Process;
import com.crittercism.app.CritterRateMyAppButtons;
import com.crittercism.app.CrittercismConfig;
import com.crittercism.app.Transaction;
import com.crittercism.integrations.PluginException;
import crittercism.android.C1060c.C1059a;
import crittercism.android.bx.C1037f;
import crittercism.android.bx.C1046o;
import crittercism.android.bx.C1047p;
import crittercism.android.cs.C1065b;
import crittercism.android.ct.C1066a;
import crittercism.android.cu.C1067a;
import crittercism.android.da.C1069a;
import java.lang.Thread.UncaughtExceptionHandler;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

public final class az implements au, aw, ax, C1017f {
    static az f358a;
    public dt f359A;
    int f360B;
    public boolean f361C;
    private String f362D;
    private bs f363E;
    private bs f364F;
    private C1081g f365G;
    private at f366H;
    private boolean f367I;
    private String f368J;
    public boolean f369b;
    public Context f370c;
    public final ConditionVariable f371d;
    public final ConditionVariable f372e;
    public dw f373f;
    bs f374g;
    bs f375h;
    bs f376i;
    bs f377j;
    bs f378k;
    bs f379l;
    bs f380m;
    bs f381n;
    bs f382o;
    cv f383p;
    public dg f384q;
    ExecutorService f385r;
    public ExecutorService f386s;
    public boolean f387t;
    public bb f388u;
    protected C1078e f389v;
    public dr f390w;
    dv f391x;
    public bi f392y;
    public Map f393z;

    /* renamed from: crittercism.android.az.10 */
    final class AnonymousClass10 implements OnClickListener {
        final /* synthetic */ String f334a;
        final /* synthetic */ az f335b;

        AnonymousClass10(az azVar, String str) {
            this.f335b = azVar;
            this.f334a = str;
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            try {
                az.m375A().m391a(this.f334a);
            } catch (Exception e) {
                dx.m757c("YES button failed.  Email support@crittercism.com.");
            }
        }
    }

    /* renamed from: crittercism.android.az.1 */
    public final class C10071 extends di {
        final /* synthetic */ az f338a;

        public C10071(az azVar) {
            this.f338a = azVar;
        }

        public final void m366a() {
            if (!this.f338a.f373f.m747b()) {
                ch chVar = this.f338a.f384q.f716b;
                if (chVar != null) {
                    this.f338a.f374g.m552a(chVar);
                }
                df dfVar = new df(this.f338a.f370c);
                dfVar.m700a(this.f338a.f374g, new C1066a(), this.f338a.f388u.m445e(), "/v0/appload", this.f338a.f388u.m442b(), az.f358a, new C1065b());
                dfVar.m700a(this.f338a.f375h, new C1069a(), this.f338a.f388u.m442b(), "/android_v2/handle_exceptions", null, az.f358a, new C1067a());
                dfVar.m700a(this.f338a.f376i, new C1069a(), this.f338a.f388u.m442b(), "/android_v2/handle_ndk_crashes", null, az.f358a, new C1067a());
                dfVar.m700a(this.f338a.f377j, new C1069a(), this.f338a.f388u.m442b(), "/android_v2/handle_crashes", null, az.f358a, new C1067a());
                dfVar.m701a(this.f338a.f384q, this.f338a.f385r);
            }
        }
    }

    /* renamed from: crittercism.android.az.2 */
    final class C10082 extends di {
        final /* synthetic */ az f339a;
        final /* synthetic */ JSONObject f340b;
        final /* synthetic */ az f341c;

        C10082(az azVar, az azVar2, JSONObject jSONObject) {
            this.f341c = azVar;
            this.f339a = azVar2;
            this.f340b = jSONObject;
        }

        public final void m367a() {
            if (!this.f339a.f373f.m747b()) {
                this.f339a.f391x.m742a(this.f340b);
                if (this.f339a.f391x.m744b()) {
                    this.f339a.m382E();
                }
            }
        }
    }

    /* renamed from: crittercism.android.az.3 */
    final class C10093 extends di {
        final /* synthetic */ az f342a;
        final /* synthetic */ az f343b;

        C10093(az azVar, az azVar2) {
            this.f343b = azVar;
            this.f342a = azVar2;
        }

        public final void m368a() {
            if (!this.f342a.f373f.m747b()) {
                cw cuVar = new cu(this.f342a);
                cuVar.f696a.put("metadata", this.f342a.f391x.m741a());
                new dj(cuVar, new dc(new db(this.f343b.f388u.m442b(), "/android_v2/update_user_metadata").m695a()), new dd(this.f342a.f391x)).run();
            }
        }
    }

    /* renamed from: crittercism.android.az.4 */
    public static final /* synthetic */ class C10104 {
        public static final /* synthetic */ int[] f344a;

        static {
            f344a = new int[CritterRateMyAppButtons.values().length];
            try {
                f344a[CritterRateMyAppButtons.YES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f344a[CritterRateMyAppButtons.NO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f344a[CritterRateMyAppButtons.LATER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: crittercism.android.az.5 */
    final class C10115 extends di {
        final /* synthetic */ Throwable f345a;
        final /* synthetic */ long f346b;
        final /* synthetic */ az f347c;

        C10115(az azVar, Throwable th, long j) {
            this.f347c = azVar;
            this.f345a = th;
            this.f346b = j;
        }

        public final void m369a() {
            if (!this.f347c.f373f.m747b()) {
                synchronized (this.f347c.f383p) {
                    if (this.f347c.f360B < 10) {
                        bk bkVar = new bk(this.f345a, this.f346b);
                        bkVar.m521a("current_session", this.f347c.f378k);
                        bkVar.m519a(this.f347c.f379l);
                        bkVar.f482f = "he";
                        if (this.f347c.f383p.m690a()) {
                            new dj(new cu(az.f358a).m687a(br.HAND_EXCS.m540f(), new JSONArray().put(bkVar.m523b())), new dc(new db(this.f347c.f388u.m442b(), "/android_v2/handle_exceptions").m695a()), null).run();
                            az azVar = this.f347c;
                            azVar.f360B++;
                            this.f347c.f383p.m691b();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: crittercism.android.az.6 */
    final class C10126 extends di {
        final /* synthetic */ Throwable f348a;
        final /* synthetic */ long f349b;
        final /* synthetic */ az f350c;

        C10126(az azVar, Throwable th, long j) {
            this.f350c = azVar;
            this.f348a = th;
            this.f349b = j;
        }

        public final void m370a() {
            if (!this.f350c.f373f.m747b()) {
                ch bkVar = new bk(this.f348a, this.f349b);
                bkVar.m521a("current_session", this.f350c.f378k);
                bkVar.f482f = "he";
                if (this.f350c.f375h.m552a(bkVar)) {
                    az.f358a.m389a(new by(bkVar.f479c, bkVar.f480d));
                    if (this.f350c.f383p.m690a()) {
                        df dfVar = new df(this.f350c.f370c);
                        dfVar.m700a(this.f350c.f375h, new C1069a(), this.f350c.f388u.m442b(), "/android_v2/handle_exceptions", null, az.f358a, new C1067a());
                        dfVar.m701a(this.f350c.f384q, this.f350c.f385r);
                        this.f350c.f383p.m691b();
                    }
                }
            }
        }
    }

    /* renamed from: crittercism.android.az.7 */
    public final class C10137 extends di {
        final /* synthetic */ cf f351a;
        final /* synthetic */ az f352b;

        public C10137(az azVar, cf cfVar) {
            this.f352b = azVar;
            this.f351a = cfVar;
        }

        public final void m371a() {
            this.f352b.f378k.m552a(this.f351a);
        }
    }

    /* renamed from: crittercism.android.az.8 */
    final class C10148 extends di {
        final /* synthetic */ C1060c f353a;
        final /* synthetic */ az f354b;

        C10148(az azVar, C1060c c1060c) {
            this.f354b = azVar;
            this.f353a = c1060c;
        }

        public final void m372a() {
            this.f354b.f379l.m552a(this.f353a);
        }
    }

    /* renamed from: crittercism.android.az.9 */
    final class C10159 extends di {
        final /* synthetic */ ci f355a;
        final /* synthetic */ az f356b;

        C10159(az azVar, ci ciVar) {
            this.f356b = azVar;
            this.f355a = ciVar;
        }

        public final void m373a() {
            this.f356b.f380m.m552a(this.f355a);
        }
    }

    /* renamed from: crittercism.android.az.a */
    static final class C1016a implements IdleHandler {
        private boolean f357a;

        private C1016a() {
            this.f357a = false;
        }

        public final boolean queueIdle() {
            synchronized (this) {
                if (!this.f357a) {
                    this.f357a = true;
                    bg.m479g();
                }
            }
            return true;
        }
    }

    protected az() {
        this.f369b = false;
        this.f370c = null;
        this.f362D = null;
        this.f371d = new ConditionVariable(false);
        this.f372e = new ConditionVariable(false);
        this.f373f = new dw();
        this.f383p = null;
        this.f384q = null;
        this.f365G = null;
        this.f385r = Executors.newCachedThreadPool(new dz());
        this.f386s = Executors.newSingleThreadExecutor(new dz());
        this.f367I = false;
        this.f387t = false;
        this.f368J = BuildConfig.FLAVOR;
        this.f391x = null;
        this.f393z = new HashMap();
        this.f359A = null;
        this.f360B = 0;
        this.f361C = false;
        this.f389v = new C1078e(this.f386s);
    }

    public static az m375A() {
        if (f358a == null) {
            f358a = new az();
        }
        return f358a;
    }

    private static boolean m376F() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (stackTraceElement.getMethodName().equals("onCreate") || stackTraceElement.getMethodName().equals("onResume")) {
                return true;
            }
        }
        return false;
    }

    private void m377G() {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) this.f370c.getSystemService("activity");
        int i = 0;
        for (RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            i = runningAppProcessInfo.uid == myUid ? i + 1 : i;
        }
        if (i <= 1) {
            this.f387t = false;
            return;
        }
        for (RunningServiceInfo runningServiceInfo : activityManager.getRunningServices(Integer.MAX_VALUE)) {
            if (runningServiceInfo.pid == myPid) {
                this.f387t = true;
                return;
            }
        }
    }

    private String m378H() {
        try {
            if (this.f368J == null || this.f368J.equals(BuildConfig.FLAVOR)) {
                this.f368J = this.f370c.getPackageName();
            }
        } catch (Exception e) {
            dx.m757c("Call to getPackageName() failed.  Please contact us at support@crittercism.com.");
            this.f368J = new String();
        }
        return this.f368J;
    }

    public final boolean m379B() {
        this.f371d.block();
        return this.f373f.m747b();
    }

    public final void m380C() {
        dt dtVar = this.f359A;
        if (this.f359A != null) {
            this.f359A.m737d();
        }
    }

    public final String m381D() {
        PackageManager packageManager = this.f370c.getPackageManager();
        String H = m378H();
        if (H == null || H.length() <= 0) {
            return null;
        }
        dn a = dp.m725a(packageManager.getInstallerPackageName(H));
        if (a != null) {
            return a.m720a(H).m719a();
        }
        dx.m757c("Could not find app market for this app.  Will try rate-my-app test target in config.");
        return this.f388u.getRateMyAppTestTarget();
    }

    public final void m382E() {
        if (!this.f387t) {
            Runnable c10093 = new C10093(this, this);
            if (!this.f384q.m708a(c10093)) {
                this.f385r.execute(c10093);
            }
        }
    }

    public final AlertDialog m383a(Context context, String str, String str2) {
        AlertDialog alertDialog = null;
        Object obj = null;
        if (this.f373f.m747b()) {
            dx.m754b("User has opted out of crittercism.  generateRateMyAppAlertDialog returning null.");
        } else if (!(context instanceof Activity)) {
            dx.m754b("Context object must be an instance of Activity for AlertDialog to form correctly.  generateRateMyAppAlertDialog returning null.");
        } else if (str2 == null || (str2 != null && str2.length() == 0)) {
            dx.m754b("Message has to be a non-empty string.  generateRateMyAppAlertDialog returning null.");
        } else if (VERSION.SDK_INT < 5) {
            dx.m754b("Rate my app not supported below api level 5");
        } else {
            obj = 1;
        }
        if (obj != null) {
            String D = m381D();
            if (D == null) {
                dx.m754b("Cannot create proper URI to open app market.  Returning null.");
            } else {
                Builder builder = new Builder(context);
                builder.setTitle(str).setMessage(str2);
                try {
                    alertDialog = builder.create();
                    alertDialog.setButton(-1, "Yes", new AnonymousClass10(this, D));
                    alertDialog.setButton(-2, "No", new OnClickListener() {
                        final /* synthetic */ az f336a;

                        {
                            this.f336a = r1;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                az.m375A().m380C();
                            } catch (Exception e) {
                                dx.m757c("NO button failed.  Email support@crittercism.com.");
                            }
                        }
                    });
                    alertDialog.setButton(-3, "Maybe Later", new OnClickListener() {
                        final /* synthetic */ az f337a;

                        {
                            this.f337a = r1;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                az.m375A();
                            } catch (Exception e) {
                                dx.m757c("MAYBE LATER button failed.  Email support@crittercism.com.");
                            }
                        }
                    });
                } catch (Exception e) {
                    dx.m754b("Failed to create AlertDialog instance from AlertDialog.Builder.  Did you remember to call Looper.prepare() before calling Crittercism.generateRateMyAppAlertDialog()?");
                }
            }
        }
        return alertDialog;
    }

    public final String m384a() {
        String str = this.f362D;
        return str == null ? BuildConfig.FLAVOR : str;
    }

    public final String m385a(String str, String str2) {
        SharedPreferences sharedPreferences = this.f370c.getSharedPreferences(str, 0);
        return sharedPreferences != null ? sharedPreferences.getString(str2, null) : null;
    }

    public final void m386a(Context context, String str, CrittercismConfig crittercismConfig) {
        dx.m750a("Initializing Crittercism 5.0.8 for App ID " + str);
        bn bnVar = new bn(str);
        this.f362D = str;
        this.f388u = new bb(bnVar, crittercismConfig);
        this.f370c = context;
        this.f366H = new at(this.f370c, this.f388u);
        this.f368J = context.getPackageName();
        this.f390w = new dr(context);
        m377G();
        long j = 60000000000L;
        if (this.f387t) {
            j = 12000000000L;
        }
        this.f383p = new cv(j);
        if (!m376F()) {
            dx.m757c("Crittercism should be initialized in onCreate() of MainActivity");
        }
        bx.m619a(this.f366H);
        bx.m618a(this.f370c);
        bx.m621a(new cc());
        bx.m620a(new bf(this.f370c, this.f388u));
        try {
            this.f389v.m763a(this.f388u.m441a());
            this.f389v.m764b(this.f388u.getPreserveQueryStringPatterns());
            this.f365G = new C1081g(this, new URL(this.f388u.m443c() + "/api/apm/network"));
            this.f389v.m762a(this.f365G);
            this.f389v.m762a((C1017f) this);
            new dy(this.f365G, "OPTMZ").start();
            if (!C1082h.m780a(this.f370c).exists() && this.f388u.isServiceMonitoringEnabled()) {
                this.f367I = new C1085i(this.f389v, new C1068d(this.f370c)).m791a();
                new StringBuilder("installedApm = ").append(this.f367I);
                dx.m753b();
            }
        } catch (Exception e) {
            new StringBuilder("Exception in startApm: ").append(e.getClass().getName());
            dx.m753b();
            dx.m756c();
        }
        this.f384q = new dg(this.f388u, context, this, this, this);
        if (!this.f387t) {
            dx.m749a(new ec(this, this.f386s, this.f384q, this.f373f));
        }
        UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(defaultUncaughtExceptionHandler instanceof ay)) {
            Thread.setDefaultUncaughtExceptionHandler(new ay(this, defaultUncaughtExceptionHandler));
        }
        if (VERSION.SDK_INT < 14) {
            dx.m750a("API Level is less than 14. Automatic breadcrumbs are not supported.");
        } else if (this.f370c instanceof Application) {
            dx.m753b();
            ((Application) this.f370c).registerActivityLifecycleCallbacks(new av(this.f370c, this));
        } else {
            dx.m757c("Application context not provided. Automatic breadcrumbs will not be recorded.");
        }
        if (!this.f387t) {
            bg.m474b(this);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Looper.myQueue().addIdleHandler(new C1016a());
            }
        }
        new dy(this.f384q).start();
        this.f369b = true;
    }

    public final void m387a(bh bhVar) {
        bi biVar = this.f392y;
        if (this.f392y != null) {
            bg.m472a(bhVar);
            bg.m480i();
            if (bhVar.f454a) {
                this.f392y.m507a(bhVar.f455b, TimeUnit.SECONDS);
                this.f392y.m508b();
            }
        }
    }

    public final void m388a(C1060c c1060c) {
        Runnable c10148 = new C10148(this, c1060c);
        if (!this.f384q.m708a(c10148)) {
            this.f386s.execute(c10148);
        }
    }

    public final void m389a(ci ciVar) {
        if (!this.f373f.m747b()) {
            Runnable c10159 = new C10159(this, ciVar);
            if (!this.f384q.m708a(c10159)) {
                this.f386s.execute(c10159);
            }
        }
    }

    public final void m390a(C1082h c1082h) {
        if (this.f365G != null && c1082h.f805a && !c1082h.f807c) {
            dx.m750a("Enabling OPTMZ");
            this.f365G.m778a(c1082h.f808d, TimeUnit.SECONDS);
            this.f365G.m777a();
        }
    }

    public final void m391a(String str) {
        dt dtVar = this.f359A;
        if (this.f359A != null) {
            this.f359A.m737d();
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setData(Uri.parse(str));
        this.f370c.startActivity(intent);
    }

    public final void m392a(String str, String str2, int i) {
        SharedPreferences sharedPreferences = this.f370c.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            Editor edit = sharedPreferences.edit();
            if (edit != null) {
                edit.remove(str2);
                edit.putInt(str2, i);
                edit.commit();
            }
        }
    }

    public final void m393a(String str, String str2, String str3) {
        SharedPreferences sharedPreferences = this.f370c.getSharedPreferences(str, 0);
        if (sharedPreferences != null) {
            Editor edit = sharedPreferences.edit();
            if (edit != null) {
                edit.remove(str2);
                edit.putString(str2, str3);
                edit.commit();
            }
        }
    }

    public final void m394a(String str, URL url, long j, long j2, long j3, int i, Exception exception, long j4) {
        if (str == null) {
            dx.m754b("Null HTTP request method provided. Endpoint will not be logged.");
            return;
        }
        String toUpperCase = str.toUpperCase(Locale.US);
        Set hashSet = new HashSet();
        hashSet.add("GET");
        hashSet.add("POST");
        hashSet.add("HEAD");
        hashSet.add("PUT");
        hashSet.add("DELETE");
        hashSet.add("TRACE");
        hashSet.add("OPTIONS");
        hashSet.add("CONNECT");
        hashSet.add("PATCH");
        if (!hashSet.contains(toUpperCase)) {
            dx.m757c("Logging endpoint with invalid HTTP request method: " + str);
        }
        if (url == null) {
            dx.m754b("Null URL provided. Endpoint will not be logged");
        } else if (j2 < 0 || j3 < 0) {
            dx.m754b("Invalid byte values. Bytes need to be non-negative. Endpoint will not be logged.");
        } else {
            if (i != 0) {
                if (i < 100 || i >= 600) {
                    dx.m757c("Logging endpoint with invalid HTTP response code: " + Integer.toString(i));
                }
            } else if (exception == null) {
                dx.m757c("Logging endpoint with null error and response code of 0.");
            }
            C1018b a = new C1068d(this.f370c).m692a();
            if (j < 0) {
                dx.m754b("Invalid latency. Endpoint will not be logged.");
            } else if (j4 < 0) {
                dx.m754b("Invalid start time. Endpoint will not be logged.");
            } else {
                C1060c c1060c = new C1060c();
                c1060c.f585f = toUpperCase;
                c1060c.m637a(url.toExternalForm());
                c1060c.m641b(j2);
                c1060c.m646d(j3);
                c1060c.f584e = i;
                c1060c.f589j = a;
                c1060c.m648e(j4);
                c1060c.m650f(j4 + j);
                if (bc.m450b()) {
                    c1060c.m634a(bc.m448a());
                }
                c1060c.m638a((Throwable) exception);
                this.f389v.m761a(c1060c, C1059a.LOG_ENDPOINT);
            }
        }
    }

    public final void m395a(Throwable th) {
        if (this.f384q == null) {
            dx.m754b("Unable to handle application crash. Crittercism not yet initialized");
            return;
        }
        this.f384q.m709b();
        dq.m727a(this.f370c, true);
        if (!this.f373f.m747b()) {
            if (this.f387t) {
                new dj(new cu(this).m687a(br.SDK_CRASHES.m540f(), new JSONArray().put(new bk(th, Thread.currentThread().getId()).m523b())), new dc(new db(this.f388u.m442b(), "/android_v2/handle_crashes").m695a()), null).run();
                return;
            }
            List a = bg.m467a(this, th instanceof PluginException);
            ch bkVar = new bk(th, Thread.currentThread().getId());
            bkVar.m521a("crashed_session", this.f378k);
            if (this.f364F.m553b() > 0) {
                bkVar.m521a("previous_session", this.f364F);
            }
            bkVar.m519a(this.f379l);
            bkVar.f478b = new bo(this.f380m).f507a;
            bkVar.m518a();
            bkVar.m522a(a);
            this.f377j.m552a(bkVar);
            df dfVar = new df(this.f370c);
            dfVar.m700a(this.f374g, new C1069a(), this.f388u.m445e(), "/v0/appload", null, this, new C1065b());
            dfVar.m700a(this.f375h, new C1069a(), this.f388u.m442b(), "/android_v2/handle_exceptions", null, this, new C1067a());
            dfVar.m700a(this.f376i, new C1069a(), this.f388u.m442b(), "/android_v2/handle_ndk_crashes", null, this, new C1067a());
            dfVar.m700a(this.f377j, new C1069a(), this.f388u.m442b(), "/android_v2/handle_crashes", null, this, new C1067a());
            try {
                dfVar.m699a();
            } catch (InterruptedException e) {
                new StringBuilder("InterruptedException in logCrashException: ").append(e.getMessage());
                dx.m753b();
                dx.m756c();
            } catch (Throwable th2) {
                new StringBuilder("Unexpected throwable in logCrashException: ").append(th2.getMessage());
                dx.m753b();
                dx.m756c();
            }
        }
    }

    public final void m396a(JSONObject jSONObject) {
        if (!this.f387t) {
            Runnable c10082 = new C10082(this, this, jSONObject);
            if (!this.f384q.m708a(c10082)) {
                this.f386s.execute(c10082);
            }
        }
    }

    public final int m397b(String str) {
        if (this.f387t) {
            dx.m757c("Transactions are not supported for services. Returning default value of -1 for " + str + ".");
            return -1;
        }
        int d;
        synchronized (this.f393z) {
            Transaction transaction = (Transaction) this.f393z.get(str);
            d = transaction != null ? transaction.m35d() : -1;
        }
        return d;
    }

    public final int m398b(String str, String str2) {
        SharedPreferences sharedPreferences = this.f370c.getSharedPreferences(str, 0);
        return sharedPreferences != null ? sharedPreferences.getInt(str2, 0) : 0;
    }

    public final String m399b() {
        return this.f366H.f323a;
    }

    public final void m400b(Throwable th) {
        synchronized (this) {
            if (th == null) {
                dx.m757c("Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism");
            } else if (this.f387t) {
                r2 = new C10115(this, th, Thread.currentThread().getId());
                if (!this.f384q.m708a(r2)) {
                    this.f386s.execute(r2);
                }
            } else {
                r2 = new C10126(this, th, Thread.currentThread().getId());
                if (!this.f384q.m708a(r2)) {
                    this.f386s.execute(r2);
                }
            }
        }
    }

    public final String m401c() {
        return this.f390w != null ? this.f390w.m730a() : BuildConfig.FLAVOR;
    }

    public final boolean m402c(String str, String str2) {
        SharedPreferences sharedPreferences = this.f370c.getSharedPreferences(str, 0);
        return sharedPreferences != null ? sharedPreferences.getBoolean(str2, false) : false;
    }

    public final String m403d() {
        return CrittercismConfig.API_VERSION;
    }

    public final int m404e() {
        return this.f373f != null ? Integer.valueOf(this.f373f.m745a().f757a).intValue() : -1;
    }

    public final String m405f() {
        return new C1037f().f543a;
    }

    public final int m406g() {
        return new C1046o().f552a.intValue();
    }

    public final int m407h() {
        return new C1047p().f553a.intValue();
    }

    public final String m408i() {
        return "Android";
    }

    public final String m409j() {
        return Build.MODEL;
    }

    public final String m410k() {
        return VERSION.RELEASE;
    }

    public final dw m411l() {
        return this.f373f;
    }

    public final dt m412m() {
        return this.f359A;
    }

    public final bs m413n() {
        return this.f374g;
    }

    public final bs m414o() {
        return this.f375h;
    }

    public final bs m415p() {
        return this.f363E;
    }

    public final bs m416q() {
        return this.f376i;
    }

    public final bs m417r() {
        return this.f377j;
    }

    public final bs m418s() {
        return this.f378k;
    }

    public final bs m419t() {
        return this.f379l;
    }

    public final bs m420u() {
        return this.f364F;
    }

    public final bs m421v() {
        return this.f380m;
    }

    public final bs m422w() {
        return this.f381n;
    }

    public final bs m423x() {
        return this.f382o;
    }

    public final dv m424y() {
        return this.f391x;
    }

    public final void m425z() {
        if (this.f387t) {
            this.f378k = new bs(this.f370c, br.CURR_BCS).m548a(this.f370c);
        } else {
            this.f378k = new bs(this.f370c, br.CURR_BCS);
        }
        this.f364F = new bs(this.f370c, br.PREV_BCS);
        this.f379l = new bs(this.f370c, br.NW_BCS);
        this.f380m = new bs(this.f370c, br.SYSTEM_BCS);
        this.f374g = new bs(this.f370c, br.APP_LOADS);
        this.f375h = new bs(this.f370c, br.HAND_EXCS);
        this.f363E = new bs(this.f370c, br.INTERNAL_EXCS);
        this.f376i = new bs(this.f370c, br.NDK_CRASHES);
        this.f377j = new bs(this.f370c, br.SDK_CRASHES);
        this.f381n = new bs(this.f370c, br.STARTED_TXNS);
        this.f382o = new bs(this.f370c, br.FINISHED_TXNS);
        if (!this.f387t) {
            this.f391x = new dv(this.f370c, this.f362D);
        }
    }
}
