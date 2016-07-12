package android.support.v4.view.accessibility;

import android.os.Build.VERSION;
import android.os.Parcelable;
import android.view.View;
import java.util.Collections;
import java.util.List;

public class AccessibilityRecordCompat {
    private static final AccessibilityRecordImpl IMPL;
    private final Object mRecord;

    interface AccessibilityRecordImpl {
        int getAddedCount(Object obj);

        CharSequence getBeforeText(Object obj);

        CharSequence getClassName(Object obj);

        CharSequence getContentDescription(Object obj);

        int getCurrentItemIndex(Object obj);

        int getFromIndex(Object obj);

        int getItemCount(Object obj);

        int getMaxScrollX(Object obj);

        int getMaxScrollY(Object obj);

        Parcelable getParcelableData(Object obj);

        int getRemovedCount(Object obj);

        int getScrollX(Object obj);

        int getScrollY(Object obj);

        AccessibilityNodeInfoCompat getSource(Object obj);

        List<CharSequence> getText(Object obj);

        int getToIndex(Object obj);

        int getWindowId(Object obj);

        boolean isChecked(Object obj);

        boolean isEnabled(Object obj);

        boolean isFullScreen(Object obj);

        boolean isPassword(Object obj);

        boolean isScrollable(Object obj);

        Object obtain();

        Object obtain(Object obj);

        void recycle(Object obj);

        void setAddedCount(Object obj, int i);

        void setBeforeText(Object obj, CharSequence charSequence);

        void setChecked(Object obj, boolean z);

        void setClassName(Object obj, CharSequence charSequence);

        void setContentDescription(Object obj, CharSequence charSequence);

        void setCurrentItemIndex(Object obj, int i);

        void setEnabled(Object obj, boolean z);

        void setFromIndex(Object obj, int i);

        void setFullScreen(Object obj, boolean z);

        void setItemCount(Object obj, int i);

        void setMaxScrollX(Object obj, int i);

        void setMaxScrollY(Object obj, int i);

        void setParcelableData(Object obj, Parcelable parcelable);

        void setPassword(Object obj, boolean z);

        void setRemovedCount(Object obj, int i);

        void setScrollX(Object obj, int i);

        void setScrollY(Object obj, int i);

        void setScrollable(Object obj, boolean z);

        void setSource(Object obj, View view);

        void setSource(Object obj, View view, int i);

        void setToIndex(Object obj, int i);
    }

    static class AccessibilityRecordStubImpl implements AccessibilityRecordImpl {
        AccessibilityRecordStubImpl() {
        }

        public int getAddedCount(Object obj) {
            return 0;
        }

        public CharSequence getBeforeText(Object obj) {
            return null;
        }

        public CharSequence getClassName(Object obj) {
            return null;
        }

        public CharSequence getContentDescription(Object obj) {
            return null;
        }

        public int getCurrentItemIndex(Object obj) {
            return 0;
        }

        public int getFromIndex(Object obj) {
            return 0;
        }

        public int getItemCount(Object obj) {
            return 0;
        }

        public int getMaxScrollX(Object obj) {
            return 0;
        }

        public int getMaxScrollY(Object obj) {
            return 0;
        }

        public Parcelable getParcelableData(Object obj) {
            return null;
        }

        public int getRemovedCount(Object obj) {
            return 0;
        }

        public int getScrollX(Object obj) {
            return 0;
        }

        public int getScrollY(Object obj) {
            return 0;
        }

        public AccessibilityNodeInfoCompat getSource(Object obj) {
            return null;
        }

        public List<CharSequence> getText(Object obj) {
            return Collections.emptyList();
        }

        public int getToIndex(Object obj) {
            return 0;
        }

        public int getWindowId(Object obj) {
            return 0;
        }

        public boolean isChecked(Object obj) {
            return false;
        }

        public boolean isEnabled(Object obj) {
            return false;
        }

        public boolean isFullScreen(Object obj) {
            return false;
        }

        public boolean isPassword(Object obj) {
            return false;
        }

        public boolean isScrollable(Object obj) {
            return false;
        }

        public Object obtain() {
            return null;
        }

        public Object obtain(Object obj) {
            return null;
        }

        public void recycle(Object obj) {
        }

        public void setAddedCount(Object obj, int i) {
        }

        public void setBeforeText(Object obj, CharSequence charSequence) {
        }

        public void setChecked(Object obj, boolean z) {
        }

        public void setClassName(Object obj, CharSequence charSequence) {
        }

        public void setContentDescription(Object obj, CharSequence charSequence) {
        }

        public void setCurrentItemIndex(Object obj, int i) {
        }

        public void setEnabled(Object obj, boolean z) {
        }

        public void setFromIndex(Object obj, int i) {
        }

        public void setFullScreen(Object obj, boolean z) {
        }

        public void setItemCount(Object obj, int i) {
        }

        public void setMaxScrollX(Object obj, int i) {
        }

        public void setMaxScrollY(Object obj, int i) {
        }

        public void setParcelableData(Object obj, Parcelable parcelable) {
        }

        public void setPassword(Object obj, boolean z) {
        }

        public void setRemovedCount(Object obj, int i) {
        }

        public void setScrollX(Object obj, int i) {
        }

        public void setScrollY(Object obj, int i) {
        }

        public void setScrollable(Object obj, boolean z) {
        }

        public void setSource(Object obj, View view) {
        }

        public void setSource(Object obj, View view, int i) {
        }

        public void setToIndex(Object obj, int i) {
        }
    }

    static class AccessibilityRecordIcsImpl extends AccessibilityRecordStubImpl {
        AccessibilityRecordIcsImpl() {
        }

        public int getAddedCount(Object obj) {
            return AccessibilityRecordCompatIcs.getAddedCount(obj);
        }

        public CharSequence getBeforeText(Object obj) {
            return AccessibilityRecordCompatIcs.getBeforeText(obj);
        }

        public CharSequence getClassName(Object obj) {
            return AccessibilityRecordCompatIcs.getClassName(obj);
        }

        public CharSequence getContentDescription(Object obj) {
            return AccessibilityRecordCompatIcs.getContentDescription(obj);
        }

        public int getCurrentItemIndex(Object obj) {
            return AccessibilityRecordCompatIcs.getCurrentItemIndex(obj);
        }

        public int getFromIndex(Object obj) {
            return AccessibilityRecordCompatIcs.getFromIndex(obj);
        }

        public int getItemCount(Object obj) {
            return AccessibilityRecordCompatIcs.getItemCount(obj);
        }

        public Parcelable getParcelableData(Object obj) {
            return AccessibilityRecordCompatIcs.getParcelableData(obj);
        }

        public int getRemovedCount(Object obj) {
            return AccessibilityRecordCompatIcs.getRemovedCount(obj);
        }

        public int getScrollX(Object obj) {
            return AccessibilityRecordCompatIcs.getScrollX(obj);
        }

        public int getScrollY(Object obj) {
            return AccessibilityRecordCompatIcs.getScrollY(obj);
        }

        public AccessibilityNodeInfoCompat getSource(Object obj) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(AccessibilityRecordCompatIcs.getSource(obj));
        }

        public List<CharSequence> getText(Object obj) {
            return AccessibilityRecordCompatIcs.getText(obj);
        }

        public int getToIndex(Object obj) {
            return AccessibilityRecordCompatIcs.getToIndex(obj);
        }

        public int getWindowId(Object obj) {
            return AccessibilityRecordCompatIcs.getWindowId(obj);
        }

        public boolean isChecked(Object obj) {
            return AccessibilityRecordCompatIcs.isChecked(obj);
        }

        public boolean isEnabled(Object obj) {
            return AccessibilityRecordCompatIcs.isEnabled(obj);
        }

        public boolean isFullScreen(Object obj) {
            return AccessibilityRecordCompatIcs.isFullScreen(obj);
        }

        public boolean isPassword(Object obj) {
            return AccessibilityRecordCompatIcs.isPassword(obj);
        }

        public boolean isScrollable(Object obj) {
            return AccessibilityRecordCompatIcs.isScrollable(obj);
        }

        public Object obtain() {
            return AccessibilityRecordCompatIcs.obtain();
        }

        public Object obtain(Object obj) {
            return AccessibilityRecordCompatIcs.obtain(obj);
        }

        public void recycle(Object obj) {
            AccessibilityRecordCompatIcs.recycle(obj);
        }

        public void setAddedCount(Object obj, int i) {
            AccessibilityRecordCompatIcs.setAddedCount(obj, i);
        }

        public void setBeforeText(Object obj, CharSequence charSequence) {
            AccessibilityRecordCompatIcs.setBeforeText(obj, charSequence);
        }

        public void setChecked(Object obj, boolean z) {
            AccessibilityRecordCompatIcs.setChecked(obj, z);
        }

        public void setClassName(Object obj, CharSequence charSequence) {
            AccessibilityRecordCompatIcs.setClassName(obj, charSequence);
        }

        public void setContentDescription(Object obj, CharSequence charSequence) {
            AccessibilityRecordCompatIcs.setContentDescription(obj, charSequence);
        }

        public void setCurrentItemIndex(Object obj, int i) {
            AccessibilityRecordCompatIcs.setCurrentItemIndex(obj, i);
        }

        public void setEnabled(Object obj, boolean z) {
            AccessibilityRecordCompatIcs.setEnabled(obj, z);
        }

        public void setFromIndex(Object obj, int i) {
            AccessibilityRecordCompatIcs.setFromIndex(obj, i);
        }

        public void setFullScreen(Object obj, boolean z) {
            AccessibilityRecordCompatIcs.setFullScreen(obj, z);
        }

        public void setItemCount(Object obj, int i) {
            AccessibilityRecordCompatIcs.setItemCount(obj, i);
        }

        public void setParcelableData(Object obj, Parcelable parcelable) {
            AccessibilityRecordCompatIcs.setParcelableData(obj, parcelable);
        }

        public void setPassword(Object obj, boolean z) {
            AccessibilityRecordCompatIcs.setPassword(obj, z);
        }

        public void setRemovedCount(Object obj, int i) {
            AccessibilityRecordCompatIcs.setRemovedCount(obj, i);
        }

        public void setScrollX(Object obj, int i) {
            AccessibilityRecordCompatIcs.setScrollX(obj, i);
        }

        public void setScrollY(Object obj, int i) {
            AccessibilityRecordCompatIcs.setScrollY(obj, i);
        }

        public void setScrollable(Object obj, boolean z) {
            AccessibilityRecordCompatIcs.setScrollable(obj, z);
        }

        public void setSource(Object obj, View view) {
            AccessibilityRecordCompatIcs.setSource(obj, view);
        }

        public void setToIndex(Object obj, int i) {
            AccessibilityRecordCompatIcs.setToIndex(obj, i);
        }
    }

    static class AccessibilityRecordIcsMr1Impl extends AccessibilityRecordIcsImpl {
        AccessibilityRecordIcsMr1Impl() {
        }

        public int getMaxScrollX(Object obj) {
            return AccessibilityRecordCompatIcsMr1.getMaxScrollX(obj);
        }

        public int getMaxScrollY(Object obj) {
            return AccessibilityRecordCompatIcsMr1.getMaxScrollY(obj);
        }

        public void setMaxScrollX(Object obj, int i) {
            AccessibilityRecordCompatIcsMr1.setMaxScrollX(obj, i);
        }

        public void setMaxScrollY(Object obj, int i) {
            AccessibilityRecordCompatIcsMr1.setMaxScrollY(obj, i);
        }
    }

    static class AccessibilityRecordJellyBeanImpl extends AccessibilityRecordIcsMr1Impl {
        AccessibilityRecordJellyBeanImpl() {
        }

        public void setSource(Object obj, View view, int i) {
            AccessibilityRecordCompatJellyBean.setSource(obj, view, i);
        }
    }

    static {
        if (VERSION.SDK_INT >= 16) {
            IMPL = new AccessibilityRecordJellyBeanImpl();
        } else if (VERSION.SDK_INT >= 15) {
            IMPL = new AccessibilityRecordIcsMr1Impl();
        } else if (VERSION.SDK_INT >= 14) {
            IMPL = new AccessibilityRecordIcsImpl();
        } else {
            IMPL = new AccessibilityRecordStubImpl();
        }
    }

    public AccessibilityRecordCompat(Object obj) {
        this.mRecord = obj;
    }

    public static AccessibilityRecordCompat obtain() {
        return new AccessibilityRecordCompat(IMPL.obtain());
    }

    public static AccessibilityRecordCompat obtain(AccessibilityRecordCompat accessibilityRecordCompat) {
        return new AccessibilityRecordCompat(IMPL.obtain(accessibilityRecordCompat.mRecord));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccessibilityRecordCompat accessibilityRecordCompat = (AccessibilityRecordCompat) obj;
            if (this.mRecord == null) {
                if (accessibilityRecordCompat.mRecord != null) {
                    return false;
                }
            } else if (!this.mRecord.equals(accessibilityRecordCompat.mRecord)) {
                return false;
            }
        }
        return true;
    }

    public int getAddedCount() {
        return IMPL.getAddedCount(this.mRecord);
    }

    public CharSequence getBeforeText() {
        return IMPL.getBeforeText(this.mRecord);
    }

    public CharSequence getClassName() {
        return IMPL.getClassName(this.mRecord);
    }

    public CharSequence getContentDescription() {
        return IMPL.getContentDescription(this.mRecord);
    }

    public int getCurrentItemIndex() {
        return IMPL.getCurrentItemIndex(this.mRecord);
    }

    public int getFromIndex() {
        return IMPL.getFromIndex(this.mRecord);
    }

    public Object getImpl() {
        return this.mRecord;
    }

    public int getItemCount() {
        return IMPL.getItemCount(this.mRecord);
    }

    public int getMaxScrollX() {
        return IMPL.getMaxScrollX(this.mRecord);
    }

    public int getMaxScrollY() {
        return IMPL.getMaxScrollY(this.mRecord);
    }

    public Parcelable getParcelableData() {
        return IMPL.getParcelableData(this.mRecord);
    }

    public int getRemovedCount() {
        return IMPL.getRemovedCount(this.mRecord);
    }

    public int getScrollX() {
        return IMPL.getScrollX(this.mRecord);
    }

    public int getScrollY() {
        return IMPL.getScrollY(this.mRecord);
    }

    public AccessibilityNodeInfoCompat getSource() {
        return IMPL.getSource(this.mRecord);
    }

    public List<CharSequence> getText() {
        return IMPL.getText(this.mRecord);
    }

    public int getToIndex() {
        return IMPL.getToIndex(this.mRecord);
    }

    public int getWindowId() {
        return IMPL.getWindowId(this.mRecord);
    }

    public int hashCode() {
        return this.mRecord == null ? 0 : this.mRecord.hashCode();
    }

    public boolean isChecked() {
        return IMPL.isChecked(this.mRecord);
    }

    public boolean isEnabled() {
        return IMPL.isEnabled(this.mRecord);
    }

    public boolean isFullScreen() {
        return IMPL.isFullScreen(this.mRecord);
    }

    public boolean isPassword() {
        return IMPL.isPassword(this.mRecord);
    }

    public boolean isScrollable() {
        return IMPL.isScrollable(this.mRecord);
    }

    public void recycle() {
        IMPL.recycle(this.mRecord);
    }

    public void setAddedCount(int i) {
        IMPL.setAddedCount(this.mRecord, i);
    }

    public void setBeforeText(CharSequence charSequence) {
        IMPL.setBeforeText(this.mRecord, charSequence);
    }

    public void setChecked(boolean z) {
        IMPL.setChecked(this.mRecord, z);
    }

    public void setClassName(CharSequence charSequence) {
        IMPL.setClassName(this.mRecord, charSequence);
    }

    public void setContentDescription(CharSequence charSequence) {
        IMPL.setContentDescription(this.mRecord, charSequence);
    }

    public void setCurrentItemIndex(int i) {
        IMPL.setCurrentItemIndex(this.mRecord, i);
    }

    public void setEnabled(boolean z) {
        IMPL.setEnabled(this.mRecord, z);
    }

    public void setFromIndex(int i) {
        IMPL.setFromIndex(this.mRecord, i);
    }

    public void setFullScreen(boolean z) {
        IMPL.setFullScreen(this.mRecord, z);
    }

    public void setItemCount(int i) {
        IMPL.setItemCount(this.mRecord, i);
    }

    public void setMaxScrollX(int i) {
        IMPL.setMaxScrollX(this.mRecord, i);
    }

    public void setMaxScrollY(int i) {
        IMPL.setMaxScrollY(this.mRecord, i);
    }

    public void setParcelableData(Parcelable parcelable) {
        IMPL.setParcelableData(this.mRecord, parcelable);
    }

    public void setPassword(boolean z) {
        IMPL.setPassword(this.mRecord, z);
    }

    public void setRemovedCount(int i) {
        IMPL.setRemovedCount(this.mRecord, i);
    }

    public void setScrollX(int i) {
        IMPL.setScrollX(this.mRecord, i);
    }

    public void setScrollY(int i) {
        IMPL.setScrollY(this.mRecord, i);
    }

    public void setScrollable(boolean z) {
        IMPL.setScrollable(this.mRecord, z);
    }

    public void setSource(View view) {
        IMPL.setSource(this.mRecord, view);
    }

    public void setSource(View view, int i) {
        IMPL.setSource(this.mRecord, view, i);
    }

    public void setToIndex(int i) {
        IMPL.setToIndex(this.mRecord, i);
    }
}
