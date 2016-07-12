package crittercism.android;

import com.crittercism.app.CrittercismConfig;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;

public final class ec {
    aw f787a;
    ExecutorService f788b;
    dg f789c;
    dw f790d;

    /* renamed from: crittercism.android.ec.1 */
    final class C10791 implements Runnable {
        final /* synthetic */ Throwable f784a;
        final /* synthetic */ long f785b;
        final /* synthetic */ ec f786c;

        C10791(ec ecVar, Throwable th, long j) {
            this.f786c = ecVar;
            this.f784a = th;
            this.f785b = j;
        }

        public final void run() {
            try {
                if (!this.f786c.f790d.m747b()) {
                    ch bkVar = new bk(this.f784a, this.f785b);
                    bkVar.f482f = "he";
                    try {
                        bkVar.f483g.put("app_version", CrittercismConfig.API_VERSION);
                    } catch (JSONException e) {
                    }
                    bkVar.f483g.remove("logcat");
                    this.f786c.f787a.m349p().m552a(bkVar);
                }
            } catch (ThreadDeath e2) {
            } catch (Throwable th) {
                ec ecVar = this.f786c;
                Throwable th2 = this.f784a;
            }
        }
    }

    public ec(aw awVar, ExecutorService executorService, dg dgVar, dw dwVar) {
        this.f787a = awVar;
        this.f788b = executorService;
        this.f789c = dgVar;
        this.f790d = dwVar;
    }
}
