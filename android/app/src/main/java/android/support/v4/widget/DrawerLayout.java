package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.ArrayList;
import java.util.List;

public class DrawerLayout extends ViewGroup implements DrawerLayoutImpl {
    private static final boolean ALLOW_EDGE_LOCK = false;
    private static final boolean CAN_HIDE_DESCENDANTS;
    private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    private static final int DRAWER_ELEVATION = 10;
    static final DrawerLayoutCompatImpl IMPL;
    private static final int[] LAYOUT_ATTRS;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    private static final boolean SET_DRAWER_SHADOW_FROM_ELEVATION;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private static final float TOUCH_SLOP_SENSITIVITY = 1.0f;
    private final ChildAccessibilityDelegate mChildAccessibilityDelegate;
    private boolean mChildrenCanceledTouch;
    private boolean mDisallowInterceptRequested;
    private boolean mDrawStatusBarBackground;
    private float mDrawerElevation;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private Object mLastInsets;
    private final ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;
    private DrawerListener mListener;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mMinDrawerMargin;
    private final ArrayList<View> mNonDrawerViews;
    private final ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowEnd;
    private Drawable mShadowLeft;
    private Drawable mShadowLeftResolved;
    private Drawable mShadowRight;
    private Drawable mShadowRightResolved;
    private Drawable mShadowStart;
    private Drawable mStatusBarBackground;
    private CharSequence mTitleLeft;
    private CharSequence mTitleRight;

    public interface DrawerListener {
        void onDrawerClosed(View view);

        void onDrawerOpened(View view);

        void onDrawerSlide(View view, float f);

        void onDrawerStateChanged(int i);
    }

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect;

        AccessibilityDelegate() {
            this.mTmpRect = new Rect();
        }

        private void addChildrenForAccessibility(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = DrawerLayout.STATE_IDLE; i < childCount; i += DrawerLayout.STATE_DRAGGING) {
                View childAt = viewGroup.getChildAt(i);
                if (DrawerLayout.includeChildForAccessibility(childAt)) {
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
        }

        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List text = accessibilityEvent.getText();
            View access$300 = DrawerLayout.this.findVisibleDrawer();
            if (access$300 != null) {
                CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.getDrawerViewAbsoluteGravity(access$300));
                if (drawerTitle != null) {
                    text.add(drawerTitle);
                }
            }
            return DrawerLayout.CHILDREN_DISALLOW_INTERCEPT;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, obtain);
                accessibilityNodeInfoCompat.setSource(view);
                ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                copyNodeInfoNoChildren(accessibilityNodeInfoCompat, obtain);
                obtain.recycle();
                addChildrenForAccessibility(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.setClassName(DrawerLayout.class.getName());
            accessibilityNodeInfoCompat.setFocusable(DrawerLayout.SET_DRAWER_SHADOW_FROM_ELEVATION);
            accessibilityNodeInfoCompat.setFocused(DrawerLayout.SET_DRAWER_SHADOW_FROM_ELEVATION);
            accessibilityNodeInfoCompat.removeAction(AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return (DrawerLayout.CAN_HIDE_DESCENDANTS || DrawerLayout.includeChildForAccessibility(view)) ? super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : DrawerLayout.SET_DRAWER_SHADOW_FROM_ELEVATION;
        }
    }

    final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        ChildAccessibilityDelegate() {
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!DrawerLayout.includeChildForAccessibility(view)) {
                accessibilityNodeInfoCompat.setParent(null);
            }
        }
    }

    interface DrawerLayoutCompatImpl {
        void applyMarginInsets(MarginLayoutParams marginLayoutParams, Object obj, int i);

        void configureApplyInsets(View view);

        void dispatchChildInsets(View view, Object obj, int i);

        Drawable getDefaultStatusBarBackground(Context context);

        int getTopInset(Object obj);
    }

    static class DrawerLayoutCompatImplApi21 implements DrawerLayoutCompatImpl {
        DrawerLayoutCompatImplApi21() {
        }

        public void applyMarginInsets(MarginLayoutParams marginLayoutParams, Object obj, int i) {
            DrawerLayoutCompatApi21.applyMarginInsets(marginLayoutParams, obj, i);
        }

        public void configureApplyInsets(View view) {
            DrawerLayoutCompatApi21.configureApplyInsets(view);
        }

        public void dispatchChildInsets(View view, Object obj, int i) {
            DrawerLayoutCompatApi21.dispatchChildInsets(view, obj, i);
        }

        public Drawable getDefaultStatusBarBackground(Context context) {
            return DrawerLayoutCompatApi21.getDefaultStatusBarBackground(context);
        }

        public int getTopInset(Object obj) {
            return DrawerLayoutCompatApi21.getTopInset(obj);
        }
    }

    static class DrawerLayoutCompatImplBase implements DrawerLayoutCompatImpl {
        DrawerLayoutCompatImplBase() {
        }

        public void applyMarginInsets(MarginLayoutParams marginLayoutParams, Object obj, int i) {
        }

        public void configureApplyInsets(View view) {
        }

        public void dispatchChildInsets(View view, Object obj, int i) {
        }

        public Drawable getDefaultStatusBarBackground(Context context) {
            return null;
        }

        public int getTopInset(Object obj) {
            return DrawerLayout.STATE_IDLE;
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity;
        boolean isPeeking;
        boolean knownOpen;
        float onScreen;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = DrawerLayout.STATE_IDLE;
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.gravity = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = DrawerLayout.STATE_IDLE;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.LAYOUT_ATTRS);
            this.gravity = obtainStyledAttributes.getInt(DrawerLayout.STATE_IDLE, DrawerLayout.STATE_IDLE);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = DrawerLayout.STATE_IDLE;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = DrawerLayout.STATE_IDLE;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = DrawerLayout.STATE_IDLE;
        }
    }

    protected static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        int lockModeLeft;
        int lockModeRight;
        int openDrawerGravity;

        /* renamed from: android.support.v4.widget.DrawerLayout.SavedState.1 */
        static final class C01091 implements Creator<SavedState> {
            C01091() {
            }

            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        static {
            CREATOR = new C01091();
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.openDrawerGravity = DrawerLayout.STATE_IDLE;
            this.lockModeLeft = DrawerLayout.STATE_IDLE;
            this.lockModeRight = DrawerLayout.STATE_IDLE;
            this.openDrawerGravity = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = DrawerLayout.STATE_IDLE;
            this.lockModeLeft = DrawerLayout.STATE_IDLE;
            this.lockModeRight = DrawerLayout.STATE_IDLE;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.openDrawerGravity);
        }
    }

    public static abstract class SimpleDrawerListener implements DrawerListener {
        public void onDrawerClosed(View view) {
        }

        public void onDrawerOpened(View view) {
        }

        public void onDrawerSlide(View view, float f) {
        }

        public void onDrawerStateChanged(int i) {
        }
    }

    private class ViewDragCallback extends Callback {
        private final int mAbsGravity;
        private ViewDragHelper mDragger;
        private final Runnable mPeekRunnable;

        /* renamed from: android.support.v4.widget.DrawerLayout.ViewDragCallback.1 */
        class C01101 implements Runnable {
            C01101() {
            }

            public void run() {
                ViewDragCallback.this.peekDrawer();
            }
        }

        public ViewDragCallback(int i) {
            this.mPeekRunnable = new C01101();
            this.mAbsGravity = i;
        }

        private void closeOtherDrawer() {
            int i = 3;
            if (this.mAbsGravity == 3) {
                i = 5;
            }
            View findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(i);
            if (findDrawerWithGravity != null) {
                DrawerLayout.this.closeDrawer(findDrawerWithGravity);
            }
        }

        private void peekDrawer() {
            View findDrawerWithGravity;
            int i = DrawerLayout.STATE_IDLE;
            int edgeSize = this.mDragger.getEdgeSize();
            boolean z = this.mAbsGravity == 3 ? DrawerLayout.CHILDREN_DISALLOW_INTERCEPT : DrawerLayout.STATE_IDLE;
            if (z) {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
                if (findDrawerWithGravity != null) {
                    i = -findDrawerWithGravity.getWidth();
                }
                edgeSize = i + edgeSize;
            } else {
                edgeSize = DrawerLayout.this.getWidth() - edgeSize;
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
            }
            if (findDrawerWithGravity == null) {
                return;
            }
            if (((z && findDrawerWithGravity.getLeft() < edgeSize) || (!z && findDrawerWithGravity.getLeft() > edgeSize)) && DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) == 0) {
                LayoutParams layoutParams = (LayoutParams) findDrawerWithGravity.getLayoutParams();
                this.mDragger.smoothSlideViewTo(findDrawerWithGravity, edgeSize, findDrawerWithGravity.getTop());
                layoutParams.isPeeking = DrawerLayout.CHILDREN_DISALLOW_INTERCEPT;
                DrawerLayout.this.invalidate();
                closeOtherDrawer();
                DrawerLayout.this.cancelChildViewTouch();
            }
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, DrawerLayout.STATE_IDLE));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public int getViewHorizontalDragRange(View view) {
            return DrawerLayout.this.isDrawerView(view) ? view.getWidth() : DrawerLayout.STATE_IDLE;
        }

        public void onEdgeDragStarted(int i, int i2) {
            View findDrawerWithGravity = (i & DrawerLayout.STATE_DRAGGING) == DrawerLayout.STATE_DRAGGING ? DrawerLayout.this.findDrawerWithGravity(3) : DrawerLayout.this.findDrawerWithGravity(5);
            if (findDrawerWithGravity != null && DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) == 0) {
                this.mDragger.captureChildView(findDrawerWithGravity, i2);
            }
        }

        public boolean onEdgeLock(int i) {
            return DrawerLayout.SET_DRAWER_SHADOW_FROM_ELEVATION;
        }

        public void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.mPeekRunnable, 160);
        }

        public void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).isPeeking = DrawerLayout.SET_DRAWER_SHADOW_FROM_ELEVATION;
            closeOtherDrawer();
        }

        public void onViewDragStateChanged(int i) {
            DrawerLayout.this.updateDrawerState(this.mAbsGravity, i, this.mDragger.getCapturedView());
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3) ? ((float) (width + i)) / ((float) width) : ((float) (DrawerLayout.this.getWidth() - i)) / ((float) width);
            DrawerLayout.this.setDrawerViewOffset(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : DrawerLayout.STATE_IDLE);
            DrawerLayout.this.invalidate();
        }

        public void onViewReleased(View view, float f, float f2) {
            int i;
            float drawerViewOffset = DrawerLayout.this.getDrawerViewOffset(view);
            int width = view.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, 3)) {
                i = (f > 0.0f || (f == 0.0f && drawerViewOffset > 0.5f)) ? DrawerLayout.STATE_IDLE : -width;
            } else {
                i = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && drawerViewOffset > 0.5f)) {
                    i -= width;
                }
            }
            this.mDragger.settleCapturedViewAt(i, view.getTop());
            DrawerLayout.this.invalidate();
        }

        public void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.mPeekRunnable);
        }

        public void setDragger(ViewDragHelper viewDragHelper) {
            this.mDragger = viewDragHelper;
        }

        public boolean tryCaptureView(View view, int i) {
            return (DrawerLayout.this.isDrawerView(view) && DrawerLayout.this.checkDrawerViewAbsoluteGravity(view, this.mAbsGravity) && DrawerLayout.this.getDrawerLockMode(view) == 0) ? DrawerLayout.CHILDREN_DISALLOW_INTERCEPT : DrawerLayout.SET_DRAWER_SHADOW_FROM_ELEVATION;
        }
    }

    static {
        boolean z = CHILDREN_DISALLOW_INTERCEPT;
        int[] iArr = new int[STATE_DRAGGING];
        iArr[STATE_IDLE] = 16842931;
        LAYOUT_ATTRS = iArr;
        CAN_HIDE_DESCENDANTS = VERSION.SDK_INT >= 19 ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
        if (VERSION.SDK_INT < 21) {
            z = SET_DRAWER_SHADOW_FROM_ELEVATION;
        }
        SET_DRAWER_SHADOW_FROM_ELEVATION = z;
        if (VERSION.SDK_INT >= 21) {
            IMPL = new DrawerLayoutCompatImplApi21();
        } else {
            IMPL = new DrawerLayoutCompatImplBase();
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, STATE_IDLE);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mChildAccessibilityDelegate = new ChildAccessibilityDelegate();
        this.mScrimColor = DEFAULT_SCRIM_COLOR;
        this.mScrimPaint = new Paint();
        this.mFirstLayout = CHILDREN_DISALLOW_INTERCEPT;
        this.mShadowStart = null;
        this.mShadowEnd = null;
        this.mShadowLeft = null;
        this.mShadowRight = null;
        setDescendantFocusability(AccessibilityNodeInfoCompat.ACTION_EXPAND);
        float f = getResources().getDisplayMetrics().density;
        this.mMinDrawerMargin = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        this.mLeftCallback = new ViewDragCallback(3);
        this.mRightCallback = new ViewDragCallback(5);
        this.mLeftDragger = ViewDragHelper.create(this, TOUCH_SLOP_SENSITIVITY, this.mLeftCallback);
        this.mLeftDragger.setEdgeTrackingEnabled(STATE_DRAGGING);
        this.mLeftDragger.setMinVelocity(f2);
        this.mLeftCallback.setDragger(this.mLeftDragger);
        this.mRightDragger = ViewDragHelper.create(this, TOUCH_SLOP_SENSITIVITY, this.mRightCallback);
        this.mRightDragger.setEdgeTrackingEnabled(STATE_SETTLING);
        this.mRightDragger.setMinVelocity(f2);
        this.mRightCallback.setDragger(this.mRightDragger);
        setFocusableInTouchMode(CHILDREN_DISALLOW_INTERCEPT);
        ViewCompat.setImportantForAccessibility(this, STATE_DRAGGING);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewGroupCompat.setMotionEventSplittingEnabled(this, SET_DRAWER_SHADOW_FROM_ELEVATION);
        if (ViewCompat.getFitsSystemWindows(this)) {
            IMPL.configureApplyInsets(this);
            this.mStatusBarBackground = IMPL.getDefaultStatusBarBackground(context);
        }
        this.mDrawerElevation = f * 10.0f;
        this.mNonDrawerViews = new ArrayList();
    }

    private View findVisibleDrawer() {
        int childCount = getChildCount();
        for (int i = STATE_IDLE; i < childCount; i += STATE_DRAGGING) {
            View childAt = getChildAt(i);
            if (isDrawerView(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    static String gravityToString(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    private static boolean hasOpaqueBackground(View view) {
        Drawable background = view.getBackground();
        return (background == null || background.getOpacity() != -1) ? SET_DRAWER_SHADOW_FROM_ELEVATION : CHILDREN_DISALLOW_INTERCEPT;
    }

    private boolean hasPeekingDrawer() {
        int childCount = getChildCount();
        for (int i = STATE_IDLE; i < childCount; i += STATE_DRAGGING) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).isPeeking) {
                return CHILDREN_DISALLOW_INTERCEPT;
            }
        }
        return SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    private boolean hasVisibleDrawer() {
        return findVisibleDrawer() != null ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    private static boolean includeChildForAccessibility(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == STATE_SETTLING) ? SET_DRAWER_SHADOW_FROM_ELEVATION : CHILDREN_DISALLOW_INTERCEPT;
    }

    private boolean mirror(Drawable drawable, int i) {
        if (drawable == null || !DrawableCompat.isAutoMirrored(drawable)) {
            return SET_DRAWER_SHADOW_FROM_ELEVATION;
        }
        DrawableCompat.setLayoutDirection(drawable, i);
        return CHILDREN_DISALLOW_INTERCEPT;
    }

    private Drawable resolveLeftShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            if (this.mShadowStart != null) {
                mirror(this.mShadowStart, layoutDirection);
                return this.mShadowStart;
            }
        } else if (this.mShadowEnd != null) {
            mirror(this.mShadowEnd, layoutDirection);
            return this.mShadowEnd;
        }
        return this.mShadowLeft;
    }

    private Drawable resolveRightShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            if (this.mShadowEnd != null) {
                mirror(this.mShadowEnd, layoutDirection);
                return this.mShadowEnd;
            }
        } else if (this.mShadowStart != null) {
            mirror(this.mShadowStart, layoutDirection);
            return this.mShadowStart;
        }
        return this.mShadowRight;
    }

    private void resolveShadowDrawables() {
        if (!SET_DRAWER_SHADOW_FROM_ELEVATION) {
            this.mShadowLeftResolved = resolveLeftShadow();
            this.mShadowRightResolved = resolveRightShadow();
        }
    }

    private void updateChildrenImportantForAccessibility(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = STATE_IDLE; i < childCount; i += STATE_DRAGGING) {
            View childAt = getChildAt(i);
            if ((z || isDrawerView(childAt)) && !(z && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, STATE_DRAGGING);
            }
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int i3 = STATE_IDLE;
        if (getDescendantFocusability() != 393216) {
            int i4;
            int childCount = getChildCount();
            int i5 = STATE_IDLE;
            for (i4 = STATE_IDLE; i4 < childCount; i4 += STATE_DRAGGING) {
                View childAt = getChildAt(i4);
                if (!isDrawerView(childAt)) {
                    this.mNonDrawerViews.add(childAt);
                } else if (isDrawerOpen(childAt)) {
                    i5 = STATE_DRAGGING;
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
            if (i5 == 0) {
                i4 = this.mNonDrawerViews.size();
                while (i3 < i4) {
                    View view = (View) this.mNonDrawerViews.get(i3);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                    i3 += STATE_DRAGGING;
                }
            }
            this.mNonDrawerViews.clear();
        }
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (findOpenDrawer() != null || isDrawerView(view)) {
            ViewCompat.setImportantForAccessibility(view, 4);
        } else {
            ViewCompat.setImportantForAccessibility(view, STATE_DRAGGING);
        }
        if (!CAN_HIDE_DESCENDANTS) {
            ViewCompat.setAccessibilityDelegate(view, this.mChildAccessibilityDelegate);
        }
    }

    void cancelChildViewTouch() {
        int i = STATE_IDLE;
        if (!this.mChildrenCanceledTouch) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, STATE_IDLE);
            int childCount = getChildCount();
            while (i < childCount) {
                getChildAt(i).dispatchTouchEvent(obtain);
                i += STATE_DRAGGING;
            }
            obtain.recycle();
            this.mChildrenCanceledTouch = CHILDREN_DISALLOW_INTERCEPT;
        }
    }

    boolean checkDrawerViewAbsoluteGravity(View view, int i) {
        return (getDrawerViewAbsoluteGravity(view) & i) == i ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return ((layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams)) ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    public void closeDrawer(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        if (findDrawerWithGravity == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(i));
        }
        closeDrawer(findDrawerWithGravity);
    }

    public void closeDrawer(View view) {
        if (isDrawerView(view)) {
            if (this.mFirstLayout) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                layoutParams.onScreen = 0.0f;
                layoutParams.knownOpen = SET_DRAWER_SHADOW_FROM_ELEVATION;
            } else if (checkDrawerViewAbsoluteGravity(view, 3)) {
                this.mLeftDragger.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(view, getWidth(), view.getTop());
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void closeDrawers() {
        closeDrawers(SET_DRAWER_SHADOW_FROM_ELEVATION);
    }

    void closeDrawers(boolean z) {
        int childCount = getChildCount();
        int i = STATE_IDLE;
        int i2 = STATE_IDLE;
        while (i < childCount) {
            int i3;
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (!isDrawerView(childAt)) {
                i3 = i2;
            } else if (!z || layoutParams.isPeeking) {
                i2 = checkDrawerViewAbsoluteGravity(childAt, 3) ? i2 | this.mLeftDragger.smoothSlideViewTo(childAt, -childAt.getWidth(), childAt.getTop()) : i2 | this.mRightDragger.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                layoutParams.isPeeking = SET_DRAWER_SHADOW_FROM_ELEVATION;
                i3 = i2;
            } else {
                i3 = i2;
            }
            i += STATE_DRAGGING;
            i2 = i3;
        }
        this.mLeftCallback.removeCallbacks();
        this.mRightCallback.removeCallbacks();
        if (i2 != 0) {
            invalidate();
        }
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = STATE_IDLE; i < childCount; i += STATE_DRAGGING) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).onScreen);
        }
        this.mScrimOpacity = f;
        if ((this.mLeftDragger.continueSettling(CHILDREN_DISALLOW_INTERCEPT) | this.mRightDragger.continueSettling(CHILDREN_DISALLOW_INTERCEPT)) != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    void dispatchOnDrawerClosed(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.knownOpen) {
            layoutParams.knownOpen = SET_DRAWER_SHADOW_FROM_ELEVATION;
            if (this.mListener != null) {
                this.mListener.onDrawerClosed(view);
            }
            updateChildrenImportantForAccessibility(view, SET_DRAWER_SHADOW_FROM_ELEVATION);
            if (hasWindowFocus()) {
                View rootView = getRootView();
                if (rootView != null) {
                    rootView.sendAccessibilityEvent(32);
                }
            }
        }
    }

    void dispatchOnDrawerOpened(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.knownOpen) {
            layoutParams.knownOpen = CHILDREN_DISALLOW_INTERCEPT;
            if (this.mListener != null) {
                this.mListener.onDrawerOpened(view);
            }
            updateChildrenImportantForAccessibility(view, CHILDREN_DISALLOW_INTERCEPT);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
            view.requestFocus();
        }
    }

    void dispatchOnDrawerSlide(View view, float f) {
        if (this.mListener != null) {
            this.mListener.onDrawerSlide(view, f);
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int height = getHeight();
        boolean isContentView = isContentView(view);
        int i2 = STATE_IDLE;
        int width = getWidth();
        int save = canvas.save();
        if (isContentView) {
            int childCount = getChildCount();
            i2 = STATE_IDLE;
            int i3 = STATE_IDLE;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0 && hasOpaqueBackground(childAt) && isDrawerView(childAt)) {
                    if (childAt.getHeight() < height) {
                        i = i2;
                    } else if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        i = childAt.getRight();
                        if (i > i2) {
                        }
                    } else {
                        i = childAt.getLeft();
                        if (i < width) {
                            width = i;
                            i = i2;
                        }
                    }
                    i3 += STATE_DRAGGING;
                    i2 = i;
                }
                i = i2;
                i3 += STATE_DRAGGING;
                i2 = i;
            }
            canvas.clipRect(i2, STATE_IDLE, width, getHeight());
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        if (this.mScrimOpacity > 0.0f && isContentView) {
            this.mScrimPaint.setColor((((int) (((float) ((this.mScrimColor & ViewCompat.MEASURED_STATE_MASK) >>> 24)) * this.mScrimOpacity)) << 24) | (this.mScrimColor & ViewCompat.MEASURED_SIZE_MASK));
            canvas.drawRect((float) i2, 0.0f, (float) width, (float) getHeight(), this.mScrimPaint);
        } else if (this.mShadowLeftResolved != null && checkDrawerViewAbsoluteGravity(view, 3)) {
            width = this.mShadowLeftResolved.getIntrinsicWidth();
            i = view.getRight();
            r2 = Math.max(0.0f, Math.min(((float) i) / ((float) this.mLeftDragger.getEdgeSize()), TOUCH_SLOP_SENSITIVITY));
            this.mShadowLeftResolved.setBounds(i, view.getTop(), width + i, view.getBottom());
            this.mShadowLeftResolved.setAlpha((int) (255.0f * r2));
            this.mShadowLeftResolved.draw(canvas);
        } else if (this.mShadowRightResolved != null && checkDrawerViewAbsoluteGravity(view, 5)) {
            width = this.mShadowRightResolved.getIntrinsicWidth();
            i = view.getLeft();
            r2 = Math.max(0.0f, Math.min(((float) (getWidth() - i)) / ((float) this.mRightDragger.getEdgeSize()), TOUCH_SLOP_SENSITIVITY));
            this.mShadowRightResolved.setBounds(i - width, view.getTop(), i, view.getBottom());
            this.mShadowRightResolved.setAlpha((int) (255.0f * r2));
            this.mShadowRightResolved.draw(canvas);
        }
        return drawChild;
    }

    View findDrawerWithGravity(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        int childCount = getChildCount();
        for (int i2 = STATE_IDLE; i2 < childCount; i2 += STATE_DRAGGING) {
            View childAt = getChildAt(i2);
            if ((getDrawerViewAbsoluteGravity(childAt) & 7) == (absoluteGravity & 7)) {
                return childAt;
            }
        }
        return null;
    }

    View findOpenDrawer() {
        int childCount = getChildCount();
        for (int i = STATE_IDLE; i < childCount; i += STATE_DRAGGING) {
            View childAt = getChildAt(i);
            if (((LayoutParams) childAt.getLayoutParams()).knownOpen) {
                return childAt;
            }
        }
        return null;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        return SET_DRAWER_SHADOW_FROM_ELEVATION ? this.mDrawerElevation : 0.0f;
    }

    public int getDrawerLockMode(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        return absoluteGravity == 3 ? this.mLockModeLeft : absoluteGravity == 5 ? this.mLockModeRight : STATE_IDLE;
    }

    public int getDrawerLockMode(View view) {
        int drawerViewAbsoluteGravity = getDrawerViewAbsoluteGravity(view);
        return drawerViewAbsoluteGravity == 3 ? this.mLockModeLeft : drawerViewAbsoluteGravity == 5 ? this.mLockModeRight : STATE_IDLE;
    }

    @Nullable
    public CharSequence getDrawerTitle(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        return absoluteGravity == 3 ? this.mTitleLeft : absoluteGravity == 5 ? this.mTitleRight : null;
    }

    int getDrawerViewAbsoluteGravity(View view) {
        return GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
    }

    float getDrawerViewOffset(View view) {
        return ((LayoutParams) view.getLayoutParams()).onScreen;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.mStatusBarBackground;
    }

    boolean isContentView(View view) {
        return ((LayoutParams) view.getLayoutParams()).gravity == 0 ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    public boolean isDrawerOpen(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        return findDrawerWithGravity != null ? isDrawerOpen(findDrawerWithGravity) : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    public boolean isDrawerOpen(View view) {
        if (isDrawerView(view)) {
            return ((LayoutParams) view.getLayoutParams()).knownOpen;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    boolean isDrawerView(View view) {
        return (GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view)) & 7) != 0 ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    public boolean isDrawerVisible(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        return findDrawerWithGravity != null ? isDrawerVisible(findDrawerWithGravity) : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    public boolean isDrawerVisible(View view) {
        if (isDrawerView(view)) {
            return ((LayoutParams) view.getLayoutParams()).onScreen > 0.0f ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
        } else {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
    }

    void moveDrawerToOffset(View view, float f) {
        float drawerViewOffset = getDrawerViewOffset(view);
        int width = view.getWidth();
        int i = ((int) (((float) width) * f)) - ((int) (drawerViewOffset * ((float) width)));
        if (!checkDrawerViewAbsoluteGravity(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        setDrawerViewOffset(view, f);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = CHILDREN_DISALLOW_INTERCEPT;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = CHILDREN_DISALLOW_INTERCEPT;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
            int topInset = IMPL.getTopInset(this.mLastInsets);
            if (topInset > 0) {
                this.mStatusBarBackground.setBounds(STATE_IDLE, STATE_IDLE, getWidth(), topInset);
                this.mStatusBarBackground.draw(canvas);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        boolean shouldInterceptTouchEvent = this.mLeftDragger.shouldInterceptTouchEvent(motionEvent);
        boolean shouldInterceptTouchEvent2 = this.mRightDragger.shouldInterceptTouchEvent(motionEvent);
        switch (actionMasked) {
            case STATE_IDLE /*0*/:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                if (this.mScrimOpacity > 0.0f) {
                    View findTopChildUnder = this.mLeftDragger.findTopChildUnder((int) x, (int) y);
                    if (findTopChildUnder != null && isContentView(findTopChildUnder)) {
                        z = CHILDREN_DISALLOW_INTERCEPT;
                        this.mDisallowInterceptRequested = SET_DRAWER_SHADOW_FROM_ELEVATION;
                        this.mChildrenCanceledTouch = SET_DRAWER_SHADOW_FROM_ELEVATION;
                        break;
                    }
                }
                z = SET_DRAWER_SHADOW_FROM_ELEVATION;
                this.mDisallowInterceptRequested = SET_DRAWER_SHADOW_FROM_ELEVATION;
                this.mChildrenCanceledTouch = SET_DRAWER_SHADOW_FROM_ELEVATION;
            case STATE_DRAGGING /*1*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                closeDrawers(CHILDREN_DISALLOW_INTERCEPT);
                this.mDisallowInterceptRequested = SET_DRAWER_SHADOW_FROM_ELEVATION;
                this.mChildrenCanceledTouch = SET_DRAWER_SHADOW_FROM_ELEVATION;
                z = SET_DRAWER_SHADOW_FROM_ELEVATION;
                break;
            case STATE_SETTLING /*2*/:
                if (!this.mLeftDragger.checkTouchSlop(3)) {
                    z = SET_DRAWER_SHADOW_FROM_ELEVATION;
                    break;
                }
                this.mLeftCallback.removeCallbacks();
                this.mRightCallback.removeCallbacks();
                z = SET_DRAWER_SHADOW_FROM_ELEVATION;
                break;
            default:
                z = SET_DRAWER_SHADOW_FROM_ELEVATION;
                break;
        }
        return ((shouldInterceptTouchEvent | shouldInterceptTouchEvent2) != 0 || z || hasPeekingDrawer() || this.mChildrenCanceledTouch) ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !hasVisibleDrawer()) {
            return super.onKeyDown(i, keyEvent);
        }
        KeyEventCompat.startTracking(keyEvent);
        return CHILDREN_DISALLOW_INTERCEPT;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View findVisibleDrawer = findVisibleDrawer();
        if (findVisibleDrawer != null && getDrawerLockMode(findVisibleDrawer) == 0) {
            closeDrawers();
        }
        return findVisibleDrawer != null ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mInLayout = CHILDREN_DISALLOW_INTERCEPT;
        int i5 = i3 - i;
        int childCount = getChildCount();
        for (int i6 = STATE_IDLE; i6 < childCount; i6 += STATE_DRAGGING) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (isContentView(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int i7;
                    float f;
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        i7 = (-measuredWidth) + ((int) (((float) measuredWidth) * layoutParams.onScreen));
                        f = ((float) (measuredWidth + i7)) / ((float) measuredWidth);
                    } else {
                        i7 = i5 - ((int) (((float) measuredWidth) * layoutParams.onScreen));
                        f = ((float) (i5 - i7)) / ((float) measuredWidth);
                    }
                    Object obj = f != layoutParams.onScreen ? STATE_DRAGGING : null;
                    int i8;
                    switch (layoutParams.gravity & 112) {
                        case Place.TYPE_CAMPGROUND /*16*/:
                            int i9 = i4 - i2;
                            i8 = (i9 - measuredHeight) / STATE_SETTLING;
                            if (i8 < layoutParams.topMargin) {
                                i8 = layoutParams.topMargin;
                            } else if (i8 + measuredHeight > i9 - layoutParams.bottomMargin) {
                                i8 = (i9 - layoutParams.bottomMargin) - measuredHeight;
                            }
                            childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
                            break;
                        case Place.TYPE_ROOFING_CONTRACTOR /*80*/:
                            i8 = i4 - i2;
                            childAt.layout(i7, (i8 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i7, i8 - layoutParams.bottomMargin);
                            break;
                        default:
                            childAt.layout(i7, layoutParams.topMargin, measuredWidth + i7, measuredHeight + layoutParams.topMargin);
                            break;
                    }
                    if (obj != null) {
                        setDrawerViewOffset(childAt, f);
                    }
                    int i10 = layoutParams.onScreen > 0.0f ? STATE_IDLE : 4;
                    if (childAt.getVisibility() != i10) {
                        childAt.setVisibility(i10);
                    }
                }
            }
        }
        this.mInLayout = SET_DRAWER_SHADOW_FROM_ELEVATION;
        this.mFirstLayout = SET_DRAWER_SHADOW_FROM_ELEVATION;
    }

    protected void onMeasure(int i, int i2) {
        int childCount;
        View childAt;
        LayoutParams layoutParams;
        int absoluteGravity;
        int i3 = 300;
        int i4 = STATE_IDLE;
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (!(mode == 1073741824 && mode2 == 1073741824)) {
            if (isInEditMode()) {
                if (mode != ExploreByTouchHelper.INVALID_ID && mode == 0) {
                    size = 300;
                }
                if (mode2 == ExploreByTouchHelper.INVALID_ID) {
                    i3 = size2;
                    size2 = size;
                } else if (mode2 == 0) {
                    size2 = size;
                }
                setMeasuredDimension(size2, i3);
                mode = (this.mLastInsets == null && ViewCompat.getFitsSystemWindows(this)) ? STATE_DRAGGING : STATE_IDLE;
                mode2 = ViewCompat.getLayoutDirection(this);
                childCount = getChildCount();
                while (i4 < childCount) {
                    childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 8) {
                        layoutParams = (LayoutParams) childAt.getLayoutParams();
                        if (mode != 0) {
                            absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.gravity, mode2);
                            if (ViewCompat.getFitsSystemWindows(childAt)) {
                                IMPL.applyMarginInsets(layoutParams, this.mLastInsets, absoluteGravity);
                            } else {
                                IMPL.dispatchChildInsets(childAt, this.mLastInsets, absoluteGravity);
                            }
                        }
                        if (isContentView(childAt)) {
                            childAt.measure(MeasureSpec.makeMeasureSpec((size2 - layoutParams.leftMargin) - layoutParams.rightMargin, 1073741824), MeasureSpec.makeMeasureSpec((i3 - layoutParams.topMargin) - layoutParams.bottomMargin, 1073741824));
                        } else if (isDrawerView(childAt)) {
                            throw new IllegalStateException("Child " + childAt + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
                        } else {
                            if (SET_DRAWER_SHADOW_FROM_ELEVATION && ViewCompat.getElevation(childAt) != this.mDrawerElevation) {
                                ViewCompat.setElevation(childAt, this.mDrawerElevation);
                            }
                            absoluteGravity = getDrawerViewAbsoluteGravity(childAt) & 7;
                            if ((absoluteGravity & STATE_IDLE) == 0) {
                                throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(absoluteGravity) + " but this " + TAG + " already has a " + "drawer view along that edge");
                            }
                            childAt.measure(getChildMeasureSpec(i, (this.mMinDrawerMargin + layoutParams.leftMargin) + layoutParams.rightMargin, layoutParams.width), getChildMeasureSpec(i2, layoutParams.topMargin + layoutParams.bottomMargin, layoutParams.height));
                        }
                    }
                    i4 += STATE_DRAGGING;
                }
            }
            throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
        }
        i3 = size2;
        size2 = size;
        setMeasuredDimension(size2, i3);
        if (this.mLastInsets == null) {
        }
        mode2 = ViewCompat.getLayoutDirection(this);
        childCount = getChildCount();
        while (i4 < childCount) {
            childAt = getChildAt(i4);
            if (childAt.getVisibility() == 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (mode != 0) {
                    absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.gravity, mode2);
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        IMPL.applyMarginInsets(layoutParams, this.mLastInsets, absoluteGravity);
                    } else {
                        IMPL.dispatchChildInsets(childAt, this.mLastInsets, absoluteGravity);
                    }
                }
                if (isContentView(childAt)) {
                    childAt.measure(MeasureSpec.makeMeasureSpec((size2 - layoutParams.leftMargin) - layoutParams.rightMargin, 1073741824), MeasureSpec.makeMeasureSpec((i3 - layoutParams.topMargin) - layoutParams.bottomMargin, 1073741824));
                } else if (isDrawerView(childAt)) {
                    throw new IllegalStateException("Child " + childAt + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
                } else {
                    ViewCompat.setElevation(childAt, this.mDrawerElevation);
                    absoluteGravity = getDrawerViewAbsoluteGravity(childAt) & 7;
                    if ((absoluteGravity & STATE_IDLE) == 0) {
                        childAt.measure(getChildMeasureSpec(i, (this.mMinDrawerMargin + layoutParams.leftMargin) + layoutParams.rightMargin, layoutParams.width), getChildMeasureSpec(i2, layoutParams.topMargin + layoutParams.bottomMargin, layoutParams.height));
                    } else {
                        throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(absoluteGravity) + " but this " + TAG + " already has a " + "drawer view along that edge");
                    }
                }
            }
            i4 += STATE_DRAGGING;
        }
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.openDrawerGravity != 0) {
            View findDrawerWithGravity = findDrawerWithGravity(savedState.openDrawerGravity);
            if (findDrawerWithGravity != null) {
                openDrawer(findDrawerWithGravity);
            }
        }
        setDrawerLockMode(savedState.lockModeLeft, 3);
        setDrawerLockMode(savedState.lockModeRight, 5);
    }

    public void onRtlPropertiesChanged(int i) {
        resolveShadowDrawables();
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        View findOpenDrawer = findOpenDrawer();
        if (findOpenDrawer != null) {
            savedState.openDrawerGravity = ((LayoutParams) findOpenDrawer.getLayoutParams()).gravity;
        }
        savedState.lockModeLeft = this.mLockModeLeft;
        savedState.lockModeRight = this.mLockModeRight;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mLeftDragger.processTouchEvent(motionEvent);
        this.mRightDragger.processTouchEvent(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & MotionEventCompat.ACTION_MASK) {
            case STATE_IDLE /*0*/:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                this.mDisallowInterceptRequested = SET_DRAWER_SHADOW_FROM_ELEVATION;
                this.mChildrenCanceledTouch = SET_DRAWER_SHADOW_FROM_ELEVATION;
                break;
            case STATE_DRAGGING /*1*/:
                boolean z;
                x = motionEvent.getX();
                y = motionEvent.getY();
                View findTopChildUnder = this.mLeftDragger.findTopChildUnder((int) x, (int) y);
                if (findTopChildUnder != null && isContentView(findTopChildUnder)) {
                    x -= this.mInitialMotionX;
                    y -= this.mInitialMotionY;
                    int touchSlop = this.mLeftDragger.getTouchSlop();
                    if ((x * x) + (y * y) < ((float) (touchSlop * touchSlop))) {
                        View findOpenDrawer = findOpenDrawer();
                        if (findOpenDrawer != null) {
                            z = getDrawerLockMode(findOpenDrawer) == STATE_SETTLING ? CHILDREN_DISALLOW_INTERCEPT : SET_DRAWER_SHADOW_FROM_ELEVATION;
                            closeDrawers(z);
                            this.mDisallowInterceptRequested = SET_DRAWER_SHADOW_FROM_ELEVATION;
                            break;
                        }
                    }
                }
                z = CHILDREN_DISALLOW_INTERCEPT;
                closeDrawers(z);
                this.mDisallowInterceptRequested = SET_DRAWER_SHADOW_FROM_ELEVATION;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                closeDrawers(CHILDREN_DISALLOW_INTERCEPT);
                this.mDisallowInterceptRequested = SET_DRAWER_SHADOW_FROM_ELEVATION;
                this.mChildrenCanceledTouch = SET_DRAWER_SHADOW_FROM_ELEVATION;
                break;
        }
        return CHILDREN_DISALLOW_INTERCEPT;
    }

    public void openDrawer(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        if (findDrawerWithGravity == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(i));
        }
        openDrawer(findDrawerWithGravity);
    }

    public void openDrawer(View view) {
        if (isDrawerView(view)) {
            if (this.mFirstLayout) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                layoutParams.onScreen = TOUCH_SLOP_SENSITIVITY;
                layoutParams.knownOpen = CHILDREN_DISALLOW_INTERCEPT;
                updateChildrenImportantForAccessibility(view, CHILDREN_DISALLOW_INTERCEPT);
            } else if (checkDrawerViewAbsoluteGravity(view, 3)) {
                this.mLeftDragger.smoothSlideViewTo(view, STATE_IDLE, view.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.mDisallowInterceptRequested = z;
        if (z) {
            closeDrawers(CHILDREN_DISALLOW_INTERCEPT);
        }
    }

    public void requestLayout() {
        if (!this.mInLayout) {
            super.requestLayout();
        }
    }

    public void setChildInsets(Object obj, boolean z) {
        this.mLastInsets = obj;
        this.mDrawStatusBarBackground = z;
        boolean z2 = (z || getBackground() != null) ? SET_DRAWER_SHADOW_FROM_ELEVATION : CHILDREN_DISALLOW_INTERCEPT;
        setWillNotDraw(z2);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.mDrawerElevation = f;
        for (int i = STATE_IDLE; i < getChildCount(); i += STATE_DRAGGING) {
            View childAt = getChildAt(i);
            if (isDrawerView(childAt)) {
                ViewCompat.setElevation(childAt, this.mDrawerElevation);
            }
        }
    }

    public void setDrawerListener(DrawerListener drawerListener) {
        this.mListener = drawerListener;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.mLockModeLeft = i;
        } else if (absoluteGravity == 5) {
            this.mLockModeRight = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.mLeftDragger : this.mRightDragger).cancel();
        }
        View findDrawerWithGravity;
        switch (i) {
            case STATE_DRAGGING /*1*/:
                findDrawerWithGravity = findDrawerWithGravity(absoluteGravity);
                if (findDrawerWithGravity != null) {
                    closeDrawer(findDrawerWithGravity);
                }
            case STATE_SETTLING /*2*/:
                findDrawerWithGravity = findDrawerWithGravity(absoluteGravity);
                if (findDrawerWithGravity != null) {
                    openDrawer(findDrawerWithGravity);
                }
            default:
        }
    }

    public void setDrawerLockMode(int i, View view) {
        if (isDrawerView(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).gravity);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a " + "drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(@DrawableRes int i, int i2) {
        setDrawerShadow(getResources().getDrawable(i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (!SET_DRAWER_SHADOW_FROM_ELEVATION) {
            if ((i & GravityCompat.START) == GravityCompat.START) {
                this.mShadowStart = drawable;
            } else if ((i & GravityCompat.END) == GravityCompat.END) {
                this.mShadowEnd = drawable;
            } else if ((i & 3) == 3) {
                this.mShadowLeft = drawable;
            } else if ((i & 5) == 5) {
                this.mShadowRight = drawable;
            } else {
                return;
            }
            resolveShadowDrawables();
            invalidate();
        }
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.mTitleLeft = charSequence;
        } else if (absoluteGravity == 5) {
            this.mTitleRight = charSequence;
        }
    }

    void setDrawerViewOffset(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.onScreen) {
            layoutParams.onScreen = f;
            dispatchOnDrawerSlide(view, f);
        }
    }

    public void setScrimColor(@ColorInt int i) {
        this.mScrimColor = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.mStatusBarBackground = i != 0 ? ContextCompat.getDrawable(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.mStatusBarBackground = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        this.mStatusBarBackground = new ColorDrawable(i);
        invalidate();
    }

    void updateDrawerState(int i, int i2, View view) {
        int i3 = STATE_DRAGGING;
        int viewDragState = this.mLeftDragger.getViewDragState();
        int viewDragState2 = this.mRightDragger.getViewDragState();
        if (!(viewDragState == STATE_DRAGGING || viewDragState2 == STATE_DRAGGING)) {
            i3 = (viewDragState == STATE_SETTLING || viewDragState2 == STATE_SETTLING) ? STATE_SETTLING : STATE_IDLE;
        }
        if (view != null && i2 == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.onScreen == 0.0f) {
                dispatchOnDrawerClosed(view);
            } else if (layoutParams.onScreen == TOUCH_SLOP_SENSITIVITY) {
                dispatchOnDrawerOpened(view);
            }
        }
        if (i3 != this.mDrawerState) {
            this.mDrawerState = i3;
            if (this.mListener != null) {
                this.mListener.onDrawerStateChanged(i3);
            }
        }
    }
}
