package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    private static final AccessibilityNodeInfoImpl IMPL;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    private final Object mInfo;

    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS;
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS;
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS;
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION;
        public static final AccessibilityActionCompat ACTION_CLICK;
        public static final AccessibilityActionCompat ACTION_COLLAPSE;
        public static final AccessibilityActionCompat ACTION_COPY;
        public static final AccessibilityActionCompat ACTION_CUT;
        public static final AccessibilityActionCompat ACTION_DISMISS;
        public static final AccessibilityActionCompat ACTION_EXPAND;
        public static final AccessibilityActionCompat ACTION_FOCUS;
        public static final AccessibilityActionCompat ACTION_LONG_CLICK;
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY;
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT;
        public static final AccessibilityActionCompat ACTION_PASTE;
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY;
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT;
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD;
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD;
        public static final AccessibilityActionCompat ACTION_SELECT;
        public static final AccessibilityActionCompat ACTION_SET_SELECTION;
        public static final AccessibilityActionCompat ACTION_SET_TEXT;
        private final Object mAction;

        static {
            ACTION_FOCUS = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.MOVEMENT_GRANULARITY_CHARACTER, null);
            ACTION_CLEAR_FOCUS = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.MOVEMENT_GRANULARITY_WORD, null);
            ACTION_SELECT = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.MOVEMENT_GRANULARITY_LINE, null);
            ACTION_CLEAR_SELECTION = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.MOVEMENT_GRANULARITY_PARAGRAPH, null);
            ACTION_CLICK = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.MOVEMENT_GRANULARITY_PAGE, null);
            ACTION_LONG_CLICK = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_LONG_CLICK, null);
            ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_ACCESSIBILITY_FOCUS, null);
            ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS, null);
            ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, null);
            ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY, null);
            ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, null);
            ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT, null);
            ACTION_SCROLL_FORWARD = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD, null);
            ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, null);
            ACTION_COPY = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_COPY, null);
            ACTION_PASTE = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_PASTE, null);
            ACTION_CUT = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_CUT, null);
            ACTION_SET_SELECTION = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_SET_SELECTION, null);
            ACTION_EXPAND = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_EXPAND, null);
            ACTION_COLLAPSE = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_COLLAPSE, null);
            ACTION_DISMISS = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_DISMISS, null);
            ACTION_SET_TEXT = new AccessibilityActionCompat((int) AccessibilityNodeInfoCompat.ACTION_SET_TEXT, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence) {
            this(AccessibilityNodeInfoCompat.IMPL.newAccessibilityAction(i, charSequence));
        }

        private AccessibilityActionCompat(Object obj) {
            this.mAction = obj;
        }

        public int getId() {
            return AccessibilityNodeInfoCompat.IMPL.getAccessibilityActionId(this.mAction);
        }

        public CharSequence getLabel() {
            return AccessibilityNodeInfoCompat.IMPL.getAccessibilityActionLabel(this.mAction);
        }
    }

    interface AccessibilityNodeInfoImpl {
        void addAction(Object obj, int i);

        void addAction(Object obj, Object obj2);

        void addChild(Object obj, View view);

        void addChild(Object obj, View view, int i);

        boolean canOpenPopup(Object obj);

        List<Object> findAccessibilityNodeInfosByText(Object obj, String str);

        List<Object> findAccessibilityNodeInfosByViewId(Object obj, String str);

        Object findFocus(Object obj, int i);

        Object focusSearch(Object obj, int i);

        int getAccessibilityActionId(Object obj);

        CharSequence getAccessibilityActionLabel(Object obj);

        List<Object> getActionList(Object obj);

        int getActions(Object obj);

        void getBoundsInParent(Object obj, Rect rect);

        void getBoundsInScreen(Object obj, Rect rect);

        Object getChild(Object obj, int i);

        int getChildCount(Object obj);

        CharSequence getClassName(Object obj);

        Object getCollectionInfo(Object obj);

        int getCollectionInfoColumnCount(Object obj);

        int getCollectionInfoRowCount(Object obj);

        int getCollectionItemColumnIndex(Object obj);

        int getCollectionItemColumnSpan(Object obj);

        Object getCollectionItemInfo(Object obj);

        int getCollectionItemRowIndex(Object obj);

        int getCollectionItemRowSpan(Object obj);

        CharSequence getContentDescription(Object obj);

        CharSequence getError(Object obj);

        Bundle getExtras(Object obj);

        int getInputType(Object obj);

        Object getLabelFor(Object obj);

        Object getLabeledBy(Object obj);

        int getLiveRegion(Object obj);

        int getMaxTextLength(Object obj);

        int getMovementGranularities(Object obj);

        CharSequence getPackageName(Object obj);

        Object getParent(Object obj);

        Object getRangeInfo(Object obj);

        CharSequence getText(Object obj);

        int getTextSelectionEnd(Object obj);

        int getTextSelectionStart(Object obj);

        Object getTraversalAfter(Object obj);

        Object getTraversalBefore(Object obj);

        String getViewIdResourceName(Object obj);

        Object getWindow(Object obj);

        int getWindowId(Object obj);

        boolean isAccessibilityFocused(Object obj);

        boolean isCheckable(Object obj);

        boolean isChecked(Object obj);

        boolean isClickable(Object obj);

        boolean isCollectionInfoHierarchical(Object obj);

        boolean isCollectionItemHeading(Object obj);

        boolean isCollectionItemSelected(Object obj);

        boolean isContentInvalid(Object obj);

        boolean isDismissable(Object obj);

        boolean isEditable(Object obj);

        boolean isEnabled(Object obj);

        boolean isFocusable(Object obj);

        boolean isFocused(Object obj);

        boolean isLongClickable(Object obj);

        boolean isMultiLine(Object obj);

        boolean isPassword(Object obj);

        boolean isScrollable(Object obj);

        boolean isSelected(Object obj);

        boolean isVisibleToUser(Object obj);

        Object newAccessibilityAction(int i, CharSequence charSequence);

        Object obtain();

        Object obtain(View view);

        Object obtain(View view, int i);

        Object obtain(Object obj);

        Object obtainCollectionInfo(int i, int i2, boolean z, int i3);

        Object obtainCollectionItemInfo(int i, int i2, int i3, int i4, boolean z, boolean z2);

        boolean performAction(Object obj, int i);

        boolean performAction(Object obj, int i, Bundle bundle);

        void recycle(Object obj);

        boolean refresh(Object obj);

        boolean removeAction(Object obj, Object obj2);

        boolean removeChild(Object obj, View view);

        boolean removeChild(Object obj, View view, int i);

        void setAccessibilityFocused(Object obj, boolean z);

        void setBoundsInParent(Object obj, Rect rect);

        void setBoundsInScreen(Object obj, Rect rect);

        void setCanOpenPopup(Object obj, boolean z);

        void setCheckable(Object obj, boolean z);

        void setChecked(Object obj, boolean z);

        void setClassName(Object obj, CharSequence charSequence);

        void setClickable(Object obj, boolean z);

        void setCollectionInfo(Object obj, Object obj2);

        void setCollectionItemInfo(Object obj, Object obj2);

        void setContentDescription(Object obj, CharSequence charSequence);

        void setContentInvalid(Object obj, boolean z);

        void setDismissable(Object obj, boolean z);

        void setEditable(Object obj, boolean z);

        void setEnabled(Object obj, boolean z);

        void setError(Object obj, CharSequence charSequence);

        void setFocusable(Object obj, boolean z);

        void setFocused(Object obj, boolean z);

        void setInputType(Object obj, int i);

        void setLabelFor(Object obj, View view);

        void setLabelFor(Object obj, View view, int i);

        void setLabeledBy(Object obj, View view);

        void setLabeledBy(Object obj, View view, int i);

        void setLiveRegion(Object obj, int i);

        void setLongClickable(Object obj, boolean z);

        void setMaxTextLength(Object obj, int i);

        void setMovementGranularities(Object obj, int i);

        void setMultiLine(Object obj, boolean z);

        void setPackageName(Object obj, CharSequence charSequence);

        void setParent(Object obj, View view);

        void setParent(Object obj, View view, int i);

        void setPassword(Object obj, boolean z);

        void setRangeInfo(Object obj, Object obj2);

        void setScrollable(Object obj, boolean z);

        void setSelected(Object obj, boolean z);

        void setSource(Object obj, View view);

        void setSource(Object obj, View view, int i);

        void setText(Object obj, CharSequence charSequence);

        void setTextSelection(Object obj, int i, int i2);

        void setTraversalAfter(Object obj, View view);

        void setTraversalAfter(Object obj, View view, int i);

        void setTraversalBefore(Object obj, View view);

        void setTraversalBefore(Object obj, View view, int i);

        void setViewIdResourceName(Object obj, String str);

        void setVisibleToUser(Object obj, boolean z);
    }

    static class AccessibilityNodeInfoStubImpl implements AccessibilityNodeInfoImpl {
        AccessibilityNodeInfoStubImpl() {
        }

        public void addAction(Object obj, int i) {
        }

        public void addAction(Object obj, Object obj2) {
        }

        public void addChild(Object obj, View view) {
        }

        public void addChild(Object obj, View view, int i) {
        }

        public boolean canOpenPopup(Object obj) {
            return false;
        }

        public List<Object> findAccessibilityNodeInfosByText(Object obj, String str) {
            return Collections.emptyList();
        }

        public List<Object> findAccessibilityNodeInfosByViewId(Object obj, String str) {
            return Collections.emptyList();
        }

        public Object findFocus(Object obj, int i) {
            return null;
        }

        public Object focusSearch(Object obj, int i) {
            return null;
        }

        public int getAccessibilityActionId(Object obj) {
            return 0;
        }

        public CharSequence getAccessibilityActionLabel(Object obj) {
            return null;
        }

        public List<Object> getActionList(Object obj) {
            return null;
        }

        public int getActions(Object obj) {
            return 0;
        }

        public void getBoundsInParent(Object obj, Rect rect) {
        }

        public void getBoundsInScreen(Object obj, Rect rect) {
        }

        public Object getChild(Object obj, int i) {
            return null;
        }

        public int getChildCount(Object obj) {
            return 0;
        }

        public CharSequence getClassName(Object obj) {
            return null;
        }

        public Object getCollectionInfo(Object obj) {
            return null;
        }

        public int getCollectionInfoColumnCount(Object obj) {
            return 0;
        }

        public int getCollectionInfoRowCount(Object obj) {
            return 0;
        }

        public int getCollectionItemColumnIndex(Object obj) {
            return 0;
        }

        public int getCollectionItemColumnSpan(Object obj) {
            return 0;
        }

        public Object getCollectionItemInfo(Object obj) {
            return null;
        }

        public int getCollectionItemRowIndex(Object obj) {
            return 0;
        }

        public int getCollectionItemRowSpan(Object obj) {
            return 0;
        }

        public CharSequence getContentDescription(Object obj) {
            return null;
        }

        public CharSequence getError(Object obj) {
            return null;
        }

        public Bundle getExtras(Object obj) {
            return new Bundle();
        }

        public int getInputType(Object obj) {
            return 0;
        }

        public Object getLabelFor(Object obj) {
            return null;
        }

        public Object getLabeledBy(Object obj) {
            return null;
        }

        public int getLiveRegion(Object obj) {
            return 0;
        }

        public int getMaxTextLength(Object obj) {
            return -1;
        }

        public int getMovementGranularities(Object obj) {
            return 0;
        }

        public CharSequence getPackageName(Object obj) {
            return null;
        }

        public Object getParent(Object obj) {
            return null;
        }

        public Object getRangeInfo(Object obj) {
            return null;
        }

        public CharSequence getText(Object obj) {
            return null;
        }

        public int getTextSelectionEnd(Object obj) {
            return -1;
        }

        public int getTextSelectionStart(Object obj) {
            return -1;
        }

        public Object getTraversalAfter(Object obj) {
            return null;
        }

        public Object getTraversalBefore(Object obj) {
            return null;
        }

        public String getViewIdResourceName(Object obj) {
            return null;
        }

        public Object getWindow(Object obj) {
            return null;
        }

        public int getWindowId(Object obj) {
            return 0;
        }

        public boolean isAccessibilityFocused(Object obj) {
            return false;
        }

        public boolean isCheckable(Object obj) {
            return false;
        }

        public boolean isChecked(Object obj) {
            return false;
        }

        public boolean isClickable(Object obj) {
            return false;
        }

        public boolean isCollectionInfoHierarchical(Object obj) {
            return false;
        }

        public boolean isCollectionItemHeading(Object obj) {
            return false;
        }

        public boolean isCollectionItemSelected(Object obj) {
            return false;
        }

        public boolean isContentInvalid(Object obj) {
            return false;
        }

        public boolean isDismissable(Object obj) {
            return false;
        }

        public boolean isEditable(Object obj) {
            return false;
        }

        public boolean isEnabled(Object obj) {
            return false;
        }

        public boolean isFocusable(Object obj) {
            return false;
        }

        public boolean isFocused(Object obj) {
            return false;
        }

        public boolean isLongClickable(Object obj) {
            return false;
        }

        public boolean isMultiLine(Object obj) {
            return false;
        }

        public boolean isPassword(Object obj) {
            return false;
        }

        public boolean isScrollable(Object obj) {
            return false;
        }

        public boolean isSelected(Object obj) {
            return false;
        }

        public boolean isVisibleToUser(Object obj) {
            return false;
        }

        public Object newAccessibilityAction(int i, CharSequence charSequence) {
            return null;
        }

        public Object obtain() {
            return null;
        }

        public Object obtain(View view) {
            return null;
        }

        public Object obtain(View view, int i) {
            return null;
        }

        public Object obtain(Object obj) {
            return null;
        }

        public Object obtainCollectionInfo(int i, int i2, boolean z, int i3) {
            return null;
        }

        public Object obtainCollectionItemInfo(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return null;
        }

        public boolean performAction(Object obj, int i) {
            return false;
        }

        public boolean performAction(Object obj, int i, Bundle bundle) {
            return false;
        }

        public void recycle(Object obj) {
        }

        public boolean refresh(Object obj) {
            return false;
        }

        public boolean removeAction(Object obj, Object obj2) {
            return false;
        }

        public boolean removeChild(Object obj, View view) {
            return false;
        }

        public boolean removeChild(Object obj, View view, int i) {
            return false;
        }

        public void setAccessibilityFocused(Object obj, boolean z) {
        }

        public void setBoundsInParent(Object obj, Rect rect) {
        }

        public void setBoundsInScreen(Object obj, Rect rect) {
        }

        public void setCanOpenPopup(Object obj, boolean z) {
        }

        public void setCheckable(Object obj, boolean z) {
        }

        public void setChecked(Object obj, boolean z) {
        }

        public void setClassName(Object obj, CharSequence charSequence) {
        }

        public void setClickable(Object obj, boolean z) {
        }

        public void setCollectionInfo(Object obj, Object obj2) {
        }

        public void setCollectionItemInfo(Object obj, Object obj2) {
        }

        public void setContentDescription(Object obj, CharSequence charSequence) {
        }

        public void setContentInvalid(Object obj, boolean z) {
        }

        public void setDismissable(Object obj, boolean z) {
        }

        public void setEditable(Object obj, boolean z) {
        }

        public void setEnabled(Object obj, boolean z) {
        }

        public void setError(Object obj, CharSequence charSequence) {
        }

        public void setFocusable(Object obj, boolean z) {
        }

        public void setFocused(Object obj, boolean z) {
        }

        public void setInputType(Object obj, int i) {
        }

        public void setLabelFor(Object obj, View view) {
        }

        public void setLabelFor(Object obj, View view, int i) {
        }

        public void setLabeledBy(Object obj, View view) {
        }

        public void setLabeledBy(Object obj, View view, int i) {
        }

        public void setLiveRegion(Object obj, int i) {
        }

        public void setLongClickable(Object obj, boolean z) {
        }

        public void setMaxTextLength(Object obj, int i) {
        }

        public void setMovementGranularities(Object obj, int i) {
        }

        public void setMultiLine(Object obj, boolean z) {
        }

        public void setPackageName(Object obj, CharSequence charSequence) {
        }

        public void setParent(Object obj, View view) {
        }

        public void setParent(Object obj, View view, int i) {
        }

        public void setPassword(Object obj, boolean z) {
        }

        public void setRangeInfo(Object obj, Object obj2) {
        }

        public void setScrollable(Object obj, boolean z) {
        }

        public void setSelected(Object obj, boolean z) {
        }

        public void setSource(Object obj, View view) {
        }

        public void setSource(Object obj, View view, int i) {
        }

        public void setText(Object obj, CharSequence charSequence) {
        }

        public void setTextSelection(Object obj, int i, int i2) {
        }

        public void setTraversalAfter(Object obj, View view) {
        }

        public void setTraversalAfter(Object obj, View view, int i) {
        }

        public void setTraversalBefore(Object obj, View view) {
        }

        public void setTraversalBefore(Object obj, View view, int i) {
        }

        public void setViewIdResourceName(Object obj, String str) {
        }

        public void setVisibleToUser(Object obj, boolean z) {
        }
    }

    static class AccessibilityNodeInfoIcsImpl extends AccessibilityNodeInfoStubImpl {
        AccessibilityNodeInfoIcsImpl() {
        }

        public void addAction(Object obj, int i) {
            AccessibilityNodeInfoCompatIcs.addAction(obj, i);
        }

        public void addChild(Object obj, View view) {
            AccessibilityNodeInfoCompatIcs.addChild(obj, view);
        }

        public List<Object> findAccessibilityNodeInfosByText(Object obj, String str) {
            return AccessibilityNodeInfoCompatIcs.findAccessibilityNodeInfosByText(obj, str);
        }

        public int getActions(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getActions(obj);
        }

        public void getBoundsInParent(Object obj, Rect rect) {
            AccessibilityNodeInfoCompatIcs.getBoundsInParent(obj, rect);
        }

        public void getBoundsInScreen(Object obj, Rect rect) {
            AccessibilityNodeInfoCompatIcs.getBoundsInScreen(obj, rect);
        }

        public Object getChild(Object obj, int i) {
            return AccessibilityNodeInfoCompatIcs.getChild(obj, i);
        }

        public int getChildCount(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getChildCount(obj);
        }

        public CharSequence getClassName(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getClassName(obj);
        }

        public CharSequence getContentDescription(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getContentDescription(obj);
        }

        public CharSequence getPackageName(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getPackageName(obj);
        }

        public Object getParent(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getParent(obj);
        }

        public CharSequence getText(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getText(obj);
        }

        public int getWindowId(Object obj) {
            return AccessibilityNodeInfoCompatIcs.getWindowId(obj);
        }

        public boolean isCheckable(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isCheckable(obj);
        }

        public boolean isChecked(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isChecked(obj);
        }

        public boolean isClickable(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isClickable(obj);
        }

        public boolean isEnabled(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isEnabled(obj);
        }

        public boolean isFocusable(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isFocusable(obj);
        }

        public boolean isFocused(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isFocused(obj);
        }

        public boolean isLongClickable(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isLongClickable(obj);
        }

        public boolean isPassword(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isPassword(obj);
        }

        public boolean isScrollable(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isScrollable(obj);
        }

        public boolean isSelected(Object obj) {
            return AccessibilityNodeInfoCompatIcs.isSelected(obj);
        }

        public Object obtain() {
            return AccessibilityNodeInfoCompatIcs.obtain();
        }

        public Object obtain(View view) {
            return AccessibilityNodeInfoCompatIcs.obtain(view);
        }

        public Object obtain(Object obj) {
            return AccessibilityNodeInfoCompatIcs.obtain(obj);
        }

        public boolean performAction(Object obj, int i) {
            return AccessibilityNodeInfoCompatIcs.performAction(obj, i);
        }

        public void recycle(Object obj) {
            AccessibilityNodeInfoCompatIcs.recycle(obj);
        }

        public void setBoundsInParent(Object obj, Rect rect) {
            AccessibilityNodeInfoCompatIcs.setBoundsInParent(obj, rect);
        }

        public void setBoundsInScreen(Object obj, Rect rect) {
            AccessibilityNodeInfoCompatIcs.setBoundsInScreen(obj, rect);
        }

        public void setCheckable(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setCheckable(obj, z);
        }

        public void setChecked(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setChecked(obj, z);
        }

        public void setClassName(Object obj, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setClassName(obj, charSequence);
        }

        public void setClickable(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setClickable(obj, z);
        }

        public void setContentDescription(Object obj, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setContentDescription(obj, charSequence);
        }

        public void setEnabled(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setEnabled(obj, z);
        }

        public void setFocusable(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setFocusable(obj, z);
        }

        public void setFocused(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setFocused(obj, z);
        }

        public void setLongClickable(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setLongClickable(obj, z);
        }

        public void setPackageName(Object obj, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setPackageName(obj, charSequence);
        }

        public void setParent(Object obj, View view) {
            AccessibilityNodeInfoCompatIcs.setParent(obj, view);
        }

        public void setPassword(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setPassword(obj, z);
        }

        public void setScrollable(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setScrollable(obj, z);
        }

        public void setSelected(Object obj, boolean z) {
            AccessibilityNodeInfoCompatIcs.setSelected(obj, z);
        }

        public void setSource(Object obj, View view) {
            AccessibilityNodeInfoCompatIcs.setSource(obj, view);
        }

        public void setText(Object obj, CharSequence charSequence) {
            AccessibilityNodeInfoCompatIcs.setText(obj, charSequence);
        }
    }

    static class AccessibilityNodeInfoJellybeanImpl extends AccessibilityNodeInfoIcsImpl {
        AccessibilityNodeInfoJellybeanImpl() {
        }

        public void addChild(Object obj, View view, int i) {
            AccessibilityNodeInfoCompatJellyBean.addChild(obj, view, i);
        }

        public Object findFocus(Object obj, int i) {
            return AccessibilityNodeInfoCompatJellyBean.findFocus(obj, i);
        }

        public Object focusSearch(Object obj, int i) {
            return AccessibilityNodeInfoCompatJellyBean.focusSearch(obj, i);
        }

        public int getMovementGranularities(Object obj) {
            return AccessibilityNodeInfoCompatJellyBean.getMovementGranularities(obj);
        }

        public boolean isAccessibilityFocused(Object obj) {
            return AccessibilityNodeInfoCompatJellyBean.isAccessibilityFocused(obj);
        }

        public boolean isVisibleToUser(Object obj) {
            return AccessibilityNodeInfoCompatJellyBean.isVisibleToUser(obj);
        }

        public Object obtain(View view, int i) {
            return AccessibilityNodeInfoCompatJellyBean.obtain(view, i);
        }

        public boolean performAction(Object obj, int i, Bundle bundle) {
            return AccessibilityNodeInfoCompatJellyBean.performAction(obj, i, bundle);
        }

        public void setAccessibilityFocused(Object obj, boolean z) {
            AccessibilityNodeInfoCompatJellyBean.setAccesibilityFocused(obj, z);
        }

        public void setMovementGranularities(Object obj, int i) {
            AccessibilityNodeInfoCompatJellyBean.setMovementGranularities(obj, i);
        }

        public void setParent(Object obj, View view, int i) {
            AccessibilityNodeInfoCompatJellyBean.setParent(obj, view, i);
        }

        public void setSource(Object obj, View view, int i) {
            AccessibilityNodeInfoCompatJellyBean.setSource(obj, view, i);
        }

        public void setVisibleToUser(Object obj, boolean z) {
            AccessibilityNodeInfoCompatJellyBean.setVisibleToUser(obj, z);
        }
    }

    static class AccessibilityNodeInfoJellybeanMr1Impl extends AccessibilityNodeInfoJellybeanImpl {
        AccessibilityNodeInfoJellybeanMr1Impl() {
        }

        public Object getLabelFor(Object obj) {
            return AccessibilityNodeInfoCompatJellybeanMr1.getLabelFor(obj);
        }

        public Object getLabeledBy(Object obj) {
            return AccessibilityNodeInfoCompatJellybeanMr1.getLabeledBy(obj);
        }

        public void setLabelFor(Object obj, View view) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabelFor(obj, view);
        }

        public void setLabelFor(Object obj, View view, int i) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabelFor(obj, view, i);
        }

        public void setLabeledBy(Object obj, View view) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabeledBy(obj, view);
        }

        public void setLabeledBy(Object obj, View view, int i) {
            AccessibilityNodeInfoCompatJellybeanMr1.setLabeledBy(obj, view, i);
        }
    }

    static class AccessibilityNodeInfoJellybeanMr2Impl extends AccessibilityNodeInfoJellybeanMr1Impl {
        AccessibilityNodeInfoJellybeanMr2Impl() {
        }

        public List<Object> findAccessibilityNodeInfosByViewId(Object obj, String str) {
            return AccessibilityNodeInfoCompatJellybeanMr2.findAccessibilityNodeInfosByViewId(obj, str);
        }

        public int getTextSelectionEnd(Object obj) {
            return AccessibilityNodeInfoCompatJellybeanMr2.getTextSelectionEnd(obj);
        }

        public int getTextSelectionStart(Object obj) {
            return AccessibilityNodeInfoCompatJellybeanMr2.getTextSelectionStart(obj);
        }

        public String getViewIdResourceName(Object obj) {
            return AccessibilityNodeInfoCompatJellybeanMr2.getViewIdResourceName(obj);
        }

        public boolean isEditable(Object obj) {
            return AccessibilityNodeInfoCompatJellybeanMr2.isEditable(obj);
        }

        public boolean refresh(Object obj) {
            return AccessibilityNodeInfoCompatJellybeanMr2.refresh(obj);
        }

        public void setEditable(Object obj, boolean z) {
            AccessibilityNodeInfoCompatJellybeanMr2.setEditable(obj, z);
        }

        public void setTextSelection(Object obj, int i, int i2) {
            AccessibilityNodeInfoCompatJellybeanMr2.setTextSelection(obj, i, i2);
        }

        public void setViewIdResourceName(Object obj, String str) {
            AccessibilityNodeInfoCompatJellybeanMr2.setViewIdResourceName(obj, str);
        }
    }

    static class AccessibilityNodeInfoKitKatImpl extends AccessibilityNodeInfoJellybeanMr2Impl {
        AccessibilityNodeInfoKitKatImpl() {
        }

        public boolean canOpenPopup(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.canOpenPopup(obj);
        }

        public Object getCollectionInfo(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.getCollectionInfo(obj);
        }

        public int getCollectionInfoColumnCount(Object obj) {
            return CollectionInfo.getColumnCount(obj);
        }

        public int getCollectionInfoRowCount(Object obj) {
            return CollectionInfo.getRowCount(obj);
        }

        public int getCollectionItemColumnIndex(Object obj) {
            return CollectionItemInfo.getColumnIndex(obj);
        }

        public int getCollectionItemColumnSpan(Object obj) {
            return CollectionItemInfo.getColumnSpan(obj);
        }

        public Object getCollectionItemInfo(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.getCollectionItemInfo(obj);
        }

        public int getCollectionItemRowIndex(Object obj) {
            return CollectionItemInfo.getRowIndex(obj);
        }

        public int getCollectionItemRowSpan(Object obj) {
            return CollectionItemInfo.getRowSpan(obj);
        }

        public Bundle getExtras(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.getExtras(obj);
        }

        public int getInputType(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.getInputType(obj);
        }

        public int getLiveRegion(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.getLiveRegion(obj);
        }

        public Object getRangeInfo(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.getRangeInfo(obj);
        }

        public boolean isCollectionInfoHierarchical(Object obj) {
            return CollectionInfo.isHierarchical(obj);
        }

        public boolean isCollectionItemHeading(Object obj) {
            return CollectionItemInfo.isHeading(obj);
        }

        public boolean isContentInvalid(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.isContentInvalid(obj);
        }

        public boolean isDismissable(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.isDismissable(obj);
        }

        public boolean isMultiLine(Object obj) {
            return AccessibilityNodeInfoCompatKitKat.isMultiLine(obj);
        }

        public Object obtainCollectionInfo(int i, int i2, boolean z, int i3) {
            return AccessibilityNodeInfoCompatKitKat.obtainCollectionInfo(i, i2, z, i3);
        }

        public Object obtainCollectionItemInfo(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return AccessibilityNodeInfoCompatKitKat.obtainCollectionItemInfo(i, i2, i3, i4, z);
        }

        public void setCanOpenPopup(Object obj, boolean z) {
            AccessibilityNodeInfoCompatKitKat.setCanOpenPopup(obj, z);
        }

        public void setCollectionInfo(Object obj, Object obj2) {
            AccessibilityNodeInfoCompatKitKat.setCollectionInfo(obj, obj2);
        }

        public void setCollectionItemInfo(Object obj, Object obj2) {
            AccessibilityNodeInfoCompatKitKat.setCollectionItemInfo(obj, obj2);
        }

        public void setContentInvalid(Object obj, boolean z) {
            AccessibilityNodeInfoCompatKitKat.setContentInvalid(obj, z);
        }

        public void setDismissable(Object obj, boolean z) {
            AccessibilityNodeInfoCompatKitKat.setDismissable(obj, z);
        }

        public void setInputType(Object obj, int i) {
            AccessibilityNodeInfoCompatKitKat.setInputType(obj, i);
        }

        public void setLiveRegion(Object obj, int i) {
            AccessibilityNodeInfoCompatKitKat.setLiveRegion(obj, i);
        }

        public void setMultiLine(Object obj, boolean z) {
            AccessibilityNodeInfoCompatKitKat.setMultiLine(obj, z);
        }

        public void setRangeInfo(Object obj, Object obj2) {
            AccessibilityNodeInfoCompatKitKat.setRangeInfo(obj, obj2);
        }
    }

    static class AccessibilityNodeInfoApi21Impl extends AccessibilityNodeInfoKitKatImpl {
        AccessibilityNodeInfoApi21Impl() {
        }

        public void addAction(Object obj, Object obj2) {
            AccessibilityNodeInfoCompatApi21.addAction(obj, obj2);
        }

        public int getAccessibilityActionId(Object obj) {
            return AccessibilityNodeInfoCompatApi21.getAccessibilityActionId(obj);
        }

        public CharSequence getAccessibilityActionLabel(Object obj) {
            return AccessibilityNodeInfoCompatApi21.getAccessibilityActionLabel(obj);
        }

        public List<Object> getActionList(Object obj) {
            return AccessibilityNodeInfoCompatApi21.getActionList(obj);
        }

        public CharSequence getError(Object obj) {
            return AccessibilityNodeInfoCompatApi21.getError(obj);
        }

        public int getMaxTextLength(Object obj) {
            return AccessibilityNodeInfoCompatApi21.getMaxTextLength(obj);
        }

        public Object getWindow(Object obj) {
            return AccessibilityNodeInfoCompatApi21.getWindow(obj);
        }

        public boolean isCollectionItemSelected(Object obj) {
            return CollectionItemInfo.isSelected(obj);
        }

        public Object newAccessibilityAction(int i, CharSequence charSequence) {
            return AccessibilityNodeInfoCompatApi21.newAccessibilityAction(i, charSequence);
        }

        public Object obtainCollectionInfo(int i, int i2, boolean z, int i3) {
            return AccessibilityNodeInfoCompatApi21.obtainCollectionInfo(i, i2, z, i3);
        }

        public Object obtainCollectionItemInfo(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return AccessibilityNodeInfoCompatApi21.obtainCollectionItemInfo(i, i2, i3, i4, z, z2);
        }

        public boolean removeAction(Object obj, Object obj2) {
            return AccessibilityNodeInfoCompatApi21.removeAction(obj, obj2);
        }

        public boolean removeChild(Object obj, View view) {
            return AccessibilityNodeInfoCompatApi21.removeChild(obj, view);
        }

        public boolean removeChild(Object obj, View view, int i) {
            return AccessibilityNodeInfoCompatApi21.removeChild(obj, view, i);
        }

        public void setError(Object obj, CharSequence charSequence) {
            AccessibilityNodeInfoCompatApi21.setError(obj, charSequence);
        }

        public void setMaxTextLength(Object obj, int i) {
            AccessibilityNodeInfoCompatApi21.setMaxTextLength(obj, i);
        }
    }

    static class AccessibilityNodeInfoApi22Impl extends AccessibilityNodeInfoApi21Impl {
        AccessibilityNodeInfoApi22Impl() {
        }

        public Object getTraversalAfter(Object obj) {
            return AccessibilityNodeInfoCompatApi22.getTraversalAfter(obj);
        }

        public Object getTraversalBefore(Object obj) {
            return AccessibilityNodeInfoCompatApi22.getTraversalBefore(obj);
        }

        public void setTraversalAfter(Object obj, View view) {
            AccessibilityNodeInfoCompatApi22.setTraversalAfter(obj, view);
        }

        public void setTraversalAfter(Object obj, View view, int i) {
            AccessibilityNodeInfoCompatApi22.setTraversalAfter(obj, view, i);
        }

        public void setTraversalBefore(Object obj, View view) {
            AccessibilityNodeInfoCompatApi22.setTraversalBefore(obj, view);
        }

        public void setTraversalBefore(Object obj, View view, int i) {
            AccessibilityNodeInfoCompatApi22.setTraversalBefore(obj, view, i);
        }
    }

    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;
        final Object mInfo;

        private CollectionInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public static CollectionInfoCompat obtain(int i, int i2, boolean z, int i3) {
            return new CollectionInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionInfo(i, i2, z, i3));
        }

        public int getColumnCount() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoColumnCount(this.mInfo);
        }

        public int getRowCount() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionInfoRowCount(this.mInfo);
        }

        public boolean isHierarchical() {
            return AccessibilityNodeInfoCompat.IMPL.isCollectionInfoHierarchical(this.mInfo);
        }
    }

    public static class CollectionItemInfoCompat {
        private final Object mInfo;

        private CollectionItemInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new CollectionItemInfoCompat(AccessibilityNodeInfoCompat.IMPL.obtainCollectionItemInfo(i, i2, i3, i4, z, z2));
        }

        public int getColumnIndex() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemColumnIndex(this.mInfo);
        }

        public int getColumnSpan() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemColumnSpan(this.mInfo);
        }

        public int getRowIndex() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemRowIndex(this.mInfo);
        }

        public int getRowSpan() {
            return AccessibilityNodeInfoCompat.IMPL.getCollectionItemRowSpan(this.mInfo);
        }

        public boolean isHeading() {
            return AccessibilityNodeInfoCompat.IMPL.isCollectionItemHeading(this.mInfo);
        }

        public boolean isSelected() {
            return AccessibilityNodeInfoCompat.IMPL.isCollectionItemSelected(this.mInfo);
        }
    }

    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;
        private final Object mInfo;

        private RangeInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public float getCurrent() {
            return RangeInfo.getCurrent(this.mInfo);
        }

        public float getMax() {
            return RangeInfo.getMax(this.mInfo);
        }

        public float getMin() {
            return RangeInfo.getMin(this.mInfo);
        }

        public int getType() {
            return RangeInfo.getType(this.mInfo);
        }
    }

    static {
        if (VERSION.SDK_INT >= 22) {
            IMPL = new AccessibilityNodeInfoApi22Impl();
        } else if (VERSION.SDK_INT >= 21) {
            IMPL = new AccessibilityNodeInfoApi21Impl();
        } else if (VERSION.SDK_INT >= 19) {
            IMPL = new AccessibilityNodeInfoKitKatImpl();
        } else if (VERSION.SDK_INT >= 18) {
            IMPL = new AccessibilityNodeInfoJellybeanMr2Impl();
        } else if (VERSION.SDK_INT >= 17) {
            IMPL = new AccessibilityNodeInfoJellybeanMr1Impl();
        } else if (VERSION.SDK_INT >= MOVEMENT_GRANULARITY_PAGE) {
            IMPL = new AccessibilityNodeInfoJellybeanImpl();
        } else if (VERSION.SDK_INT >= 14) {
            IMPL = new AccessibilityNodeInfoIcsImpl();
        } else {
            IMPL = new AccessibilityNodeInfoStubImpl();
        }
    }

    public AccessibilityNodeInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    private static String getActionSymbolicName(int i) {
        switch (i) {
            case MOVEMENT_GRANULARITY_CHARACTER /*1*/:
                return "ACTION_FOCUS";
            case MOVEMENT_GRANULARITY_WORD /*2*/:
                return "ACTION_CLEAR_FOCUS";
            case MOVEMENT_GRANULARITY_LINE /*4*/:
                return "ACTION_SELECT";
            case MOVEMENT_GRANULARITY_PARAGRAPH /*8*/:
                return "ACTION_CLEAR_SELECTION";
            case MOVEMENT_GRANULARITY_PAGE /*16*/:
                return "ACTION_CLICK";
            case ACTION_LONG_CLICK /*32*/:
                return "ACTION_LONG_CLICK";
            case ACTION_ACCESSIBILITY_FOCUS /*64*/:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case ACTION_CLEAR_ACCESSIBILITY_FOCUS /*128*/:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case ACTION_NEXT_AT_MOVEMENT_GRANULARITY /*256*/:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY /*512*/:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case ACTION_NEXT_HTML_ELEMENT /*1024*/:
                return "ACTION_NEXT_HTML_ELEMENT";
            case ACTION_PREVIOUS_HTML_ELEMENT /*2048*/:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case ACTION_SCROLL_FORWARD /*4096*/:
                return "ACTION_SCROLL_FORWARD";
            case ACTION_SCROLL_BACKWARD /*8192*/:
                return "ACTION_SCROLL_BACKWARD";
            case ACTION_COPY /*16384*/:
                return "ACTION_COPY";
            case ACTION_PASTE /*32768*/:
                return "ACTION_PASTE";
            case ACTION_CUT /*65536*/:
                return "ACTION_CUT";
            case ACTION_SET_SELECTION /*131072*/:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return wrapNonNullInstance(IMPL.obtain());
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return wrapNonNullInstance(IMPL.obtain(accessibilityNodeInfoCompat.mInfo));
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return wrapNonNullInstance(IMPL.obtain(view));
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int i) {
        return wrapNonNullInstance(IMPL.obtain(view, i));
    }

    static AccessibilityNodeInfoCompat wrapNonNullInstance(Object obj) {
        return obj != null ? new AccessibilityNodeInfoCompat(obj) : null;
    }

    public void addAction(int i) {
        IMPL.addAction(this.mInfo, i);
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        IMPL.addAction(this.mInfo, accessibilityActionCompat.mAction);
    }

    public void addChild(View view) {
        IMPL.addChild(this.mInfo, view);
    }

    public void addChild(View view, int i) {
        IMPL.addChild(this.mInfo, view, i);
    }

    public boolean canOpenPopup() {
        return IMPL.canOpenPopup(this.mInfo);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
            if (this.mInfo == null) {
                if (accessibilityNodeInfoCompat.mInfo != null) {
                    return false;
                }
            } else if (!this.mInfo.equals(accessibilityNodeInfoCompat.mInfo)) {
                return false;
            }
        }
        return true;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str) {
        List<AccessibilityNodeInfoCompat> arrayList = new ArrayList();
        List findAccessibilityNodeInfosByText = IMPL.findAccessibilityNodeInfosByText(this.mInfo, str);
        int size = findAccessibilityNodeInfosByText.size();
        for (int i = 0; i < size; i += MOVEMENT_GRANULARITY_CHARACTER) {
            arrayList.add(new AccessibilityNodeInfoCompat(findAccessibilityNodeInfosByText.get(i)));
        }
        return arrayList;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String str) {
        List<Object> findAccessibilityNodeInfosByViewId = IMPL.findAccessibilityNodeInfosByViewId(this.mInfo, str);
        if (findAccessibilityNodeInfosByViewId == null) {
            return Collections.emptyList();
        }
        List<AccessibilityNodeInfoCompat> arrayList = new ArrayList();
        for (Object accessibilityNodeInfoCompat : findAccessibilityNodeInfosByViewId) {
            arrayList.add(new AccessibilityNodeInfoCompat(accessibilityNodeInfoCompat));
        }
        return arrayList;
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return wrapNonNullInstance(IMPL.findFocus(this.mInfo, i));
    }

    public AccessibilityNodeInfoCompat focusSearch(int i) {
        return wrapNonNullInstance(IMPL.focusSearch(this.mInfo, i));
    }

    public List<AccessibilityActionCompat> getActionList() {
        List actionList = IMPL.getActionList(this.mInfo);
        if (actionList == null) {
            return Collections.emptyList();
        }
        List<AccessibilityActionCompat> arrayList = new ArrayList();
        int size = actionList.size();
        for (int i = 0; i < size; i += MOVEMENT_GRANULARITY_CHARACTER) {
            arrayList.add(new AccessibilityActionCompat(null));
        }
        return arrayList;
    }

    public int getActions() {
        return IMPL.getActions(this.mInfo);
    }

    public void getBoundsInParent(Rect rect) {
        IMPL.getBoundsInParent(this.mInfo, rect);
    }

    public void getBoundsInScreen(Rect rect) {
        IMPL.getBoundsInScreen(this.mInfo, rect);
    }

    public AccessibilityNodeInfoCompat getChild(int i) {
        return wrapNonNullInstance(IMPL.getChild(this.mInfo, i));
    }

    public int getChildCount() {
        return IMPL.getChildCount(this.mInfo);
    }

    public CharSequence getClassName() {
        return IMPL.getClassName(this.mInfo);
    }

    public CollectionInfoCompat getCollectionInfo() {
        Object collectionInfo = IMPL.getCollectionInfo(this.mInfo);
        return collectionInfo == null ? null : new CollectionInfoCompat(null);
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        Object collectionItemInfo = IMPL.getCollectionItemInfo(this.mInfo);
        return collectionItemInfo == null ? null : new CollectionItemInfoCompat(null);
    }

    public CharSequence getContentDescription() {
        return IMPL.getContentDescription(this.mInfo);
    }

    public CharSequence getError() {
        return IMPL.getError(this.mInfo);
    }

    public Bundle getExtras() {
        return IMPL.getExtras(this.mInfo);
    }

    public Object getInfo() {
        return this.mInfo;
    }

    public int getInputType() {
        return IMPL.getInputType(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        return wrapNonNullInstance(IMPL.getLabelFor(this.mInfo));
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        return wrapNonNullInstance(IMPL.getLabeledBy(this.mInfo));
    }

    public int getLiveRegion() {
        return IMPL.getLiveRegion(this.mInfo);
    }

    public int getMaxTextLength() {
        return IMPL.getMaxTextLength(this.mInfo);
    }

    public int getMovementGranularities() {
        return IMPL.getMovementGranularities(this.mInfo);
    }

    public CharSequence getPackageName() {
        return IMPL.getPackageName(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getParent() {
        return wrapNonNullInstance(IMPL.getParent(this.mInfo));
    }

    public RangeInfoCompat getRangeInfo() {
        Object rangeInfo = IMPL.getRangeInfo(this.mInfo);
        return rangeInfo == null ? null : new RangeInfoCompat(null);
    }

    public CharSequence getText() {
        return IMPL.getText(this.mInfo);
    }

    public int getTextSelectionEnd() {
        return IMPL.getTextSelectionEnd(this.mInfo);
    }

    public int getTextSelectionStart() {
        return IMPL.getTextSelectionStart(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        return wrapNonNullInstance(IMPL.getTraversalAfter(this.mInfo));
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        return wrapNonNullInstance(IMPL.getTraversalBefore(this.mInfo));
    }

    public String getViewIdResourceName() {
        return IMPL.getViewIdResourceName(this.mInfo);
    }

    public AccessibilityWindowInfoCompat getWindow() {
        return AccessibilityWindowInfoCompat.wrapNonNullInstance(IMPL.getWindow(this.mInfo));
    }

    public int getWindowId() {
        return IMPL.getWindowId(this.mInfo);
    }

    public int hashCode() {
        return this.mInfo == null ? 0 : this.mInfo.hashCode();
    }

    public boolean isAccessibilityFocused() {
        return IMPL.isAccessibilityFocused(this.mInfo);
    }

    public boolean isCheckable() {
        return IMPL.isCheckable(this.mInfo);
    }

    public boolean isChecked() {
        return IMPL.isChecked(this.mInfo);
    }

    public boolean isClickable() {
        return IMPL.isClickable(this.mInfo);
    }

    public boolean isContentInvalid() {
        return IMPL.isContentInvalid(this.mInfo);
    }

    public boolean isDismissable() {
        return IMPL.isDismissable(this.mInfo);
    }

    public boolean isEditable() {
        return IMPL.isEditable(this.mInfo);
    }

    public boolean isEnabled() {
        return IMPL.isEnabled(this.mInfo);
    }

    public boolean isFocusable() {
        return IMPL.isFocusable(this.mInfo);
    }

    public boolean isFocused() {
        return IMPL.isFocused(this.mInfo);
    }

    public boolean isLongClickable() {
        return IMPL.isLongClickable(this.mInfo);
    }

    public boolean isMultiLine() {
        return IMPL.isMultiLine(this.mInfo);
    }

    public boolean isPassword() {
        return IMPL.isPassword(this.mInfo);
    }

    public boolean isScrollable() {
        return IMPL.isScrollable(this.mInfo);
    }

    public boolean isSelected() {
        return IMPL.isSelected(this.mInfo);
    }

    public boolean isVisibleToUser() {
        return IMPL.isVisibleToUser(this.mInfo);
    }

    public boolean performAction(int i) {
        return IMPL.performAction(this.mInfo, i);
    }

    public boolean performAction(int i, Bundle bundle) {
        return IMPL.performAction(this.mInfo, i, bundle);
    }

    public void recycle() {
        IMPL.recycle(this.mInfo);
    }

    public boolean refresh() {
        return IMPL.refresh(this.mInfo);
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        return IMPL.removeAction(this.mInfo, accessibilityActionCompat.mAction);
    }

    public boolean removeChild(View view) {
        return IMPL.removeChild(this.mInfo, view);
    }

    public boolean removeChild(View view, int i) {
        return IMPL.removeChild(this.mInfo, view, i);
    }

    public void setAccessibilityFocused(boolean z) {
        IMPL.setAccessibilityFocused(this.mInfo, z);
    }

    public void setBoundsInParent(Rect rect) {
        IMPL.setBoundsInParent(this.mInfo, rect);
    }

    public void setBoundsInScreen(Rect rect) {
        IMPL.setBoundsInScreen(this.mInfo, rect);
    }

    public void setCanOpenPopup(boolean z) {
        IMPL.setCanOpenPopup(this.mInfo, z);
    }

    public void setCheckable(boolean z) {
        IMPL.setCheckable(this.mInfo, z);
    }

    public void setChecked(boolean z) {
        IMPL.setChecked(this.mInfo, z);
    }

    public void setClassName(CharSequence charSequence) {
        IMPL.setClassName(this.mInfo, charSequence);
    }

    public void setClickable(boolean z) {
        IMPL.setClickable(this.mInfo, z);
    }

    public void setCollectionInfo(Object obj) {
        IMPL.setCollectionInfo(this.mInfo, ((CollectionInfoCompat) obj).mInfo);
    }

    public void setCollectionItemInfo(Object obj) {
        IMPL.setCollectionItemInfo(this.mInfo, ((CollectionItemInfoCompat) obj).mInfo);
    }

    public void setContentDescription(CharSequence charSequence) {
        IMPL.setContentDescription(this.mInfo, charSequence);
    }

    public void setContentInvalid(boolean z) {
        IMPL.setContentInvalid(this.mInfo, z);
    }

    public void setDismissable(boolean z) {
        IMPL.setDismissable(this.mInfo, z);
    }

    public void setEditable(boolean z) {
        IMPL.setEditable(this.mInfo, z);
    }

    public void setEnabled(boolean z) {
        IMPL.setEnabled(this.mInfo, z);
    }

    public void setError(CharSequence charSequence) {
        IMPL.setError(this.mInfo, charSequence);
    }

    public void setFocusable(boolean z) {
        IMPL.setFocusable(this.mInfo, z);
    }

    public void setFocused(boolean z) {
        IMPL.setFocused(this.mInfo, z);
    }

    public void setInputType(int i) {
        IMPL.setInputType(this.mInfo, i);
    }

    public void setLabelFor(View view) {
        IMPL.setLabelFor(this.mInfo, view);
    }

    public void setLabelFor(View view, int i) {
        IMPL.setLabelFor(this.mInfo, view, i);
    }

    public void setLabeledBy(View view) {
        IMPL.setLabeledBy(this.mInfo, view);
    }

    public void setLabeledBy(View view, int i) {
        IMPL.setLabeledBy(this.mInfo, view, i);
    }

    public void setLiveRegion(int i) {
        IMPL.setLiveRegion(this.mInfo, i);
    }

    public void setLongClickable(boolean z) {
        IMPL.setLongClickable(this.mInfo, z);
    }

    public void setMaxTextLength(int i) {
        IMPL.setMaxTextLength(this.mInfo, i);
    }

    public void setMovementGranularities(int i) {
        IMPL.setMovementGranularities(this.mInfo, i);
    }

    public void setMultiLine(boolean z) {
        IMPL.setMultiLine(this.mInfo, z);
    }

    public void setPackageName(CharSequence charSequence) {
        IMPL.setPackageName(this.mInfo, charSequence);
    }

    public void setParent(View view) {
        IMPL.setParent(this.mInfo, view);
    }

    public void setParent(View view, int i) {
        IMPL.setParent(this.mInfo, view, i);
    }

    public void setPassword(boolean z) {
        IMPL.setPassword(this.mInfo, z);
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        IMPL.setRangeInfo(this.mInfo, rangeInfoCompat.mInfo);
    }

    public void setScrollable(boolean z) {
        IMPL.setScrollable(this.mInfo, z);
    }

    public void setSelected(boolean z) {
        IMPL.setSelected(this.mInfo, z);
    }

    public void setSource(View view) {
        IMPL.setSource(this.mInfo, view);
    }

    public void setSource(View view, int i) {
        IMPL.setSource(this.mInfo, view, i);
    }

    public void setText(CharSequence charSequence) {
        IMPL.setText(this.mInfo, charSequence);
    }

    public void setTextSelection(int i, int i2) {
        IMPL.setTextSelection(this.mInfo, i, i2);
    }

    public void setTraversalAfter(View view) {
        IMPL.setTraversalAfter(this.mInfo, view);
    }

    public void setTraversalAfter(View view, int i) {
        IMPL.setTraversalAfter(this.mInfo, view, i);
    }

    public void setTraversalBefore(View view) {
        IMPL.setTraversalBefore(this.mInfo, view);
    }

    public void setTraversalBefore(View view, int i) {
        IMPL.setTraversalBefore(this.mInfo, view, i);
    }

    public void setViewIdResourceName(String str) {
        IMPL.setViewIdResourceName(this.mInfo, str);
    }

    public void setVisibleToUser(boolean z) {
        IMPL.setVisibleToUser(this.mInfo, z);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        stringBuilder.append("; boundsInParent: " + rect);
        getBoundsInScreen(rect);
        stringBuilder.append("; boundsInScreen: " + rect);
        stringBuilder.append("; packageName: ").append(getPackageName());
        stringBuilder.append("; className: ").append(getClassName());
        stringBuilder.append("; text: ").append(getText());
        stringBuilder.append("; contentDescription: ").append(getContentDescription());
        stringBuilder.append("; viewId: ").append(getViewIdResourceName());
        stringBuilder.append("; checkable: ").append(isCheckable());
        stringBuilder.append("; checked: ").append(isChecked());
        stringBuilder.append("; focusable: ").append(isFocusable());
        stringBuilder.append("; focused: ").append(isFocused());
        stringBuilder.append("; selected: ").append(isSelected());
        stringBuilder.append("; clickable: ").append(isClickable());
        stringBuilder.append("; longClickable: ").append(isLongClickable());
        stringBuilder.append("; enabled: ").append(isEnabled());
        stringBuilder.append("; password: ").append(isPassword());
        stringBuilder.append("; scrollable: " + isScrollable());
        stringBuilder.append("; [");
        int actions = getActions();
        while (actions != 0) {
            int numberOfTrailingZeros = MOVEMENT_GRANULARITY_CHARACTER << Integer.numberOfTrailingZeros(actions);
            actions &= numberOfTrailingZeros ^ -1;
            stringBuilder.append(getActionSymbolicName(numberOfTrailingZeros));
            if (actions != 0) {
                stringBuilder.append(", ");
            }
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
