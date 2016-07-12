package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.KeyEvent;
import android.view.KeyEvent.Callback;
import android.view.View;

public class KeyEventCompat {
    static final KeyEventVersionImpl IMPL;

    interface KeyEventVersionImpl {
        boolean dispatch(KeyEvent keyEvent, Callback callback, Object obj, Object obj2);

        Object getKeyDispatcherState(View view);

        boolean isTracking(KeyEvent keyEvent);

        boolean metaStateHasModifiers(int i, int i2);

        boolean metaStateHasNoModifiers(int i);

        int normalizeMetaState(int i);

        void startTracking(KeyEvent keyEvent);
    }

    static class BaseKeyEventVersionImpl implements KeyEventVersionImpl {
        private static final int META_ALL_MASK = 247;
        private static final int META_MODIFIER_MASK = 247;

        BaseKeyEventVersionImpl() {
        }

        private static int metaStateFilterDirectionalModifiers(int i, int i2, int i3, int i4, int i5) {
            Object obj = 1;
            Object obj2 = (i2 & i3) != 0 ? 1 : null;
            int i6 = i4 | i5;
            if ((i2 & i6) == 0) {
                obj = null;
            }
            if (obj2 == null) {
                return obj != null ? i & (i3 ^ -1) : i;
            } else {
                if (obj == null) {
                    return i & (i6 ^ -1);
                }
                throw new IllegalArgumentException("bad arguments");
            }
        }

        public boolean dispatch(KeyEvent keyEvent, Callback callback, Object obj, Object obj2) {
            return keyEvent.dispatch(callback);
        }

        public Object getKeyDispatcherState(View view) {
            return null;
        }

        public boolean isTracking(KeyEvent keyEvent) {
            return false;
        }

        public boolean metaStateHasModifiers(int i, int i2) {
            return metaStateFilterDirectionalModifiers(metaStateFilterDirectionalModifiers(normalizeMetaState(i) & META_MODIFIER_MASK, i2, 1, 64, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS), i2, 2, 16, 32) == i2;
        }

        public boolean metaStateHasNoModifiers(int i) {
            return (normalizeMetaState(i) & META_MODIFIER_MASK) == 0;
        }

        public int normalizeMetaState(int i) {
            int i2 = (i & 192) != 0 ? i | 1 : i;
            if ((i2 & 48) != 0) {
                i2 |= 2;
            }
            return i2 & META_MODIFIER_MASK;
        }

        public void startTracking(KeyEvent keyEvent) {
        }
    }

    static class EclairKeyEventVersionImpl extends BaseKeyEventVersionImpl {
        EclairKeyEventVersionImpl() {
        }

        public boolean dispatch(KeyEvent keyEvent, Callback callback, Object obj, Object obj2) {
            return KeyEventCompatEclair.dispatch(keyEvent, callback, obj, obj2);
        }

        public Object getKeyDispatcherState(View view) {
            return KeyEventCompatEclair.getKeyDispatcherState(view);
        }

        public boolean isTracking(KeyEvent keyEvent) {
            return KeyEventCompatEclair.isTracking(keyEvent);
        }

        public void startTracking(KeyEvent keyEvent) {
            KeyEventCompatEclair.startTracking(keyEvent);
        }
    }

    static class HoneycombKeyEventVersionImpl extends EclairKeyEventVersionImpl {
        HoneycombKeyEventVersionImpl() {
        }

        public boolean metaStateHasModifiers(int i, int i2) {
            return KeyEventCompatHoneycomb.metaStateHasModifiers(i, i2);
        }

        public boolean metaStateHasNoModifiers(int i) {
            return KeyEventCompatHoneycomb.metaStateHasNoModifiers(i);
        }

        public int normalizeMetaState(int i) {
            return KeyEventCompatHoneycomb.normalizeMetaState(i);
        }
    }

    static {
        if (VERSION.SDK_INT >= 11) {
            IMPL = new HoneycombKeyEventVersionImpl();
        } else {
            IMPL = new BaseKeyEventVersionImpl();
        }
    }

    public static boolean dispatch(KeyEvent keyEvent, Callback callback, Object obj, Object obj2) {
        return IMPL.dispatch(keyEvent, callback, obj, obj2);
    }

    public static Object getKeyDispatcherState(View view) {
        return IMPL.getKeyDispatcherState(view);
    }

    public static boolean hasModifiers(KeyEvent keyEvent, int i) {
        return IMPL.metaStateHasModifiers(keyEvent.getMetaState(), i);
    }

    public static boolean hasNoModifiers(KeyEvent keyEvent) {
        return IMPL.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    public static boolean isTracking(KeyEvent keyEvent) {
        return IMPL.isTracking(keyEvent);
    }

    public static boolean metaStateHasModifiers(int i, int i2) {
        return IMPL.metaStateHasModifiers(i, i2);
    }

    public static boolean metaStateHasNoModifiers(int i) {
        return IMPL.metaStateHasNoModifiers(i);
    }

    public static int normalizeMetaState(int i) {
        return IMPL.normalizeMetaState(i);
    }

    public static void startTracking(KeyEvent keyEvent) {
        IMPL.startTracking(keyEvent);
    }
}
