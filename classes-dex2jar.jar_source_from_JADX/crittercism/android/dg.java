package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import com.crittercism.app.CrittercismNDK;
import crittercism.android.cs.C1065b;
import crittercism.android.ct.C1066a;
import crittercism.android.cu.C1067a;
import crittercism.android.da.C1069a;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public final class dg extends di {
    public ConditionVariable f715a;
    public bm f716b;
    private ConditionVariable f717c;
    private bb f718d;
    private Context f719e;
    private aw f720f;
    private ax f721g;
    private au f722h;
    private List f723i;
    private boolean f724j;
    private boolean f725k;
    private Exception f726l;

    public dg(bb bbVar, Context context, aw awVar, ax axVar, au auVar) {
        this.f717c = new ConditionVariable();
        this.f715a = new ConditionVariable();
        this.f723i = new ArrayList();
        this.f724j = false;
        this.f716b = null;
        this.f726l = null;
        this.f718d = bbVar;
        this.f719e = context;
        this.f720f = awVar;
        this.f721g = axVar;
        this.f722h = auVar;
        this.f725k = false;
    }

    private void m702a(File file) {
        boolean z = this.f725k;
        az A = az.m375A();
        if (!A.f387t) {
            if (file != null && file.exists()) {
                file.isFile();
            }
            aw awVar = this.f720f;
            bs s = this.f720f.m352s();
            bs t = this.f720f.m353t();
            bs u = this.f720f.m354u();
            bs v = this.f720f.m355v();
            bs q = this.f720f.m350q();
            if (file != null) {
                dq.f750a = true;
                A.f372e.open();
                q.m552a(new cd(file, s, u, t, v));
                file.delete();
                this.f720f.m356w().m549a();
            } else {
                A.f372e.open();
                bg.m469a(this.f720f);
            }
            u.m549a();
            t.m549a();
            v.m549a();
            s.m550a(u);
        }
    }

    private void m703c() {
        synchronized (this) {
            this.f724j = true;
        }
    }

    private boolean m704d() {
        boolean z;
        synchronized (this) {
            z = this.f724j;
        }
        return z;
    }

    private File m705e() {
        int i = 0;
        File file = new File(this.f719e.getFilesDir().getAbsolutePath() + "/" + this.f718d.m447g());
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return null;
        }
        if (listFiles.length == 1) {
            File file2 = listFiles[0];
            file2.isFile();
            return file2.isFile() ? file2 : null;
        } else if (listFiles.length <= 1) {
            return null;
        } else {
            int length = listFiles.length;
            while (i < length) {
                File file3 = listFiles[i];
                file3.isFile();
                file3.delete();
                i++;
            }
            return null;
        }
    }

    private void m706f() {
        if (!az.m375A().f387t) {
            boolean z = this.f725k;
            bs n = this.f720f.m347n();
            bs o = this.f720f.m348o();
            bs p = this.f720f.m349p();
            bs q = this.f720f.m350q();
            bs r = this.f720f.m351r();
            dv y = this.f720f.m358y();
            this.f718d.m442b();
            this.f716b = new bm(this.f722h);
            if (!this.f718d.delaySendingAppLoad()) {
                n.m552a(this.f716b);
                df dfVar = new df(this.f719e);
                dfVar.m700a(n, new C1066a(), this.f718d.m445e(), "/v0/appload", this.f718d.m442b(), this.f722h, new C1065b());
                dfVar.m700a(o, new C1069a(), this.f718d.m442b(), "/android_v2/handle_exceptions", null, this.f722h, new C1067a());
                dfVar.m700a(q, new C1069a(), this.f718d.m442b(), "/android_v2/handle_ndk_crashes", null, this.f722h, new C1067a());
                dfVar.m700a(r, new C1069a(), this.f718d.m442b(), "/android_v2/handle_crashes", null, this.f722h, new C1067a());
                dfVar.m700a(p, new C1069a(), this.f718d.m442b(), "/android_v2/handle_exceptions", null, new ba(this.f722h, this.f718d), new C1067a());
                dfVar.m699a();
            }
            if (y.m744b()) {
                az.m375A().m382E();
            }
        }
    }

    public final void m707a() {
        dx.m753b();
        File file = new File(this.f719e.getFilesDir().getAbsolutePath() + "/com.crittercism/pending");
        if (!file.exists() || file.isDirectory()) {
            try {
                eb.m765a(file);
            } catch (Exception e) {
                new StringBuilder("Exception in run(): ").append(e.getMessage());
                dx.m753b();
                dx.m756c();
                this.f726l = e;
            } finally {
                this.f717c.open();
            }
        } else {
            dx.m753b();
        }
        az A = az.m375A();
        A.f390w.m730a();
        dw l = this.f722h.m345l();
        A.f371d.open();
        ax axVar = this.f721g;
        Context context = this.f719e;
        l.m746a(axVar);
        dq.f750a = dq.m726a(this.f719e).booleanValue();
        dq.m727a(this.f719e, false);
        if (!l.m747b()) {
            dt dtVar = new dt(this.f719e);
            dtVar.f756a.edit().putInt("numAppLoads", dtVar.m733a() + 1).commit();
            az.m375A().f359A = dtVar;
            l.m745a().m738a(this.f721g, cq.SESSION_ID_SETTING.m668a(), cq.SESSION_ID_SETTING.m669b());
        }
        this.f725k = l.m747b();
        File e2 = m705e();
        boolean z;
        if (this.f725k) {
            z = this.f725k;
            if (!az.m375A().f387t) {
                if (e2 != null && e2.exists()) {
                    e2.isFile();
                }
                new bs(this.f719e, br.APP_LOADS).m549a();
                new bs(this.f719e, br.HAND_EXCS).m549a();
                new bs(this.f719e, br.INTERNAL_EXCS).m549a();
                new bs(this.f719e, br.NDK_CRASHES).m549a();
                new bs(this.f719e, br.SDK_CRASHES).m549a();
                new bs(this.f719e, br.CURR_BCS).m549a();
                new bs(this.f719e, br.PREV_BCS).m549a();
                new bs(this.f719e, br.NW_BCS).m549a();
                new bs(this.f719e, br.SYSTEM_BCS).m549a();
                if (e2 != null) {
                    e2.delete();
                }
            }
            C1082h.m781b(this.f719e);
        } else {
            Context context2 = this.f719e;
            C1082h c1082h = new C1082h(context2);
            SharedPreferences sharedPreferences = context2.getSharedPreferences("com.crittercism.optmz.config", 0);
            if (sharedPreferences.contains("interval")) {
                c1082h.f808d = sharedPreferences.getInt("interval", 10);
                if (sharedPreferences.contains("kill")) {
                    c1082h.f807c = sharedPreferences.getBoolean("kill", false);
                    if (sharedPreferences.contains("persist")) {
                        c1082h.f806b = sharedPreferences.getBoolean("persist", false);
                        if (sharedPreferences.contains("enabled")) {
                            c1082h.f805a = sharedPreferences.getBoolean("enabled", false);
                        } else {
                            c1082h = null;
                        }
                    } else {
                        c1082h = null;
                    }
                } else {
                    c1082h = null;
                }
            } else {
                c1082h = null;
            }
            if (c1082h != null) {
                az.m375A().m390a(c1082h);
            }
            z = this.f725k;
            this.f720f.m359z();
            if (!az.m375A().f387t) {
                bh a = bh.m500a(this.f719e);
                try {
                    Runnable biVar = new bi(this.f719e, this.f722h, this.f720f.m357x(), this.f720f.m352s(), this.f720f.m353t(), this.f720f.m355v(), new URL(this.f718d.m444d() + "/api/v1/transactions"));
                    az A2 = az.m375A();
                    A2.f392y = biVar;
                    new dy(biVar, "TXN Thread").start();
                    A2.m387a(a);
                } catch (MalformedURLException e3) {
                    dx.m748a();
                }
            }
            m702a(e2);
            this.f715a.open();
            this.f720f.m352s().m552a(cf.f619a);
            if (!az.m375A().f387t && this.f718d.isNdkCrashReportingEnabled()) {
                dx.m753b();
                try {
                    CrittercismNDK.installNdkLib(this.f719e, this.f718d.m447g());
                } catch (Throwable th) {
                    new StringBuilder("Exception installing ndk library: ").append(th.getClass().getName());
                    dx.m753b();
                }
            }
            m706f();
        }
        m703c();
        for (Runnable biVar2 : this.f723i) {
            biVar2.run();
        }
    }

    public final boolean m708a(Runnable runnable) {
        boolean z;
        synchronized (this) {
            if (m704d()) {
                z = false;
            } else {
                this.f723i.add(runnable);
                z = true;
            }
        }
        return z;
    }

    public final void m709b() {
        this.f717c.block();
    }
}
