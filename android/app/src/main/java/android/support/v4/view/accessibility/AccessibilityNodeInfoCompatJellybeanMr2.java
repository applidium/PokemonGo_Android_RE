package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;
import java.util.List;

class AccessibilityNodeInfoCompatJellybeanMr2 {
    AccessibilityNodeInfoCompatJellybeanMr2() {
    }

    public static List<Object> findAccessibilityNodeInfosByViewId(Object obj, String str) {
        return ((AccessibilityNodeInfo) obj).findAccessibilityNodeInfosByViewId(str);
    }

    public static int getTextSelectionEnd(Object obj) {
        return ((AccessibilityNodeInfo) obj).getTextSelectionEnd();
    }

    public static int getTextSelectionStart(Object obj) {
        return ((AccessibilityNodeInfo) obj).getTextSelectionStart();
    }

    public static String getViewIdResourceName(Object obj) {
        return ((AccessibilityNodeInfo) obj).getViewIdResourceName();
    }

    public static boolean isEditable(Object obj) {
        return ((AccessibilityNodeInfo) obj).isEditable();
    }

    public static boolean refresh(Object obj) {
        return ((AccessibilityNodeInfo) obj).refresh();
    }

    public static void setEditable(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setEditable(z);
    }

    public static void setTextSelection(Object obj, int i, int i2) {
        ((AccessibilityNodeInfo) obj).setTextSelection(i, i2);
    }

    public static void setViewIdResourceName(Object obj, String str) {
        ((AccessibilityNodeInfo) obj).setViewIdResourceName(str);
    }
}
