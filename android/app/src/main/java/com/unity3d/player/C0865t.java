package com.unity3d.player;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.unity3d.player.t */
final class C0865t {
    public static C0865t f228a;
    private final ViewGroup f229b;
    private Set f230c;
    private View f231d;
    private View f232e;

    C0865t(ViewGroup viewGroup) {
        this.f230c = new HashSet();
        this.f229b = viewGroup;
        f228a = this;
    }

    private void m175e(View view) {
        this.f229b.addView(view, this.f229b.getChildCount());
    }

    private void m176f(View view) {
        this.f229b.removeView(view);
        this.f229b.requestLayout();
    }

    public final Context m177a() {
        return this.f229b.getContext();
    }

    public final void m178a(View view) {
        this.f230c.add(view);
        if (this.f231d != null) {
            m175e(view);
        }
    }

    public final void m179b(View view) {
        this.f230c.remove(view);
        if (this.f231d != null) {
            m176f(view);
        }
    }

    public final void m180c(View view) {
        if (this.f231d != view) {
            this.f231d = view;
            this.f229b.addView(view);
            for (View e : this.f230c) {
                m175e(e);
            }
            if (this.f232e != null) {
                this.f232e.setVisibility(4);
            }
        }
    }

    public final void m181d(View view) {
        if (this.f231d == view) {
            for (View f : this.f230c) {
                m176f(f);
            }
            this.f229b.removeView(view);
            this.f231d = null;
            if (this.f232e != null) {
                this.f232e.setVisibility(0);
            }
        }
    }
}
