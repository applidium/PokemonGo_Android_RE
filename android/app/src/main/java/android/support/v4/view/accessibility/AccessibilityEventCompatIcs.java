package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;

class AccessibilityEventCompatIcs {
    AccessibilityEventCompatIcs() {
    }

    public static void appendRecord(AccessibilityEvent accessibilityEvent, Object obj) {
        accessibilityEvent.appendRecord((AccessibilityRecord) obj);
    }

    public static Object getRecord(AccessibilityEvent accessibilityEvent, int i) {
        return accessibilityEvent.getRecord(i);
    }

    public static int getRecordCount(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getRecordCount();
    }

    public static void setScrollable(AccessibilityEvent accessibilityEvent, boolean z) {
        accessibilityEvent.setScrollable(z);
    }
}
