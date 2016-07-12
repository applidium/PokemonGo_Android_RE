package android.support.v4.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewParentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.google.android.gms.location.places.Place;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    private static final String DEFAULT_CLASS_NAME;
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private int mFocusedVirtualViewId;
    private int mHoveredVirtualViewId;
    private final AccessibilityManager mManager;
    private ExploreByTouchNodeProvider mNodeProvider;
    private final int[] mTempGlobalRect;
    private final Rect mTempParentRect;
    private final Rect mTempScreenRect;
    private final Rect mTempVisibleRect;
    private final View mView;

    private class ExploreByTouchNodeProvider extends AccessibilityNodeProviderCompat {
        private ExploreByTouchNodeProvider() {
        }

        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            return ExploreByTouchHelper.this.createNode(i);
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            return ExploreByTouchHelper.this.performAction(i, i2, bundle);
        }
    }

    static {
        DEFAULT_CLASS_NAME = View.class.getName();
    }

    public ExploreByTouchHelper(View view) {
        this.mTempScreenRect = new Rect();
        this.mTempParentRect = new Rect();
        this.mTempVisibleRect = new Rect();
        this.mTempGlobalRect = new int[2];
        this.mFocusedVirtualViewId = INVALID_ID;
        this.mHoveredVirtualViewId = INVALID_ID;
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mView = view;
        this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
    }

    private boolean clearAccessibilityFocus(int i) {
        if (!isAccessibilityFocused(i)) {
            return false;
        }
        this.mFocusedVirtualViewId = INVALID_ID;
        this.mView.invalidate();
        sendEventForVirtualView(i, AccessibilityNodeInfoCompat.ACTION_CUT);
        return true;
    }

    private AccessibilityEvent createEvent(int i, int i2) {
        switch (i) {
            case HOST_ID /*-1*/:
                return createEventForHost(i2);
            default:
                return createEventForChild(i, i2);
        }
    }

    private AccessibilityEvent createEventForChild(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        obtain.setEnabled(true);
        obtain.setClassName(DEFAULT_CLASS_NAME);
        onPopulateEventForVirtualView(i, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setPackageName(this.mView.getContext().getPackageName());
        AccessibilityEventCompat.asRecord(obtain).setSource(this.mView, i);
        return obtain;
    }

    private AccessibilityEvent createEventForHost(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        ViewCompat.onInitializeAccessibilityEvent(this.mView, obtain);
        return obtain;
    }

    private AccessibilityNodeInfoCompat createNode(int i) {
        switch (i) {
            case HOST_ID /*-1*/:
                return createNodeForHost();
            default:
                return createNodeForChild(i);
        }
    }

    private AccessibilityNodeInfoCompat createNodeForChild(int i) {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        obtain.setEnabled(true);
        obtain.setClassName(DEFAULT_CLASS_NAME);
        onPopulateNodeForVirtualView(i, obtain);
        if (obtain.getText() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        obtain.getBoundsInParent(this.mTempParentRect);
        if (this.mTempParentRect.isEmpty()) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        } else if ((actions & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        } else {
            obtain.setPackageName(this.mView.getContext().getPackageName());
            obtain.setSource(this.mView, i);
            obtain.setParent(this.mView);
            if (this.mFocusedVirtualViewId == i) {
                obtain.setAccessibilityFocused(true);
                obtain.addAction((int) AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            } else {
                obtain.setAccessibilityFocused(false);
                obtain.addAction(64);
            }
            if (intersectVisibleToUser(this.mTempParentRect)) {
                obtain.setVisibleToUser(true);
                obtain.setBoundsInParent(this.mTempParentRect);
            }
            this.mView.getLocationOnScreen(this.mTempGlobalRect);
            actions = this.mTempGlobalRect[0];
            int i2 = this.mTempGlobalRect[1];
            this.mTempScreenRect.set(this.mTempParentRect);
            this.mTempScreenRect.offset(actions, i2);
            obtain.setBoundsInScreen(this.mTempScreenRect);
            return obtain;
        }
    }

    private AccessibilityNodeInfoCompat createNodeForHost() {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(this.mView);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.mView, obtain);
        onPopulateNodeForHost(obtain);
        Object linkedList = new LinkedList();
        getVisibleVirtualViews(linkedList);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            obtain.addChild(this.mView, ((Integer) it.next()).intValue());
        }
        return obtain;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean intersectVisibleToUser(android.graphics.Rect r5) {
        /*
        r4 = this;
        r1 = 0;
        if (r5 == 0) goto L_0x0046;
    L_0x0003:
        r0 = r5.isEmpty();
        if (r0 == 0) goto L_0x000b;
    L_0x0009:
        r0 = r1;
    L_0x000a:
        return r0;
    L_0x000b:
        r0 = r4.mView;
        r0 = r0.getWindowVisibility();
        if (r0 != 0) goto L_0x0046;
    L_0x0013:
        r0 = r4.mView;
        r0 = r0.getParent();
    L_0x0019:
        r2 = r0 instanceof android.view.View;
        if (r2 == 0) goto L_0x0033;
    L_0x001d:
        r0 = (android.view.View) r0;
        r2 = android.support.v4.view.ViewCompat.getAlpha(r0);
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
        if (r2 <= 0) goto L_0x0046;
    L_0x0028:
        r2 = r0.getVisibility();
        if (r2 != 0) goto L_0x0046;
    L_0x002e:
        r0 = r0.getParent();
        goto L_0x0019;
    L_0x0033:
        if (r0 == 0) goto L_0x0046;
    L_0x0035:
        r0 = r4.mView;
        r2 = r4.mTempVisibleRect;
        r0 = r0.getLocalVisibleRect(r2);
        if (r0 == 0) goto L_0x0046;
    L_0x003f:
        r0 = r4.mTempVisibleRect;
        r0 = r5.intersect(r0);
        goto L_0x000a;
    L_0x0046:
        r0 = r1;
        goto L_0x000a;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ExploreByTouchHelper.intersectVisibleToUser(android.graphics.Rect):boolean");
    }

    private boolean isAccessibilityFocused(int i) {
        return this.mFocusedVirtualViewId == i;
    }

    private boolean manageFocusForChild(int i, int i2, Bundle bundle) {
        switch (i2) {
            case Place.TYPE_MOVIE_THEATER /*64*/:
                return requestAccessibilityFocus(i);
            case AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS /*128*/:
                return clearAccessibilityFocus(i);
            default:
                return false;
        }
    }

    private boolean performAction(int i, int i2, Bundle bundle) {
        switch (i) {
            case HOST_ID /*-1*/:
                return performActionForHost(i2, bundle);
            default:
                return performActionForChild(i, i2, bundle);
        }
    }

    private boolean performActionForChild(int i, int i2, Bundle bundle) {
        switch (i2) {
            case Place.TYPE_MOVIE_THEATER /*64*/:
            case AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS /*128*/:
                return manageFocusForChild(i, i2, bundle);
            default:
                return onPerformActionForVirtualView(i, i2, bundle);
        }
    }

    private boolean performActionForHost(int i, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.mView, i, bundle);
    }

    private boolean requestAccessibilityFocus(int i) {
        if (!this.mManager.isEnabled() || !AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager) || isAccessibilityFocused(i)) {
            return false;
        }
        if (this.mFocusedVirtualViewId != INVALID_ID) {
            sendEventForVirtualView(this.mFocusedVirtualViewId, AccessibilityNodeInfoCompat.ACTION_CUT);
        }
        this.mFocusedVirtualViewId = i;
        this.mView.invalidate();
        sendEventForVirtualView(i, AccessibilityNodeInfoCompat.ACTION_PASTE);
        return true;
    }

    private void updateHoveredVirtualView(int i) {
        if (this.mHoveredVirtualViewId != i) {
            int i2 = this.mHoveredVirtualViewId;
            this.mHoveredVirtualViewId = i;
            sendEventForVirtualView(i, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            sendEventForVirtualView(i2, AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
        }
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.mManager.isEnabled() || !AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager)) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case Place.TYPE_BAKERY /*7*/:
            case Place.TYPE_BAR /*9*/:
                int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
                updateHoveredVirtualView(virtualViewAt);
                return virtualViewAt != INVALID_ID;
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                if (this.mFocusedVirtualViewId == INVALID_ID) {
                    return false;
                }
                updateHoveredVirtualView(INVALID_ID);
                return true;
            default:
                return false;
        }
    }

    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new ExploreByTouchNodeProvider();
        }
        return this.mNodeProvider;
    }

    public int getFocusedVirtualView() {
        return this.mFocusedVirtualViewId;
    }

    protected abstract int getVirtualViewAt(float f, float f2);

    protected abstract void getVisibleVirtualViews(List<Integer> list);

    public void invalidateRoot() {
        invalidateVirtualView(HOST_ID);
    }

    public void invalidateVirtualView(int i) {
        sendEventForVirtualView(i, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT);
    }

    protected abstract boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle);

    protected abstract void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent);

    public void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    protected abstract void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public boolean sendEventForVirtualView(int i, int i2) {
        if (i == INVALID_ID || !this.mManager.isEnabled()) {
            return false;
        }
        ViewParent parent = this.mView.getParent();
        if (parent == null) {
            return false;
        }
        return ViewParentCompat.requestSendAccessibilityEvent(parent, this.mView, createEvent(i, i2));
    }
}
