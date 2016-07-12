package com.squareup.otto;

import android.os.Looper;

public interface ThreadEnforcer {
    public static final ThreadEnforcer ANY;
    public static final ThreadEnforcer MAIN;

    /* renamed from: com.squareup.otto.ThreadEnforcer.1 */
    static final class C08121 implements ThreadEnforcer {
        C08121() {
        }

        public void enforce(Bus bus) {
        }
    }

    /* renamed from: com.squareup.otto.ThreadEnforcer.2 */
    static final class C08132 implements ThreadEnforcer {
        C08132() {
        }

        public void enforce(Bus bus) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("Event bus " + bus + " accessed from non-main thread " + Looper.myLooper());
            }
        }
    }

    static {
        ANY = new C08121();
        MAIN = new C08132();
    }

    void enforce(Bus bus);
}
