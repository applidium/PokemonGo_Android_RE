package crittercism.android;

import crittercism.android.C1060c.C1059a;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* renamed from: crittercism.android.e */
public final class C1078e {
    List f769a;
    final Set f770b;
    final Set f771c;
    private Executor f772d;

    /* renamed from: crittercism.android.e.a */
    final class C1077a implements Runnable {
        final /* synthetic */ C1078e f767a;
        private C1060c f768b;

        private C1077a(C1078e c1078e, C1060c c1060c) {
            this.f767a = c1078e;
            this.f768b = c1060c;
        }

        private boolean m758a(C1060c c1060c) {
            String a = c1060c.m631a();
            synchronized (this.f767a.f770b) {
                for (String contains : this.f767a.f770b) {
                    if (a.contains(contains)) {
                        return true;
                    }
                }
                return false;
            }
        }

        private boolean m759a(String str) {
            synchronized (this.f767a.f771c) {
                for (String contains : this.f767a.f771c) {
                    if (str.contains(contains)) {
                        return false;
                    }
                }
                return true;
            }
        }

        public final void run() {
            if (!m758a(this.f768b)) {
                String a = this.f768b.m631a();
                if (m759a(a)) {
                    int indexOf = a.indexOf("?");
                    if (indexOf != -1) {
                        this.f768b.m637a(a.substring(0, indexOf));
                    }
                }
                synchronized (this.f767a.f769a) {
                    for (C1017f a2 : this.f767a.f769a) {
                        a2.m374a(this.f768b);
                    }
                }
            }
        }
    }

    public C1078e(Executor executor) {
        this(executor, new LinkedList(), new LinkedList());
    }

    private C1078e(Executor executor, List list, List list2) {
        this.f769a = new LinkedList();
        this.f770b = new HashSet();
        this.f771c = new HashSet();
        this.f772d = executor;
        m763a(list);
        m764b(list2);
    }

    @Deprecated
    public final void m760a(C1060c c1060c) {
        m761a(c1060c, C1059a.LEGACY_JAVANET);
    }

    public final void m761a(C1060c c1060c, C1059a c1059a) {
        if (!c1060c.f581b) {
            c1060c.f581b = true;
            c1060c.f582c = c1059a;
            this.f772d.execute(new C1077a(c1060c, (byte) 0));
        }
    }

    public final void m762a(C1017f c1017f) {
        synchronized (this.f769a) {
            this.f769a.add(c1017f);
        }
    }

    public final void m763a(List list) {
        synchronized (this.f770b) {
            this.f770b.addAll(list);
            this.f770b.remove(null);
        }
    }

    public final void m764b(List list) {
        synchronized (this.f771c) {
            this.f771c.addAll(list);
            this.f771c.remove(null);
        }
    }
}
