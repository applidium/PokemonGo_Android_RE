package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public class LayoutInflaterCompat {
    static final LayoutInflaterCompatImpl IMPL;

    interface LayoutInflaterCompatImpl {
        void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory);
    }

    static class LayoutInflaterCompatImplBase implements LayoutInflaterCompatImpl {
        LayoutInflaterCompatImplBase() {
        }

        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatBase.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

    static class LayoutInflaterCompatImplV11 extends LayoutInflaterCompatImplBase {
        LayoutInflaterCompatImplV11() {
        }

        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatHC.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

    static class LayoutInflaterCompatImplV21 extends LayoutInflaterCompatImplV11 {
        LayoutInflaterCompatImplV21() {
        }

        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatLollipop.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new LayoutInflaterCompatImplV21();
        } else if (i >= 11) {
            IMPL = new LayoutInflaterCompatImplV11();
        } else {
            IMPL = new LayoutInflaterCompatImplBase();
        }
    }

    private LayoutInflaterCompat() {
    }

    public static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        IMPL.setFactory(layoutInflater, layoutInflaterFactory);
    }
}
