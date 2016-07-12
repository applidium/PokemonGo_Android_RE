package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import spacemadness.com.lunarconsole.C1401R;

public class SlidingPaneLayout extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    private final ArrayList<DisableLayerRunnable> mPostedRunnables;
    private boolean mPreservedOpenState;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect;

        AccessibilityDelegate() {
            this.mTmpRect = new Rect();
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
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean filter(View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            copyNodeInfoNoChildren(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource(view);
            ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!filter(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return !filter(view) ? super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : false;
        }
    }

    private class DisableLayerRunnable implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                ViewCompat.setLayerType(this.mChildView, 0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    private class DragHelperCallback extends Callback {
        private DragHelperCallback() {
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.mSlideableView.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                int width = SlidingPaneLayout.this.getWidth() - ((layoutParams.rightMargin + SlidingPaneLayout.this.getPaddingRight()) + SlidingPaneLayout.this.mSlideableView.getWidth());
                return Math.max(Math.min(i, width), width - SlidingPaneLayout.this.mSlideRange);
            }
            width = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
            return Math.min(Math.max(i, width), width + SlidingPaneLayout.this.mSlideRange);
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        public void onEdgeDragStarted(int i, int i2) {
            SlidingPaneLayout.this.mDragHelper.captureChildView(SlidingPaneLayout.this.mSlideableView, i2);
        }

        public void onViewCaptured(View view, int i) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }

        public void onViewDragStateChanged(int i) {
            if (SlidingPaneLayout.this.mDragHelper.getViewDragState() != 0) {
                return;
            }
            if (SlidingPaneLayout.this.mSlideOffset == 0.0f) {
                SlidingPaneLayout.this.updateObscuredViewsVisibility(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.dispatchOnPanelClosed(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = false;
                return;
            }
            SlidingPaneLayout.this.dispatchOnPanelOpened(SlidingPaneLayout.this.mSlideableView);
            SlidingPaneLayout.this.mPreservedOpenState = true;
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.onPanelDragged(i);
            SlidingPaneLayout.this.invalidate();
        }

        public void onViewReleased(View view, float f, float f2) {
            int paddingRight;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                paddingRight = layoutParams.rightMargin + SlidingPaneLayout.this.getPaddingRight();
                if (f < 0.0f || (f == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.mSlideRange;
                }
                paddingRight = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.mSlideableView.getWidth();
            } else {
                paddingRight = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.mSlideRange;
                }
            }
            SlidingPaneLayout.this.mDragHelper.settleCapturedViewAt(paddingRight, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        public boolean tryCaptureView(View view, int i) {
            return SlidingPaneLayout.this.mIsUnableToDrag ? false : ((LayoutParams) view.getLayoutParams()).slideable;
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        private static final int[] ATTRS;
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;

        static {
            ATTRS = new int[]{16843137};
        }

        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.weight = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
            this.weight = layoutParams.weight;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = 0.0f;
        }
    }

    public interface PanelSlideListener {
        void onPanelClosed(View view);

        void onPanelOpened(View view);

        void onPanelSlide(View view, float f);
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        boolean isOpen;

        /* renamed from: android.support.v4.widget.SlidingPaneLayout.SavedState.1 */
        static final class C01211 implements Creator<SavedState> {
            C01211() {
            }

            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(null);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        static {
            CREATOR = new C01211();
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.isOpen = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isOpen ? 1 : 0);
        }
    }

    public static class SimplePanelSlideListener implements PanelSlideListener {
        public void onPanelClosed(View view) {
        }

        public void onPanelOpened(View view) {
        }

        public void onPanelSlide(View view, float f) {
        }
    }

    interface SlidingPanelLayoutImpl {
        void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view);
    }

    static class SlidingPanelLayoutImplBase implements SlidingPanelLayoutImpl {
        SlidingPanelLayoutImplBase() {
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.postInvalidateOnAnimation(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    static class SlidingPanelLayoutImplJB extends SlidingPanelLayoutImplBase {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        SlidingPanelLayoutImplJB() {
            try {
                this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", (Class[]) null);
            } catch (Throwable e) {
                Log.e(SlidingPaneLayout.TAG, "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                this.mRecreateDisplayList.setAccessible(true);
            } catch (Throwable e2) {
                Log.e(SlidingPaneLayout.TAG, "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.mGetDisplayList == null || this.mRecreateDisplayList == null) {
                view.invalidate();
                return;
            }
            try {
                this.mRecreateDisplayList.setBoolean(view, true);
                this.mGetDisplayList.invoke(view, (Object[]) null);
            } catch (Throwable e) {
                Log.e(SlidingPaneLayout.TAG, "Error refreshing display list state", e);
            }
            super.invalidateChildRegion(slidingPaneLayout, view);
        }
    }

    static class SlidingPanelLayoutImplJBMR1 extends SlidingPanelLayoutImplBase {
        SlidingPanelLayoutImplJBMR1() {
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.setLayerPaint(view, ((LayoutParams) view.getLayoutParams()).dimPaint);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 17) {
            IMPL = new SlidingPanelLayoutImplJBMR1();
        } else if (i >= 16) {
            IMPL = new SlidingPanelLayoutImplJB();
        } else {
            IMPL = new SlidingPanelLayoutImplBase();
        }
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSliderFadeColor = DEFAULT_FADE_COLOR;
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList();
        float f = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int) ((32.0f * f) + 0.5f);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        this.mDragHelper = ViewDragHelper.create(this, 0.5f, new DragHelperCallback());
        this.mDragHelper.setMinVelocity(f * 400.0f);
    }

    private boolean closePane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(0.0f, i)) {
            return false;
        }
        this.mPreservedOpenState = false;
        return true;
    }

    private void dimChildView(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (int) (((float) ((ViewCompat.MEASURED_STATE_MASK & i) >>> 24)) * f);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (ViewCompat.MEASURED_SIZE_MASK & i), Mode.SRC_OVER));
            if (ViewCompat.getLayerType(view) != 2) {
                ViewCompat.setLayerType(view, 2, layoutParams.dimPaint);
            }
            invalidateChildRegion(view);
        } else if (ViewCompat.getLayerType(view) != 0) {
            if (layoutParams.dimPaint != null) {
                layoutParams.dimPaint.setColorFilter(null);
            }
            Runnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.mPostedRunnables.add(disableLayerRunnable);
            ViewCompat.postOnAnimation(this, disableLayerRunnable);
        }
    }

    private void invalidateChildRegion(View view) {
        IMPL.invalidateChildRegion(this, view);
    }

    private boolean isLayoutRtlSupport() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    private void onPanelDragged(int i) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        int width = this.mSlideableView.getWidth();
        if (isLayoutRtlSupport) {
            i = (getWidth() - i) - width;
        }
        this.mSlideOffset = ((float) (i - ((isLayoutRtlSupport ? layoutParams.rightMargin : layoutParams.leftMargin) + (isLayoutRtlSupport ? getPaddingRight() : getPaddingLeft())))) / ((float) this.mSlideRange);
        if (this.mParallaxBy != 0) {
            parallaxOtherViews(this.mSlideOffset);
        }
        if (layoutParams.dimWhenOffset) {
            dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        dispatchOnPanelSlide(this.mSlideableView);
    }

    private boolean openPane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(1.0f, i)) {
            return false;
        }
        this.mPreservedOpenState = true;
        return true;
    }

    private void parallaxOtherViews(float f) {
        Object obj;
        int childCount;
        int i;
        View childAt;
        int i2;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        if (layoutParams.dimWhenOffset) {
            if ((isLayoutRtlSupport ? layoutParams.rightMargin : layoutParams.leftMargin) <= 0) {
                obj = 1;
                childCount = getChildCount();
                for (i = 0; i < childCount; i++) {
                    childAt = getChildAt(i);
                    if (childAt == this.mSlideableView) {
                        i2 = (int) ((1.0f - this.mParallaxOffset) * ((float) this.mParallaxBy));
                        this.mParallaxOffset = f;
                        i2 -= (int) ((1.0f - f) * ((float) this.mParallaxBy));
                        if (isLayoutRtlSupport) {
                            i2 = -i2;
                        }
                        childAt.offsetLeftAndRight(i2);
                        if (obj == null) {
                            dimChildView(childAt, isLayoutRtlSupport ? this.mParallaxOffset - 1.0f : 1.0f - this.mParallaxOffset, this.mCoveredFadeColor);
                        }
                    }
                }
            }
        }
        obj = null;
        childCount = getChildCount();
        for (i = 0; i < childCount; i++) {
            childAt = getChildAt(i);
            if (childAt == this.mSlideableView) {
                i2 = (int) ((1.0f - this.mParallaxOffset) * ((float) this.mParallaxBy));
                this.mParallaxOffset = f;
                i2 -= (int) ((1.0f - f) * ((float) this.mParallaxBy));
                if (isLayoutRtlSupport) {
                    i2 = -i2;
                }
                childAt.offsetLeftAndRight(i2);
                if (obj == null) {
                    if (isLayoutRtlSupport) {
                    }
                    dimChildView(childAt, isLayoutRtlSupport ? this.mParallaxOffset - 1.0f : 1.0f - this.mParallaxOffset, this.mCoveredFadeColor);
                }
            }
        }
    }

    private static boolean viewIsOpaque(View view) {
        if (!ViewCompat.isOpaque(view)) {
            if (VERSION.SDK_INT >= 18) {
                return false;
            }
            Drawable background = view.getBackground();
            if (background == null) {
                return false;
            }
            if (background.getOpacity() != -1) {
                return false;
            }
        }
        return true;
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    if (canScroll(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        if (z) {
            if (!isLayoutRtlSupport()) {
                i = -i;
            }
            if (ViewCompat.canScrollHorizontally(view, i)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public boolean closePane() {
        return closePane(this.mSlideableView, 0);
    }

    public void computeScroll() {
        if (!this.mDragHelper.continueSettling(true)) {
            return;
        }
        if (this.mCanSlide) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            this.mDragHelper.abort();
        }
    }

    void dispatchOnPanelClosed(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelClosed(view);
        }
        sendAccessibilityEvent(DEFAULT_OVERHANG_SIZE);
    }

    void dispatchOnPanelOpened(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelOpened(view);
        }
        sendAccessibilityEvent(DEFAULT_OVERHANG_SIZE);
    }

    void dispatchOnPanelSlide(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = isLayoutRtlSupport() ? this.mShadowDrawableRight : this.mShadowDrawableLeft;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int right;
            int i;
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (isLayoutRtlSupport()) {
                right = childAt.getRight();
                i = right + intrinsicWidth;
            } else {
                i = childAt.getLeft();
                right = i - intrinsicWidth;
            }
            drawable.setBounds(right, top, i, bottom);
            drawable.draw(canvas);
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save(2);
        if (!(!this.mCanSlide || layoutParams.slideable || this.mSlideableView == null)) {
            canvas.getClipBounds(this.mTmpRect);
            if (isLayoutRtlSupport()) {
                this.mTmpRect.left = Math.max(this.mTmpRect.left, this.mSlideableView.getRight());
            } else {
                this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        if (VERSION.SDK_INT >= 11) {
            drawChild = super.drawChild(canvas, view, j);
        } else if (!layoutParams.dimWhenOffset || this.mSlideOffset <= 0.0f) {
            if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
            drawChild = super.drawChild(canvas, view, j);
        } else {
            if (!view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(true);
            }
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                canvas.drawBitmap(drawingCache, (float) view.getLeft(), (float) view.getTop(), layoutParams.dimPaint);
                drawChild = false;
            } else {
                Log.e(TAG, "drawChild: child view " + view + " returned null drawing cache");
                drawChild = super.drawChild(canvas, view, j);
            }
        }
        canvas.restoreToCount(save);
        return drawChild;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        return this.mCanSlide && ((LayoutParams) view.getLayoutParams()).dimWhenOffset && this.mSlideOffset > 0.0f;
    }

    public boolean isOpen() {
        return !this.mCanSlide || this.mSlideOffset == 1.0f;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int size = this.mPostedRunnables.size();
        for (int i = 0; i < size; i++) {
            ((DisableLayerRunnable) this.mPostedRunnables.get(i)).run();
        }
        this.mPostedRunnables.clear();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (!this.mCanSlide && actionMasked == 0 && getChildCount() > 1) {
            View childAt = getChildAt(1);
            if (childAt != null) {
                this.mPreservedOpenState = !this.mDragHelper.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
            }
        }
        if (!this.mCanSlide || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.cancel();
            return false;
        } else {
            boolean z;
            float x;
            float y;
            switch (actionMasked) {
                case C1401R.styleable.AdsAttrs_adSize /*0*/:
                    this.mIsUnableToDrag = false;
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    this.mInitialMotionX = x;
                    this.mInitialMotionY = y;
                    if (this.mDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y) && isDimmed(this.mSlideableView)) {
                        z = true;
                        break;
                    }
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    z = false;
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    x = Math.abs(x - this.mInitialMotionX);
                    y = Math.abs(y - this.mInitialMotionY);
                    if (x > ((float) this.mDragHelper.getTouchSlop()) && y > x) {
                        this.mDragHelper.cancel();
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                    z = false;
                    break;
                default:
                    z = false;
                    break;
            }
            z = false;
            return this.mDragHelper.shouldInterceptTouchEvent(motionEvent) || z;
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        if (isLayoutRtlSupport) {
            this.mDragHelper.setEdgeTrackingEnabled(2);
        } else {
            this.mDragHelper.setEdgeTrackingEnabled(1);
        }
        int i6 = i3 - i;
        int paddingRight = isLayoutRtlSupport ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = isLayoutRtlSupport ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.mFirstLayout) {
            float f = (this.mCanSlide && this.mPreservedOpenState) ? 1.0f : 0.0f;
            this.mSlideOffset = f;
        }
        int i7 = 0;
        int i8 = paddingRight;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                i5 = paddingRight;
                paddingRight = i8;
            } else {
                int i9;
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.slideable) {
                    int min = (Math.min(i8, (i6 - paddingLeft) - this.mOverhangSize) - paddingRight) - (layoutParams.leftMargin + layoutParams.rightMargin);
                    this.mSlideRange = min;
                    i9 = isLayoutRtlSupport ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.dimWhenOffset = ((paddingRight + i9) + min) + (measuredWidth / 2) > i6 - paddingLeft;
                    int i10 = (int) (((float) min) * this.mSlideOffset);
                    i5 = (i10 + i9) + paddingRight;
                    this.mSlideOffset = ((float) i10) / ((float) this.mSlideRange);
                    paddingRight = 0;
                } else if (!this.mCanSlide || this.mParallaxBy == 0) {
                    paddingRight = 0;
                    i5 = i8;
                } else {
                    paddingRight = (int) ((1.0f - this.mSlideOffset) * ((float) this.mParallaxBy));
                    i5 = i8;
                }
                if (isLayoutRtlSupport) {
                    paddingRight += i6 - i5;
                    i9 = paddingRight - measuredWidth;
                } else {
                    i9 = i5 - paddingRight;
                    paddingRight = i9 + measuredWidth;
                }
                childAt.layout(i9, paddingTop, paddingRight, childAt.getMeasuredHeight() + paddingTop);
                paddingRight = childAt.getWidth() + i8;
            }
            i7++;
            i8 = paddingRight;
            paddingRight = i5;
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide) {
                if (this.mParallaxBy != 0) {
                    parallaxOtherViews(this.mSlideOffset);
                }
                if (((LayoutParams) this.mSlideableView.getLayoutParams()).dimWhenOffset) {
                    dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
                }
            } else {
                for (i5 = 0; i5 < childCount; i5++) {
                    dimChildView(getChildAt(i5), 0.0f, this.mSliderFadeColor);
                }
            }
            updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int r16, int r17) {
        /*
        r15 = this;
        r3 = android.view.View.MeasureSpec.getMode(r16);
        r1 = android.view.View.MeasureSpec.getSize(r16);
        r0 = android.view.View.MeasureSpec.getMode(r17);
        r2 = android.view.View.MeasureSpec.getSize(r17);
        r4 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r3 == r4) goto L_0x007a;
    L_0x0014:
        r4 = r15.isInEditMode();
        if (r4 == 0) goto L_0x0072;
    L_0x001a:
        r4 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r3 != r4) goto L_0x006b;
    L_0x001e:
        r9 = r0;
        r11 = r1;
    L_0x0020:
        r0 = 0;
        r1 = -1;
        switch(r9) {
            case -2147483648: goto L_0x00a0;
            case 1073741824: goto L_0x0093;
            default: goto L_0x0025;
        };
    L_0x0025:
        r5 = 0;
        r2 = 0;
        r3 = r15.getPaddingLeft();
        r3 = r11 - r3;
        r4 = r15.getPaddingRight();
        r10 = r3 - r4;
        r12 = r15.getChildCount();
        r3 = 2;
        if (r12 <= r3) goto L_0x0041;
    L_0x003a:
        r3 = "SlidingPaneLayout";
        r4 = "onMeasure: More than two child views are not supported.";
        android.util.Log.e(r3, r4);
    L_0x0041:
        r3 = 0;
        r15.mSlideableView = r3;
        r3 = 0;
        r8 = r3;
        r4 = r0;
        r3 = r10;
    L_0x0048:
        if (r8 >= r12) goto L_0x012e;
    L_0x004a:
        r13 = r15.getChildAt(r8);
        r0 = r13.getLayoutParams();
        r0 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r0;
        r6 = r13.getVisibility();
        r7 = 8;
        if (r6 != r7) goto L_0x00ad;
    L_0x005c:
        r6 = 0;
        r0.dimWhenOffset = r6;
        r0 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
    L_0x0063:
        r5 = r8 + 1;
        r8 = r5;
        r5 = r4;
        r4 = r3;
        r3 = r2;
        r2 = r0;
        goto L_0x0048;
    L_0x006b:
        if (r3 != 0) goto L_0x0247;
    L_0x006d:
        r1 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        r9 = r0;
        r11 = r1;
        goto L_0x0020;
    L_0x0072:
        r0 = new java.lang.IllegalStateException;
        r1 = "Width must have an exact value or MATCH_PARENT";
        r0.<init>(r1);
        throw r0;
    L_0x007a:
        if (r0 != 0) goto L_0x0247;
    L_0x007c:
        r3 = r15.isInEditMode();
        if (r3 == 0) goto L_0x008b;
    L_0x0082:
        if (r0 != 0) goto L_0x0247;
    L_0x0084:
        r0 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r2 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        r9 = r0;
        r11 = r1;
        goto L_0x0020;
    L_0x008b:
        r0 = new java.lang.IllegalStateException;
        r1 = "Height must not be UNSPECIFIED";
        r0.<init>(r1);
        throw r0;
    L_0x0093:
        r0 = r15.getPaddingTop();
        r0 = r2 - r0;
        r1 = r15.getPaddingBottom();
        r0 = r0 - r1;
        r1 = r0;
        goto L_0x0025;
    L_0x00a0:
        r1 = r15.getPaddingTop();
        r1 = r2 - r1;
        r2 = r15.getPaddingBottom();
        r1 = r1 - r2;
        goto L_0x0025;
    L_0x00ad:
        r6 = r0.weight;
        r7 = 0;
        r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1));
        if (r6 <= 0) goto L_0x00bb;
    L_0x00b4:
        r6 = r0.weight;
        r5 = r5 + r6;
        r6 = r0.width;
        if (r6 == 0) goto L_0x0241;
    L_0x00bb:
        r6 = r0.leftMargin;
        r7 = r0.rightMargin;
        r6 = r6 + r7;
        r7 = r0.width;
        r14 = -2;
        if (r7 != r14) goto L_0x0100;
    L_0x00c5:
        r6 = r10 - r6;
        r7 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r7);
    L_0x00cd:
        r7 = r0.height;
        r14 = -2;
        if (r7 != r14) goto L_0x0117;
    L_0x00d2:
        r7 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r7 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r7);
    L_0x00d8:
        r13.measure(r6, r7);
        r6 = r13.getMeasuredWidth();
        r7 = r13.getMeasuredHeight();
        r14 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r9 != r14) goto L_0x00ed;
    L_0x00e7:
        if (r7 <= r4) goto L_0x00ed;
    L_0x00e9:
        r4 = java.lang.Math.min(r7, r1);
    L_0x00ed:
        r3 = r3 - r6;
        if (r3 >= 0) goto L_0x012c;
    L_0x00f0:
        r6 = 1;
    L_0x00f1:
        r0.slideable = r6;
        r2 = r2 | r6;
        r0 = r0.slideable;
        if (r0 == 0) goto L_0x0241;
    L_0x00f8:
        r15.mSlideableView = r13;
        r0 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x0063;
    L_0x0100:
        r7 = r0.width;
        r14 = -1;
        if (r7 != r14) goto L_0x010e;
    L_0x0105:
        r6 = r10 - r6;
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r7);
        goto L_0x00cd;
    L_0x010e:
        r6 = r0.width;
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r7);
        goto L_0x00cd;
    L_0x0117:
        r7 = r0.height;
        r14 = -1;
        if (r7 != r14) goto L_0x0123;
    L_0x011c:
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r7 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r7);
        goto L_0x00d8;
    L_0x0123:
        r7 = r0.height;
        r14 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r7 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r14);
        goto L_0x00d8;
    L_0x012c:
        r6 = 0;
        goto L_0x00f1;
    L_0x012e:
        if (r2 != 0) goto L_0x0135;
    L_0x0130:
        r0 = 0;
        r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1));
        if (r0 <= 0) goto L_0x0222;
    L_0x0135:
        r0 = r15.mOverhangSize;
        r13 = r10 - r0;
        r0 = 0;
        r9 = r0;
    L_0x013b:
        if (r9 >= r12) goto L_0x0222;
    L_0x013d:
        r14 = r15.getChildAt(r9);
        r0 = r14.getVisibility();
        r6 = 8;
        if (r0 != r6) goto L_0x014d;
    L_0x0149:
        r0 = r9 + 1;
        r9 = r0;
        goto L_0x013b;
    L_0x014d:
        r0 = r14.getLayoutParams();
        r0 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r0;
        r6 = r14.getVisibility();
        r7 = 8;
        if (r6 == r7) goto L_0x0149;
    L_0x015b:
        r6 = r0.width;
        if (r6 != 0) goto L_0x0196;
    L_0x015f:
        r6 = r0.weight;
        r7 = 0;
        r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1));
        if (r6 <= 0) goto L_0x0196;
    L_0x0166:
        r6 = 1;
        r8 = r6;
    L_0x0168:
        if (r8 == 0) goto L_0x0199;
    L_0x016a:
        r6 = 0;
        r7 = r6;
    L_0x016c:
        if (r2 == 0) goto L_0x01bf;
    L_0x016e:
        r6 = r15.mSlideableView;
        if (r14 == r6) goto L_0x01bf;
    L_0x0172:
        r6 = r0.width;
        if (r6 >= 0) goto L_0x0149;
    L_0x0176:
        if (r7 > r13) goto L_0x017f;
    L_0x0178:
        r6 = r0.weight;
        r7 = 0;
        r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1));
        if (r6 <= 0) goto L_0x0149;
    L_0x017f:
        if (r8 == 0) goto L_0x01b4;
    L_0x0181:
        r6 = r0.height;
        r7 = -2;
        if (r6 != r7) goto L_0x019f;
    L_0x0186:
        r0 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0);
    L_0x018c:
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r13, r6);
        r14.measure(r6, r0);
        goto L_0x0149;
    L_0x0196:
        r6 = 0;
        r8 = r6;
        goto L_0x0168;
    L_0x0199:
        r6 = r14.getMeasuredWidth();
        r7 = r6;
        goto L_0x016c;
    L_0x019f:
        r6 = r0.height;
        r7 = -1;
        if (r6 != r7) goto L_0x01ab;
    L_0x01a4:
        r0 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r0);
        goto L_0x018c;
    L_0x01ab:
        r0 = r0.height;
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r6);
        goto L_0x018c;
    L_0x01b4:
        r0 = r14.getMeasuredHeight();
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r6);
        goto L_0x018c;
    L_0x01bf:
        r6 = r0.weight;
        r8 = 0;
        r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r6 <= 0) goto L_0x0149;
    L_0x01c6:
        r6 = r0.width;
        if (r6 != 0) goto L_0x0200;
    L_0x01ca:
        r6 = r0.height;
        r8 = -2;
        if (r6 != r8) goto L_0x01eb;
    L_0x01cf:
        r6 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r6);
    L_0x01d5:
        if (r2 == 0) goto L_0x020b;
    L_0x01d7:
        r8 = r0.leftMargin;
        r0 = r0.rightMargin;
        r0 = r0 + r8;
        r0 = r10 - r0;
        r8 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r8);
        if (r7 == r0) goto L_0x0149;
    L_0x01e6:
        r14.measure(r8, r6);
        goto L_0x0149;
    L_0x01eb:
        r6 = r0.height;
        r8 = -1;
        if (r6 != r8) goto L_0x01f7;
    L_0x01f0:
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r6);
        goto L_0x01d5;
    L_0x01f7:
        r6 = r0.height;
        r8 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r8);
        goto L_0x01d5;
    L_0x0200:
        r6 = r14.getMeasuredHeight();
        r8 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r8);
        goto L_0x01d5;
    L_0x020b:
        r8 = 0;
        r8 = java.lang.Math.max(r8, r3);
        r0 = r0.weight;
        r8 = (float) r8;
        r0 = r0 * r8;
        r0 = r0 / r5;
        r0 = (int) r0;
        r0 = r0 + r7;
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r7);
        r14.measure(r0, r6);
        goto L_0x0149;
    L_0x0222:
        r0 = r15.getPaddingTop();
        r0 = r0 + r4;
        r1 = r15.getPaddingBottom();
        r0 = r0 + r1;
        r15.setMeasuredDimension(r11, r0);
        r15.mCanSlide = r2;
        r0 = r15.mDragHelper;
        r0 = r0.getViewDragState();
        if (r0 == 0) goto L_0x0240;
    L_0x0239:
        if (r2 != 0) goto L_0x0240;
    L_0x023b:
        r0 = r15.mDragHelper;
        r0.abort();
    L_0x0240:
        return;
    L_0x0241:
        r0 = r2;
        r2 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x0063;
    L_0x0247:
        r9 = r0;
        r11 = r1;
        goto L_0x0020;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.onMeasure(int, int):void");
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isOpen) {
            openPane();
        } else {
            closePane();
        }
        this.mPreservedOpenState = savedState.isOpen;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.isOpen = isSlideable() ? isOpen() : this.mPreservedOpenState;
        return savedState;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.mFirstLayout = true;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & MotionEventCompat.ACTION_MASK) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                return true;
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                if (!isDimmed(this.mSlideableView)) {
                    return true;
                }
                x = motionEvent.getX();
                y = motionEvent.getY();
                float f = x - this.mInitialMotionX;
                float f2 = y - this.mInitialMotionY;
                int touchSlop = this.mDragHelper.getTouchSlop();
                if ((f * f) + (f2 * f2) >= ((float) (touchSlop * touchSlop)) || !this.mDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y)) {
                    return true;
                }
                closePane(this.mSlideableView, 0);
                return true;
            default:
                return true;
        }
    }

    public boolean openPane() {
        return openPane(this.mSlideableView, 0);
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.mCanSlide) {
            this.mPreservedOpenState = view == this.mSlideableView;
        }
    }

    void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    public void setCoveredFadeColor(@ColorInt int i) {
        this.mCoveredFadeColor = i;
    }

    public void setPanelSlideListener(PanelSlideListener panelSlideListener) {
        this.mPanelSlideListener = panelSlideListener;
    }

    public void setParallaxDistance(int i) {
        this.mParallaxBy = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.mShadowDrawableLeft = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.mShadowDrawableRight = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(getResources().getDrawable(i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(getResources().getDrawable(i));
    }

    public void setSliderFadeColor(@ColorInt int i) {
        this.mSliderFadeColor = i;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    boolean smoothSlideTo(float f, int i) {
        if (this.mCanSlide) {
            int width;
            LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
            if (isLayoutRtlSupport()) {
                int paddingRight = getPaddingRight();
                width = (int) (((float) getWidth()) - ((((float) (layoutParams.rightMargin + paddingRight)) + (((float) this.mSlideRange) * f)) + ((float) this.mSlideableView.getWidth())));
            } else {
                width = (int) (((float) (layoutParams.leftMargin + getPaddingLeft())) + (((float) this.mSlideRange) * f));
            }
            if (this.mDragHelper.smoothSlideViewTo(this.mSlideableView, width, this.mSlideableView.getTop())) {
                setAllChildrenVisible();
                ViewCompat.postInvalidateOnAnimation(this);
                return true;
            }
        }
        return false;
    }

    void updateObscuredViewsVisibility(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        int width = isLayoutRtlSupport ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = isLayoutRtlSupport ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        if (view == null || !viewIsOpaque(view)) {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i4 = view.getLeft();
            i3 = view.getRight();
            i2 = view.getTop();
            i = view.getBottom();
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt != view) {
                int i6 = (Math.max(isLayoutRtlSupport ? paddingLeft : width, childAt.getLeft()) < i4 || Math.max(paddingTop, childAt.getTop()) < i2 || Math.min(isLayoutRtlSupport ? width : paddingLeft, childAt.getRight()) > i3 || Math.min(height - paddingBottom, childAt.getBottom()) > i) ? 0 : 4;
                childAt.setVisibility(i6);
                i5++;
            } else {
                return;
            }
        }
    }
}
