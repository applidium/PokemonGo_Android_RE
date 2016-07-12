package com.unity3d.player;

/* renamed from: com.unity3d.player.v */
final class C0867v {
    private static boolean f234a;
    private boolean f235b;
    private boolean f236c;
    private boolean f237d;
    private boolean f238e;

    static {
        f234a = false;
    }

    C0867v() {
        this.f235b = !C0859q.f207h;
        this.f236c = false;
        this.f237d = false;
        this.f238e = true;
    }

    static void m183a() {
        f234a = true;
    }

    static void m184b() {
        f234a = false;
    }

    static boolean m185c() {
        return f234a;
    }

    final void m186a(boolean z) {
        this.f236c = z;
    }

    final void m187b(boolean z) {
        this.f238e = z;
    }

    final void m188c(boolean z) {
        this.f237d = z;
    }

    final void m189d() {
        this.f235b = true;
    }

    final boolean m190e() {
        return this.f238e;
    }

    final boolean m191f() {
        return f234a && this.f236c && this.f235b && !this.f238e && !this.f237d;
    }

    final boolean m192g() {
        return this.f237d;
    }

    public final String toString() {
        return super.toString();
    }
}
