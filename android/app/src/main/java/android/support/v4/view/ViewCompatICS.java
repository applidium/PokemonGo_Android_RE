package android.support.v4.view;

import android.support.annotation.Nullable;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

class ViewCompatICS {
    ViewCompatICS() {
    }

    public static boolean canScrollHorizontally(View view, int i) {
        return view.canScrollHorizontally(i);
    }

    public static boolean canScrollVertically(View view, int i) {
        return view.canScrollVertically(i);
    }

    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(View view, Object obj) {
        view.onInitializeAccessibilityNodeInfo((AccessibilityNodeInfo) obj);
    }

    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    public static void setAccessibilityDelegate(View view, @Nullable Object obj) {
        view.setAccessibilityDelegate((AccessibilityDelegate) obj);
    }

    public static void setFitsSystemWindows(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }
}
