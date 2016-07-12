package android.support.v4.view.accessibility;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

class AccessibilityNodeInfoCompatApi22 {
    AccessibilityNodeInfoCompatApi22() {
    }

    public static Object getTraversalAfter(Object obj) {
        return ((AccessibilityNodeInfo) obj).getTraversalAfter();
    }

    public static Object getTraversalBefore(Object obj) {
        return ((AccessibilityNodeInfo) obj).getTraversalBefore();
    }

    public static void setTraversalAfter(Object obj, View view) {
        ((AccessibilityNodeInfo) obj).setTraversalAfter(view);
    }

    public static void setTraversalAfter(Object obj, View view, int i) {
        ((AccessibilityNodeInfo) obj).setTraversalAfter(view, i);
    }

    public static void setTraversalBefore(Object obj, View view) {
        ((AccessibilityNodeInfo) obj).setTraversalBefore(view);
    }

    public static void setTraversalBefore(Object obj, View view, int i) {
        ((AccessibilityNodeInfo) obj).setTraversalBefore(view, i);
    }
}
