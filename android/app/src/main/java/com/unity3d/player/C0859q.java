package com.unity3d.player;

import android.os.Build.VERSION;

/* renamed from: com.unity3d.player.q */
public final class C0859q {
    static final boolean f200a;
    static final boolean f201b;
    static final boolean f202c;
    static final boolean f203d;
    static final boolean f204e;
    static final boolean f205f;
    static final boolean f206g;
    static final boolean f207h;
    static final C0840f f208i;
    static final C0836e f209j;
    static final C0843h f210k;
    static final C0842g f211l;
    static final C0844i f212m;

    static {
        C0844i c0844i = null;
        boolean z = true;
        f200a = VERSION.SDK_INT >= 11;
        f201b = VERSION.SDK_INT >= 12;
        f202c = VERSION.SDK_INT >= 14;
        f203d = VERSION.SDK_INT >= 16;
        f204e = VERSION.SDK_INT >= 17;
        f205f = VERSION.SDK_INT >= 19;
        f206g = VERSION.SDK_INT >= 21;
        if (VERSION.SDK_INT < 23) {
            z = false;
        }
        f207h = z;
        f208i = f200a ? new C0841d() : null;
        f209j = f201b ? new C0837c() : null;
        f210k = f203d ? new C0852l() : null;
        f211l = f204e ? new C0850k() : null;
        if (f207h) {
            c0844i = new C0855n();
        }
        f212m = c0844i;
    }
}
