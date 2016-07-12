package android.support.v4.view.accessibility;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import java.util.List;

class AccessibilityNodeInfoCompatApi21 {

    static class CollectionItemInfo {
        CollectionItemInfo() {
        }

        public static boolean isSelected(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo) obj).isSelected();
        }
    }

    AccessibilityNodeInfoCompatApi21() {
    }

    static void addAction(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).addAction((AccessibilityAction) obj2);
    }

    static int getAccessibilityActionId(Object obj) {
        return ((AccessibilityAction) obj).getId();
    }

    static CharSequence getAccessibilityActionLabel(Object obj) {
        return ((AccessibilityAction) obj).getLabel();
    }

    static List<Object> getActionList(Object obj) {
        return ((AccessibilityNodeInfo) obj).getActionList();
    }

    public static CharSequence getError(Object obj) {
        return ((AccessibilityNodeInfo) obj).getError();
    }

    public static int getMaxTextLength(Object obj) {
        return ((AccessibilityNodeInfo) obj).getMaxTextLength();
    }

    public static Object getWindow(Object obj) {
        return ((AccessibilityNodeInfo) obj).getWindow();
    }

    static Object newAccessibilityAction(int i, CharSequence charSequence) {
        return new AccessibilityAction(i, charSequence);
    }

    public static Object obtainCollectionInfo(int i, int i2, boolean z, int i3) {
        return CollectionInfo.obtain(i, i2, z, i3);
    }

    public static Object obtainCollectionItemInfo(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        return android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2);
    }

    public static boolean removeAction(Object obj, Object obj2) {
        return ((AccessibilityNodeInfo) obj).removeAction((AccessibilityAction) obj2);
    }

    public static boolean removeChild(Object obj, View view) {
        return ((AccessibilityNodeInfo) obj).removeChild(view);
    }

    public static boolean removeChild(Object obj, View view, int i) {
        return ((AccessibilityNodeInfo) obj).removeChild(view, i);
    }

    public static void setError(Object obj, CharSequence charSequence) {
        ((AccessibilityNodeInfo) obj).setError(charSequence);
    }

    public static void setMaxTextLength(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).setMaxTextLength(i);
    }
}
