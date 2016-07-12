package android.support.v4.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

class ViewParentCompatLollipop {
    private static final String TAG = "ViewParentCompat";

    ViewParentCompatLollipop() {
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f2, boolean z) {
        try {
            return viewParent.onNestedFling(view, f, f2, z);
        } catch (Throwable e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface " + "method onNestedFling", e);
            return false;
        }
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f2) {
        try {
            return viewParent.onNestedPreFling(view, f, f2);
        } catch (Throwable e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface " + "method onNestedPreFling", e);
            return false;
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        try {
            viewParent.onNestedPreScroll(view, i, i2, iArr);
        } catch (Throwable e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface " + "method onNestedPreScroll", e);
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        try {
            viewParent.onNestedScroll(view, i, i2, i3, i4);
        } catch (Throwable e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface " + "method onNestedScroll", e);
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i) {
        try {
            viewParent.onNestedScrollAccepted(view, view2, i);
        } catch (Throwable e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface " + "method onNestedScrollAccepted", e);
        }
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i) {
        try {
            return viewParent.onStartNestedScroll(view, view2, i);
        } catch (Throwable e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface " + "method onStartNestedScroll", e);
            return false;
        }
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        try {
            viewParent.onStopNestedScroll(view);
        } catch (Throwable e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface " + "method onStopNestedScroll", e);
        }
    }
}
