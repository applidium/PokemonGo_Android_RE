package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ViewGroupCompat {
    static final ViewGroupCompatImpl IMPL;
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;

    interface ViewGroupCompatImpl {
        int getLayoutMode(ViewGroup viewGroup);

        int getNestedScrollAxes(ViewGroup viewGroup);

        boolean isTransitionGroup(ViewGroup viewGroup);

        boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void setLayoutMode(ViewGroup viewGroup, int i);

        void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z);

        void setTransitionGroup(ViewGroup viewGroup, boolean z);
    }

    static class ViewGroupCompatStubImpl implements ViewGroupCompatImpl {
        ViewGroupCompatStubImpl() {
        }

        public int getLayoutMode(ViewGroup viewGroup) {
            return ViewGroupCompat.LAYOUT_MODE_CLIP_BOUNDS;
        }

        public int getNestedScrollAxes(ViewGroup viewGroup) {
            return viewGroup instanceof NestedScrollingParent ? ((NestedScrollingParent) viewGroup).getNestedScrollAxes() : ViewGroupCompat.LAYOUT_MODE_CLIP_BOUNDS;
        }

        public boolean isTransitionGroup(ViewGroup viewGroup) {
            return false;
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        public void setLayoutMode(ViewGroup viewGroup, int i) {
        }

        public void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
        }

        public void setTransitionGroup(ViewGroup viewGroup, boolean z) {
        }
    }

    static class ViewGroupCompatHCImpl extends ViewGroupCompatStubImpl {
        ViewGroupCompatHCImpl() {
        }

        public void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
            ViewGroupCompatHC.setMotionEventSplittingEnabled(viewGroup, z);
        }
    }

    static class ViewGroupCompatIcsImpl extends ViewGroupCompatHCImpl {
        ViewGroupCompatIcsImpl() {
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return ViewGroupCompatIcs.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    static class ViewGroupCompatJellybeanMR2Impl extends ViewGroupCompatIcsImpl {
        ViewGroupCompatJellybeanMR2Impl() {
        }

        public int getLayoutMode(ViewGroup viewGroup) {
            return ViewGroupCompatJellybeanMR2.getLayoutMode(viewGroup);
        }

        public void setLayoutMode(ViewGroup viewGroup, int i) {
            ViewGroupCompatJellybeanMR2.setLayoutMode(viewGroup, i);
        }
    }

    static class ViewGroupCompatLollipopImpl extends ViewGroupCompatJellybeanMR2Impl {
        ViewGroupCompatLollipopImpl() {
        }

        public int getNestedScrollAxes(ViewGroup viewGroup) {
            return ViewGroupCompatLollipop.getNestedScrollAxes(viewGroup);
        }

        public boolean isTransitionGroup(ViewGroup viewGroup) {
            return ViewGroupCompatLollipop.isTransitionGroup(viewGroup);
        }

        public void setTransitionGroup(ViewGroup viewGroup, boolean z) {
            ViewGroupCompatLollipop.setTransitionGroup(viewGroup, z);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new ViewGroupCompatLollipopImpl();
        } else if (i >= 18) {
            IMPL = new ViewGroupCompatJellybeanMR2Impl();
        } else if (i >= 14) {
            IMPL = new ViewGroupCompatIcsImpl();
        } else if (i >= 11) {
            IMPL = new ViewGroupCompatHCImpl();
        } else {
            IMPL = new ViewGroupCompatStubImpl();
        }
    }

    private ViewGroupCompat() {
    }

    public static int getLayoutMode(ViewGroup viewGroup) {
        return IMPL.getLayoutMode(viewGroup);
    }

    public static int getNestedScrollAxes(ViewGroup viewGroup) {
        return IMPL.getNestedScrollAxes(viewGroup);
    }

    public static boolean isTransitionGroup(ViewGroup viewGroup) {
        return IMPL.isTransitionGroup(viewGroup);
    }

    public static boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return IMPL.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public static void setLayoutMode(ViewGroup viewGroup, int i) {
        IMPL.setLayoutMode(viewGroup, i);
    }

    public static void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
        IMPL.setMotionEventSplittingEnabled(viewGroup, z);
    }

    public static void setTransitionGroup(ViewGroup viewGroup, boolean z) {
        IMPL.setTransitionGroup(viewGroup, z);
    }
}
