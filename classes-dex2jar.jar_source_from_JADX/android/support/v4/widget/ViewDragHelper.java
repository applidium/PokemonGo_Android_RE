package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;
import java.util.Arrays;

public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator;
    private int mActivePointerId;
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private ScrollerCompat mScroller;
    private final Runnable mSetIdleRunnable;
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;

    public static abstract class Callback {
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return ViewDragHelper.STATE_IDLE;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return ViewDragHelper.STATE_IDLE;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return ViewDragHelper.STATE_IDLE;
        }

        public int getViewVerticalDragRange(View view) {
            return ViewDragHelper.STATE_IDLE;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(View view, int i);
    }

    /* renamed from: android.support.v4.widget.ViewDragHelper.1 */
    static final class C01311 implements Interpolator {
        C01311() {
        }

        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * (((f2 * f2) * f2) * f2)) + 1.0f;
        }
    }

    /* renamed from: android.support.v4.widget.ViewDragHelper.2 */
    class C01322 implements Runnable {
        C01322() {
        }

        public void run() {
            ViewDragHelper.this.setDragState(ViewDragHelper.STATE_IDLE);
        }
    }

    static {
        sInterpolator = new C01311();
    }

    private ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        this.mActivePointerId = INVALID_POINTER;
        this.mSetIdleRunnable = new C01322();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        } else {
            this.mParentView = viewGroup;
            this.mCallback = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.mEdgeSize = (int) ((20.0f * context.getResources().getDisplayMetrics().density) + 0.5f);
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
            this.mMaxVelocity = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.mMinVelocity = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.mScroller = ScrollerCompat.create(context, sInterpolator);
        }
    }

    private boolean checkNewEdgeDrag(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.mInitialEdgesTouched[i] & i2) != i2 || (this.mTrackingEdges & i2) == 0 || (this.mEdgeDragsLocked[i] & i2) == i2 || (this.mEdgeDragsInProgress[i] & i2) == i2) {
            return false;
        }
        if (abs <= ((float) this.mTouchSlop) && abs2 <= ((float) this.mTouchSlop)) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.mCallback.onEdgeLock(i2)) {
            return (this.mEdgeDragsInProgress[i] & i2) == 0 && abs > ((float) this.mTouchSlop);
        } else {
            int[] iArr = this.mEdgeDragsLocked;
            iArr[i] = iArr[i] | i2;
            return false;
        }
    }

    private boolean checkTouchSlop(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.mCallback.getViewHorizontalDragRange(view) > 0 ? STATE_DRAGGING : false;
        boolean z2 = this.mCallback.getViewVerticalDragRange(view) > 0 ? STATE_DRAGGING : false;
        if (z && z2) {
            if ((f * f) + (f2 * f2) <= ((float) (this.mTouchSlop * this.mTouchSlop))) {
                return false;
            }
        } else if (z) {
            if (Math.abs(f) <= ((float) this.mTouchSlop)) {
                return false;
            }
        } else if (!z2) {
            return false;
        } else {
            if (Math.abs(f2) <= ((float) this.mTouchSlop)) {
                return false;
            }
        }
        return true;
    }

    private float clampMag(float f, float f2, float f3) {
        float abs = Math.abs(f);
        return abs < f2 ? 0.0f : abs > f3 ? f <= 0.0f ? -f3 : f3 : f;
    }

    private int clampMag(int i, int i2, int i3) {
        int abs = Math.abs(i);
        return abs < i2 ? STATE_IDLE : abs > i3 ? i <= 0 ? -i3 : i3 : i;
    }

    private void clearMotionHistory() {
        if (this.mInitialMotionX != null) {
            Arrays.fill(this.mInitialMotionX, 0.0f);
            Arrays.fill(this.mInitialMotionY, 0.0f);
            Arrays.fill(this.mLastMotionX, 0.0f);
            Arrays.fill(this.mLastMotionY, 0.0f);
            Arrays.fill(this.mInitialEdgesTouched, STATE_IDLE);
            Arrays.fill(this.mEdgeDragsInProgress, STATE_IDLE);
            Arrays.fill(this.mEdgeDragsLocked, STATE_IDLE);
            this.mPointersDown = STATE_IDLE;
        }
    }

    private void clearMotionHistory(int i) {
        if (this.mInitialMotionX != null) {
            this.mInitialMotionX[i] = 0.0f;
            this.mInitialMotionY[i] = 0.0f;
            this.mLastMotionX[i] = 0.0f;
            this.mLastMotionY[i] = 0.0f;
            this.mInitialEdgesTouched[i] = STATE_IDLE;
            this.mEdgeDragsInProgress[i] = STATE_IDLE;
            this.mEdgeDragsLocked[i] = STATE_IDLE;
            this.mPointersDown &= (STATE_DRAGGING << i) ^ INVALID_POINTER;
        }
    }

    private int computeAxisDuration(int i, int i2, int i3) {
        if (i == 0) {
            return STATE_IDLE;
        }
        int width = this.mParentView.getWidth();
        int i4 = width / STATE_SETTLING;
        float f = (float) i4;
        float f2 = (float) i4;
        float distanceInfluenceForSnapDuration = distanceInfluenceForSnapDuration(Math.min(1.0f, ((float) Math.abs(i)) / ((float) width)));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(((distanceInfluenceForSnapDuration * f2) + f) / ((float) abs)) * 1000.0f) * EDGE_TOP : (int) (((((float) Math.abs(i)) / ((float) i3)) + 1.0f) * 256.0f), MAX_SETTLE_DURATION);
    }

    private int computeSettleDuration(View view, int i, int i2, int i3, int i4) {
        int clampMag = clampMag(i3, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int clampMag2 = clampMag(i4, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(clampMag);
        int abs4 = Math.abs(clampMag2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        return (int) (((clampMag2 != 0 ? ((float) abs4) / ((float) i5) : ((float) abs2) / ((float) i6)) * ((float) computeAxisDuration(i2, clampMag2, this.mCallback.getViewVerticalDragRange(view)))) + ((clampMag != 0 ? ((float) abs3) / ((float) i5) : ((float) abs) / ((float) i6)) * ((float) computeAxisDuration(i, clampMag, this.mCallback.getViewHorizontalDragRange(view)))));
    }

    public static ViewDragHelper create(ViewGroup viewGroup, float f, Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.mTouchSlop = (int) (((float) create.mTouchSlop) * (1.0f / f));
        return create;
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private void dispatchViewReleased(float f, float f2) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f, f2);
        this.mReleaseInProgress = false;
        if (this.mDragState == STATE_DRAGGING) {
            setDragState(STATE_IDLE);
        }
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    private void dragTo(int i, int i2, int i3, int i4) {
        int clampViewPositionHorizontal;
        int clampViewPositionVertical;
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        if (i3 != 0) {
            clampViewPositionHorizontal = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, i, i3);
            this.mCapturedView.offsetLeftAndRight(clampViewPositionHorizontal - left);
        } else {
            clampViewPositionHorizontal = i;
        }
        if (i4 != 0) {
            clampViewPositionVertical = this.mCallback.clampViewPositionVertical(this.mCapturedView, i2, i4);
            this.mCapturedView.offsetTopAndBottom(clampViewPositionVertical - top);
        } else {
            clampViewPositionVertical = i2;
        }
        if (i3 != 0 || i4 != 0) {
            this.mCallback.onViewPositionChanged(this.mCapturedView, clampViewPositionHorizontal, clampViewPositionVertical, clampViewPositionHorizontal - left, clampViewPositionVertical - top);
        }
    }

    private void ensureMotionHistorySizeForId(int i) {
        if (this.mInitialMotionX == null || this.mInitialMotionX.length <= i) {
            Object obj = new float[(i + STATE_DRAGGING)];
            Object obj2 = new float[(i + STATE_DRAGGING)];
            Object obj3 = new float[(i + STATE_DRAGGING)];
            Object obj4 = new float[(i + STATE_DRAGGING)];
            Object obj5 = new int[(i + STATE_DRAGGING)];
            Object obj6 = new int[(i + STATE_DRAGGING)];
            Object obj7 = new int[(i + STATE_DRAGGING)];
            if (this.mInitialMotionX != null) {
                System.arraycopy(this.mInitialMotionX, STATE_IDLE, obj, STATE_IDLE, this.mInitialMotionX.length);
                System.arraycopy(this.mInitialMotionY, STATE_IDLE, obj2, STATE_IDLE, this.mInitialMotionY.length);
                System.arraycopy(this.mLastMotionX, STATE_IDLE, obj3, STATE_IDLE, this.mLastMotionX.length);
                System.arraycopy(this.mLastMotionY, STATE_IDLE, obj4, STATE_IDLE, this.mLastMotionY.length);
                System.arraycopy(this.mInitialEdgesTouched, STATE_IDLE, obj5, STATE_IDLE, this.mInitialEdgesTouched.length);
                System.arraycopy(this.mEdgeDragsInProgress, STATE_IDLE, obj6, STATE_IDLE, this.mEdgeDragsInProgress.length);
                System.arraycopy(this.mEdgeDragsLocked, STATE_IDLE, obj7, STATE_IDLE, this.mEdgeDragsLocked.length);
            }
            this.mInitialMotionX = obj;
            this.mInitialMotionY = obj2;
            this.mLastMotionX = obj3;
            this.mLastMotionY = obj4;
            this.mInitialEdgesTouched = obj5;
            this.mEdgeDragsInProgress = obj6;
            this.mEdgeDragsLocked = obj7;
        }
    }

    private boolean forceSettleCapturedViewAt(int i, int i2, int i3, int i4) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.mScroller.abortAnimation();
            setDragState(STATE_IDLE);
            return false;
        }
        this.mScroller.startScroll(left, top, i5, i6, computeSettleDuration(this.mCapturedView, i5, i6, i3, i4));
        setDragState(STATE_SETTLING);
        return true;
    }

    private int getEdgesTouched(int i, int i2) {
        int i3 = STATE_IDLE;
        if (i < this.mParentView.getLeft() + this.mEdgeSize) {
            i3 = STATE_DRAGGING;
        }
        if (i2 < this.mParentView.getTop() + this.mEdgeSize) {
            i3 |= EDGE_TOP;
        }
        if (i > this.mParentView.getRight() - this.mEdgeSize) {
            i3 |= STATE_SETTLING;
        }
        return i2 > this.mParentView.getBottom() - this.mEdgeSize ? i3 | EDGE_BOTTOM : i3;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, this.mMaxVelocity);
        dispatchViewReleased(clampMag(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void reportNewEdgeDrags(float f, float f2, int i) {
        int i2 = STATE_DRAGGING;
        if (!checkNewEdgeDrag(f, f2, i, STATE_DRAGGING)) {
            i2 = STATE_IDLE;
        }
        if (checkNewEdgeDrag(f2, f, i, EDGE_TOP)) {
            i2 |= EDGE_TOP;
        }
        if (checkNewEdgeDrag(f, f2, i, STATE_SETTLING)) {
            i2 |= STATE_SETTLING;
        }
        if (checkNewEdgeDrag(f2, f, i, EDGE_BOTTOM)) {
            i2 |= EDGE_BOTTOM;
        }
        if (i2 != 0) {
            int[] iArr = this.mEdgeDragsInProgress;
            iArr[i] = iArr[i] | i2;
            this.mCallback.onEdgeDragStarted(i2, i);
        }
    }

    private void saveInitialMotion(float f, float f2, int i) {
        ensureMotionHistorySizeForId(i);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[i] = f;
        fArr[i] = f;
        fArr = this.mInitialMotionY;
        this.mLastMotionY[i] = f2;
        fArr[i] = f2;
        this.mInitialEdgesTouched[i] = getEdgesTouched((int) f, (int) f2);
        this.mPointersDown |= STATE_DRAGGING << i;
    }

    private void saveLastMotion(MotionEvent motionEvent) {
        int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
        for (int i = STATE_IDLE; i < pointerCount; i += STATE_DRAGGING) {
            int pointerId = MotionEventCompat.getPointerId(motionEvent, i);
            float x = MotionEventCompat.getX(motionEvent, i);
            float y = MotionEventCompat.getY(motionEvent, i);
            this.mLastMotionX[pointerId] = x;
            this.mLastMotionY[pointerId] = y;
        }
    }

    public void abort() {
        cancel();
        if (this.mDragState == STATE_SETTLING) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        setDragState(STATE_IDLE);
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3, int i4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() + INVALID_POINTER; childCount >= 0; childCount += INVALID_POINTER) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i3 + scrollX >= childAt.getLeft() && i3 + scrollX < childAt.getRight() && i4 + scrollY >= childAt.getTop() && i4 + scrollY < childAt.getBottom()) {
                    if (canScroll(childAt, true, i, i2, (i3 + scrollX) - childAt.getLeft(), (i4 + scrollY) - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        return z && (ViewCompat.canScrollHorizontally(view, -i) || ViewCompat.canScrollVertically(view, -i2));
    }

    public void cancel() {
        this.mActivePointerId = INVALID_POINTER;
        clearMotionHistory();
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void captureChildView(View view, int i) {
        if (view.getParent() != this.mParentView) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
        }
        this.mCapturedView = view;
        this.mActivePointerId = i;
        this.mCallback.onViewCaptured(view, i);
        setDragState(STATE_DRAGGING);
    }

    public boolean checkTouchSlop(int i) {
        int length = this.mInitialMotionX.length;
        for (int i2 = STATE_IDLE; i2 < length; i2 += STATE_DRAGGING) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i, int i2) {
        if (!isPointerDown(i2)) {
            return false;
        }
        boolean z = (i & STATE_DRAGGING) == STATE_DRAGGING ? STATE_DRAGGING : false;
        boolean z2 = (i & STATE_SETTLING) == STATE_SETTLING ? STATE_DRAGGING : false;
        float f = this.mLastMotionX[i2] - this.mInitialMotionX[i2];
        float f2 = this.mLastMotionY[i2] - this.mInitialMotionY[i2];
        if (z && z2) {
            if ((f * f) + (f2 * f2) <= ((float) (this.mTouchSlop * this.mTouchSlop))) {
                return false;
            }
        } else if (z) {
            if (Math.abs(f) <= ((float) this.mTouchSlop)) {
                return false;
            }
        } else if (!z2) {
            return false;
        } else {
            if (Math.abs(f2) <= ((float) this.mTouchSlop)) {
                return false;
            }
        }
        return true;
    }

    public boolean continueSettling(boolean z) {
        if (this.mDragState == STATE_SETTLING) {
            int i;
            boolean computeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                this.mCapturedView.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.mCapturedView.offsetTopAndBottom(top);
            }
            if (!(left == 0 && top == 0)) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.mScroller.getFinalX() && currY == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
                i = STATE_IDLE;
            } else {
                boolean z2 = computeScrollOffset;
            }
            if (i == 0) {
                if (z) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    setDragState(STATE_IDLE);
                }
            }
        }
        return this.mDragState == STATE_SETTLING;
    }

    public View findTopChildUnder(int i, int i2) {
        for (int childCount = this.mParentView.getChildCount() + INVALID_POINTER; childCount >= 0; childCount += INVALID_POINTER) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (this.mReleaseInProgress) {
            this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int) VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int) VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), i, i3, i2, i4);
            setDragState(STATE_SETTLING);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    public View getCapturedView() {
        return this.mCapturedView;
    }

    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.mCapturedView, i, i2);
    }

    public boolean isEdgeTouched(int i) {
        int length = this.mInitialEdgesTouched.length;
        for (int i2 = STATE_IDLE; i2 < length; i2 += STATE_DRAGGING) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (this.mInitialEdgesTouched[i2] & i) != 0;
    }

    public boolean isPointerDown(int i) {
        return (this.mPointersDown & (STATE_DRAGGING << i)) != 0;
    }

    public boolean isViewUnder(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public void processTouchEvent(MotionEvent motionEvent) {
        int i = STATE_IDLE;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        float x;
        float y;
        View findTopChildUnder;
        int i2;
        switch (actionMasked) {
            case STATE_IDLE /*0*/:
                x = motionEvent.getX();
                y = motionEvent.getY();
                i = MotionEventCompat.getPointerId(motionEvent, STATE_IDLE);
                findTopChildUnder = findTopChildUnder((int) x, (int) y);
                saveInitialMotion(x, y, i);
                tryCaptureViewForDrag(findTopChildUnder, i);
                i2 = this.mInitialEdgesTouched[i];
                if ((this.mTrackingEdges & i2) != 0) {
                    this.mCallback.onEdgeTouched(i2 & this.mTrackingEdges, i);
                }
            case STATE_DRAGGING /*1*/:
                if (this.mDragState == STATE_DRAGGING) {
                    releaseViewForPointerUp();
                }
                cancel();
            case STATE_SETTLING /*2*/:
                if (this.mDragState == STATE_DRAGGING) {
                    i = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
                    x = MotionEventCompat.getX(motionEvent, i);
                    i2 = (int) (x - this.mLastMotionX[this.mActivePointerId]);
                    i = (int) (MotionEventCompat.getY(motionEvent, i) - this.mLastMotionY[this.mActivePointerId]);
                    dragTo(this.mCapturedView.getLeft() + i2, this.mCapturedView.getTop() + i, i2, i);
                    saveLastMotion(motionEvent);
                    return;
                }
                i2 = MotionEventCompat.getPointerCount(motionEvent);
                while (i < i2) {
                    actionMasked = MotionEventCompat.getPointerId(motionEvent, i);
                    float x2 = MotionEventCompat.getX(motionEvent, i);
                    float y2 = MotionEventCompat.getY(motionEvent, i);
                    float f = x2 - this.mInitialMotionX[actionMasked];
                    float f2 = y2 - this.mInitialMotionY[actionMasked];
                    reportNewEdgeDrags(f, f2, actionMasked);
                    if (this.mDragState != STATE_DRAGGING) {
                        findTopChildUnder = findTopChildUnder((int) x2, (int) y2);
                        if (!checkTouchSlop(findTopChildUnder, f, f2) || !tryCaptureViewForDrag(findTopChildUnder, actionMasked)) {
                            i += STATE_DRAGGING;
                        }
                    }
                    saveLastMotion(motionEvent);
                }
                saveLastMotion(motionEvent);
            case DIRECTION_ALL /*3*/:
                if (this.mDragState == STATE_DRAGGING) {
                    dispatchViewReleased(0.0f, 0.0f);
                }
                cancel();
            case Place.TYPE_ART_GALLERY /*5*/:
                i = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                x = MotionEventCompat.getX(motionEvent, actionIndex);
                y = MotionEventCompat.getY(motionEvent, actionIndex);
                saveInitialMotion(x, y, i);
                if (this.mDragState == 0) {
                    tryCaptureViewForDrag(findTopChildUnder((int) x, (int) y), i);
                    i2 = this.mInitialEdgesTouched[i];
                    if ((this.mTrackingEdges & i2) != 0) {
                        this.mCallback.onEdgeTouched(i2 & this.mTrackingEdges, i);
                    }
                } else if (isCapturedViewUnder((int) x, (int) y)) {
                    tryCaptureViewForDrag(this.mCapturedView, i);
                }
            case Place.TYPE_ATM /*6*/:
                actionMasked = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                if (this.mDragState == STATE_DRAGGING && actionMasked == this.mActivePointerId) {
                    actionIndex = MotionEventCompat.getPointerCount(motionEvent);
                    while (i < actionIndex) {
                        int pointerId = MotionEventCompat.getPointerId(motionEvent, i);
                        if (pointerId != this.mActivePointerId) {
                            if (findTopChildUnder((int) MotionEventCompat.getX(motionEvent, i), (int) MotionEventCompat.getY(motionEvent, i)) == this.mCapturedView && tryCaptureViewForDrag(this.mCapturedView, pointerId)) {
                                i = this.mActivePointerId;
                                if (i == INVALID_POINTER) {
                                    releaseViewForPointerUp();
                                }
                            }
                        }
                        i += STATE_DRAGGING;
                    }
                    i = INVALID_POINTER;
                    if (i == INVALID_POINTER) {
                        releaseViewForPointerUp();
                    }
                }
                clearMotionHistory(actionMasked);
            default:
        }
    }

    void setDragState(int i) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != i) {
            this.mDragState = i;
            this.mCallback.onViewDragStateChanged(i);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public void setEdgeTrackingEnabled(int i) {
        this.mTrackingEdges = i;
    }

    public void setMinVelocity(float f) {
        this.mMinVelocity = f;
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (this.mReleaseInProgress) {
            return forceSettleCapturedViewAt(i, i2, (int) VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int) VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean shouldInterceptTouchEvent(android.view.MotionEvent r14) {
        /*
        r13 = this;
        r0 = android.support.v4.view.MotionEventCompat.getActionMasked(r14);
        r1 = android.support.v4.view.MotionEventCompat.getActionIndex(r14);
        if (r0 != 0) goto L_0x000d;
    L_0x000a:
        r13.cancel();
    L_0x000d:
        r2 = r13.mVelocityTracker;
        if (r2 != 0) goto L_0x0017;
    L_0x0011:
        r2 = android.view.VelocityTracker.obtain();
        r13.mVelocityTracker = r2;
    L_0x0017:
        r2 = r13.mVelocityTracker;
        r2.addMovement(r14);
        switch(r0) {
            case 0: goto L_0x0026;
            case 1: goto L_0x0121;
            case 2: goto L_0x0092;
            case 3: goto L_0x0121;
            case 4: goto L_0x001f;
            case 5: goto L_0x005a;
            case 6: goto L_0x0118;
            default: goto L_0x001f;
        };
    L_0x001f:
        r0 = r13.mDragState;
        r1 = 1;
        if (r0 != r1) goto L_0x0126;
    L_0x0024:
        r0 = 1;
    L_0x0025:
        return r0;
    L_0x0026:
        r0 = r14.getX();
        r1 = r14.getY();
        r2 = 0;
        r2 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r2);
        r13.saveInitialMotion(r0, r1, r2);
        r0 = (int) r0;
        r1 = (int) r1;
        r0 = r13.findTopChildUnder(r0, r1);
        r1 = r13.mCapturedView;
        if (r0 != r1) goto L_0x0048;
    L_0x0040:
        r1 = r13.mDragState;
        r3 = 2;
        if (r1 != r3) goto L_0x0048;
    L_0x0045:
        r13.tryCaptureViewForDrag(r0, r2);
    L_0x0048:
        r0 = r13.mInitialEdgesTouched;
        r0 = r0[r2];
        r1 = r13.mTrackingEdges;
        r1 = r1 & r0;
        if (r1 == 0) goto L_0x001f;
    L_0x0051:
        r1 = r13.mCallback;
        r3 = r13.mTrackingEdges;
        r0 = r0 & r3;
        r1.onEdgeTouched(r0, r2);
        goto L_0x001f;
    L_0x005a:
        r0 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r1);
        r2 = android.support.v4.view.MotionEventCompat.getX(r14, r1);
        r1 = android.support.v4.view.MotionEventCompat.getY(r14, r1);
        r13.saveInitialMotion(r2, r1, r0);
        r3 = r13.mDragState;
        if (r3 != 0) goto L_0x007f;
    L_0x006d:
        r1 = r13.mInitialEdgesTouched;
        r1 = r1[r0];
        r2 = r13.mTrackingEdges;
        r2 = r2 & r1;
        if (r2 == 0) goto L_0x001f;
    L_0x0076:
        r2 = r13.mCallback;
        r3 = r13.mTrackingEdges;
        r1 = r1 & r3;
        r2.onEdgeTouched(r1, r0);
        goto L_0x001f;
    L_0x007f:
        r3 = r13.mDragState;
        r4 = 2;
        if (r3 != r4) goto L_0x001f;
    L_0x0084:
        r2 = (int) r2;
        r1 = (int) r1;
        r1 = r13.findTopChildUnder(r2, r1);
        r2 = r13.mCapturedView;
        if (r1 != r2) goto L_0x001f;
    L_0x008e:
        r13.tryCaptureViewForDrag(r1, r0);
        goto L_0x001f;
    L_0x0092:
        r0 = r13.mInitialMotionX;
        if (r0 == 0) goto L_0x001f;
    L_0x0096:
        r0 = r13.mInitialMotionY;
        if (r0 == 0) goto L_0x001f;
    L_0x009a:
        r2 = android.support.v4.view.MotionEventCompat.getPointerCount(r14);
        r0 = 0;
        r1 = r0;
    L_0x00a0:
        if (r1 >= r2) goto L_0x00fd;
    L_0x00a2:
        r3 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r1);
        r0 = android.support.v4.view.MotionEventCompat.getX(r14, r1);
        r4 = android.support.v4.view.MotionEventCompat.getY(r14, r1);
        r5 = r13.mInitialMotionX;
        r5 = r5[r3];
        r5 = r0 - r5;
        r6 = r13.mInitialMotionY;
        r6 = r6[r3];
        r6 = r4 - r6;
        r0 = (int) r0;
        r4 = (int) r4;
        r4 = r13.findTopChildUnder(r0, r4);
        if (r4 == 0) goto L_0x0102;
    L_0x00c2:
        r0 = r13.checkTouchSlop(r4, r5, r6);
        if (r0 == 0) goto L_0x0102;
    L_0x00c8:
        r0 = 1;
    L_0x00c9:
        if (r0 == 0) goto L_0x0104;
    L_0x00cb:
        r7 = r4.getLeft();
        r8 = (int) r5;
        r9 = r13.mCallback;
        r8 = r8 + r7;
        r10 = (int) r5;
        r8 = r9.clampViewPositionHorizontal(r4, r8, r10);
        r9 = r4.getTop();
        r10 = (int) r6;
        r11 = r13.mCallback;
        r10 = r10 + r9;
        r12 = (int) r6;
        r10 = r11.clampViewPositionVertical(r4, r10, r12);
        r11 = r13.mCallback;
        r11 = r11.getViewHorizontalDragRange(r4);
        r12 = r13.mCallback;
        r12 = r12.getViewVerticalDragRange(r4);
        if (r11 == 0) goto L_0x00f7;
    L_0x00f3:
        if (r11 <= 0) goto L_0x0104;
    L_0x00f5:
        if (r8 != r7) goto L_0x0104;
    L_0x00f7:
        if (r12 == 0) goto L_0x00fd;
    L_0x00f9:
        if (r12 <= 0) goto L_0x0104;
    L_0x00fb:
        if (r10 != r9) goto L_0x0104;
    L_0x00fd:
        r13.saveLastMotion(r14);
        goto L_0x001f;
    L_0x0102:
        r0 = 0;
        goto L_0x00c9;
    L_0x0104:
        r13.reportNewEdgeDrags(r5, r6, r3);
        r5 = r13.mDragState;
        r6 = 1;
        if (r5 == r6) goto L_0x00fd;
    L_0x010c:
        if (r0 == 0) goto L_0x0114;
    L_0x010e:
        r0 = r13.tryCaptureViewForDrag(r4, r3);
        if (r0 != 0) goto L_0x00fd;
    L_0x0114:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x00a0;
    L_0x0118:
        r0 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r1);
        r13.clearMotionHistory(r0);
        goto L_0x001f;
    L_0x0121:
        r13.cancel();
        goto L_0x001f;
    L_0x0126:
        r0 = 0;
        goto L_0x0025;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean smoothSlideViewTo(View view, int i, int i2) {
        this.mCapturedView = view;
        this.mActivePointerId = INVALID_POINTER;
        boolean forceSettleCapturedViewAt = forceSettleCapturedViewAt(i, i2, STATE_IDLE, STATE_IDLE);
        if (!(forceSettleCapturedViewAt || this.mDragState != 0 || this.mCapturedView == null)) {
            this.mCapturedView = null;
        }
        return forceSettleCapturedViewAt;
    }

    boolean tryCaptureViewForDrag(View view, int i) {
        if (view == this.mCapturedView && this.mActivePointerId == i) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view, i)) {
            return false;
        }
        this.mActivePointerId = i;
        captureChildView(view, i);
        return true;
    }
}
