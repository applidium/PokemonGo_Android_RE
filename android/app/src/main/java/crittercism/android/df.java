package crittercism.android;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class df {
    private Context f713a;
    private List f714b;

    public df(Context context) {
        this.f713a = context;
        this.f714b = new ArrayList();
    }

    public final void m699a() {
        ArrayList arrayList = new ArrayList();
        for (di thread : this.f714b) {
            arrayList.add(new Thread(thread));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Thread) it.next()).start();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Thread) it2.next()).join();
        }
    }

    public final void m700a(bs bsVar, cz czVar, String str, String str2, String str3, au auVar, cx cxVar) {
        synchronized (this) {
            if (bsVar.m553b() > 0) {
                bs a = bsVar.m548a(this.f713a);
                cy a2 = czVar.m680a(a, bsVar, str3, this.f713a, auVar);
                this.f714b.add(new dh(a, bsVar, auVar, new db(str, str2).m695a(), a2, cxVar));
            }
        }
    }

    public final void m701a(dg dgVar, ExecutorService executorService) {
        for (Runnable runnable : this.f714b) {
            if (!dgVar.m708a(runnable)) {
                executorService.execute(runnable);
            }
        }
    }
}
