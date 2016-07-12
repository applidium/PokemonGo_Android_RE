package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.places.Place;

public class GestureDetectorCompat {
    private final GestureDetectorCompatImpl mImpl;

    interface GestureDetectorCompatImpl {
        boolean isLongpressEnabled();

        boolean onTouchEvent(MotionEvent motionEvent);

        void setIsLongpressEnabled(boolean z);

        void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener);
    }

    static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {
        private static final int DOUBLE_TAP_TIMEOUT;
        private static final int LONGPRESS_TIMEOUT;
        private static final int LONG_PRESS = 2;
        private static final int SHOW_PRESS = 1;
        private static final int TAP = 3;
        private static final int TAP_TIMEOUT;
        private boolean mAlwaysInBiggerTapRegion;
        private boolean mAlwaysInTapRegion;
        private MotionEvent mCurrentDownEvent;
        private boolean mDeferConfirmSingleTap;
        private OnDoubleTapListener mDoubleTapListener;
        private int mDoubleTapSlopSquare;
        private float mDownFocusX;
        private float mDownFocusY;
        private final Handler mHandler;
        private boolean mInLongPress;
        private boolean mIsDoubleTapping;
        private boolean mIsLongpressEnabled;
        private float mLastFocusX;
        private float mLastFocusY;
        private final OnGestureListener mListener;
        private int mMaximumFlingVelocity;
        private int mMinimumFlingVelocity;
        private MotionEvent mPreviousUpEvent;
        private boolean mStillDown;
        private int mTouchSlopSquare;
        private VelocityTracker mVelocityTracker;

        private class GestureHandler extends Handler {
            GestureHandler() {
            }

            GestureHandler(Handler handler) {
                super(handler.getLooper());
            }

            public void handleMessage(Message message) {
                switch (message.what) {
                    case GestureDetectorCompatImplBase.SHOW_PRESS /*1*/:
                        GestureDetectorCompatImplBase.this.mListener.onShowPress(GestureDetectorCompatImplBase.this.mCurrentDownEvent);
                    case GestureDetectorCompatImplBase.LONG_PRESS /*2*/:
                        GestureDetectorCompatImplBase.this.dispatchLongPress();
                    case GestureDetectorCompatImplBase.TAP /*3*/:
                        if (GestureDetectorCompatImplBase.this.mDoubleTapListener == null) {
                            return;
                        }
                        if (GestureDetectorCompatImplBase.this.mStillDown) {
                            GestureDetectorCompatImplBase.this.mDeferConfirmSingleTap = true;
                        } else {
                            GestureDetectorCompatImplBase.this.mDoubleTapListener.onSingleTapConfirmed(GestureDetectorCompatImplBase.this.mCurrentDownEvent);
                        }
                    default:
                        throw new RuntimeException("Unknown message " + message);
                }
            }
        }

        static {
            LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
            TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
            DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();
        }

        public GestureDetectorCompatImplBase(Context context, OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.mHandler = new GestureHandler(handler);
            } else {
                this.mHandler = new GestureHandler();
            }
            this.mListener = onGestureListener;
            if (onGestureListener instanceof OnDoubleTapListener) {
                setOnDoubleTapListener((OnDoubleTapListener) onGestureListener);
            }
            init(context);
        }

        private void cancel() {
            this.mHandler.removeMessages(SHOW_PRESS);
            this.mHandler.removeMessages(LONG_PRESS);
            this.mHandler.removeMessages(TAP);
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.mIsDoubleTapping = false;
            this.mStillDown = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void cancelTaps() {
            this.mHandler.removeMessages(SHOW_PRESS);
            this.mHandler.removeMessages(LONG_PRESS);
            this.mHandler.removeMessages(TAP);
            this.mIsDoubleTapping = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void dispatchLongPress() {
            this.mHandler.removeMessages(TAP);
            this.mDeferConfirmSingleTap = false;
            this.mInLongPress = true;
            this.mListener.onLongPress(this.mCurrentDownEvent);
        }

        private void init(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            } else if (this.mListener == null) {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            } else {
                this.mIsLongpressEnabled = true;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                this.mTouchSlopSquare = scaledTouchSlop * scaledTouchSlop;
                this.mDoubleTapSlopSquare = scaledDoubleTapSlop * scaledDoubleTapSlop;
            }
        }

        private boolean isConsideredDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.mAlwaysInBiggerTapRegion || motionEvent3.getEventTime() - motionEvent2.getEventTime() > ((long) DOUBLE_TAP_TIMEOUT)) {
                return false;
            }
            int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x * x) + (y * y) < this.mDoubleTapSlopSquare;
        }

        public boolean isLongpressEnabled() {
            return this.mIsLongpressEnabled;
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            int i;
            int action = motionEvent.getAction();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            boolean z = (action & MotionEventCompat.ACTION_MASK) == 6;
            int actionIndex = z ? MotionEventCompat.getActionIndex(motionEvent) : -1;
            int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
            float f = 0.0f;
            float f2 = 0.0f;
            for (i = LONGPRESS_TIMEOUT; i < pointerCount; i += SHOW_PRESS) {
                if (actionIndex != i) {
                    f += MotionEventCompat.getX(motionEvent, i);
                    f2 += MotionEventCompat.getY(motionEvent, i);
                }
            }
            actionIndex = z ? pointerCount - 1 : pointerCount;
            f /= (float) actionIndex;
            f2 /= (float) actionIndex;
            boolean hasMessages;
            float yVelocity;
            float xVelocity;
            switch (action & MotionEventCompat.ACTION_MASK) {
                case LONGPRESS_TIMEOUT:
                    if (this.mDoubleTapListener != null) {
                        hasMessages = this.mHandler.hasMessages(TAP);
                        if (hasMessages) {
                            this.mHandler.removeMessages(TAP);
                        }
                        if (this.mCurrentDownEvent == null || this.mPreviousUpEvent == null || !hasMessages || !isConsideredDoubleTap(this.mCurrentDownEvent, this.mPreviousUpEvent, motionEvent)) {
                            this.mHandler.sendEmptyMessageDelayed(TAP, (long) DOUBLE_TAP_TIMEOUT);
                            actionIndex = LONGPRESS_TIMEOUT;
                        } else {
                            this.mIsDoubleTapping = true;
                            actionIndex = (this.mDoubleTapListener.onDoubleTap(this.mCurrentDownEvent) | LONGPRESS_TIMEOUT) | this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                        }
                    } else {
                        actionIndex = LONGPRESS_TIMEOUT;
                    }
                    this.mLastFocusX = f;
                    this.mDownFocusX = f;
                    this.mLastFocusY = f2;
                    this.mDownFocusY = f2;
                    if (this.mCurrentDownEvent != null) {
                        this.mCurrentDownEvent.recycle();
                    }
                    this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
                    this.mAlwaysInTapRegion = true;
                    this.mAlwaysInBiggerTapRegion = true;
                    this.mStillDown = true;
                    this.mInLongPress = false;
                    this.mDeferConfirmSingleTap = false;
                    if (this.mIsLongpressEnabled) {
                        this.mHandler.removeMessages(LONG_PRESS);
                        this.mHandler.sendEmptyMessageAtTime(LONG_PRESS, (this.mCurrentDownEvent.getDownTime() + ((long) TAP_TIMEOUT)) + ((long) LONGPRESS_TIMEOUT));
                    }
                    this.mHandler.sendEmptyMessageAtTime(SHOW_PRESS, this.mCurrentDownEvent.getDownTime() + ((long) TAP_TIMEOUT));
                    return actionIndex | this.mListener.onDown(motionEvent);
                case SHOW_PRESS /*1*/:
                    this.mStillDown = false;
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    if (this.mIsDoubleTapping) {
                        hasMessages = this.mDoubleTapListener.onDoubleTapEvent(motionEvent) | LONGPRESS_TIMEOUT;
                    } else if (this.mInLongPress) {
                        this.mHandler.removeMessages(TAP);
                        this.mInLongPress = false;
                        hasMessages = false;
                    } else if (this.mAlwaysInTapRegion) {
                        hasMessages = this.mListener.onSingleTapUp(motionEvent);
                        if (this.mDeferConfirmSingleTap && this.mDoubleTapListener != null) {
                            this.mDoubleTapListener.onSingleTapConfirmed(motionEvent);
                        }
                    } else {
                        VelocityTracker velocityTracker = this.mVelocityTracker;
                        int pointerId = MotionEventCompat.getPointerId(motionEvent, LONGPRESS_TIMEOUT);
                        velocityTracker.computeCurrentVelocity(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, (float) this.mMaximumFlingVelocity);
                        yVelocity = VelocityTrackerCompat.getYVelocity(velocityTracker, pointerId);
                        xVelocity = VelocityTrackerCompat.getXVelocity(velocityTracker, pointerId);
                        hasMessages = (Math.abs(yVelocity) > ((float) this.mMinimumFlingVelocity) || Math.abs(xVelocity) > ((float) this.mMinimumFlingVelocity)) ? this.mListener.onFling(this.mCurrentDownEvent, motionEvent, xVelocity, yVelocity) : false;
                    }
                    if (this.mPreviousUpEvent != null) {
                        this.mPreviousUpEvent.recycle();
                    }
                    this.mPreviousUpEvent = obtain;
                    if (this.mVelocityTracker != null) {
                        this.mVelocityTracker.recycle();
                        this.mVelocityTracker = null;
                    }
                    this.mIsDoubleTapping = false;
                    this.mDeferConfirmSingleTap = false;
                    this.mHandler.removeMessages(SHOW_PRESS);
                    this.mHandler.removeMessages(LONG_PRESS);
                    return hasMessages;
                case LONG_PRESS /*2*/:
                    if (!this.mInLongPress) {
                        xVelocity = this.mLastFocusX - f;
                        yVelocity = this.mLastFocusY - f2;
                        if (this.mIsDoubleTapping) {
                            return this.mDoubleTapListener.onDoubleTapEvent(motionEvent) | LONGPRESS_TIMEOUT;
                        }
                        if (this.mAlwaysInTapRegion) {
                            i = (int) (f - this.mDownFocusX);
                            int i2 = (int) (f2 - this.mDownFocusY);
                            i = (i * i) + (i2 * i2);
                            if (i > this.mTouchSlopSquare) {
                                hasMessages = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, xVelocity, yVelocity);
                                this.mLastFocusX = f;
                                this.mLastFocusY = f2;
                                this.mAlwaysInTapRegion = false;
                                this.mHandler.removeMessages(TAP);
                                this.mHandler.removeMessages(SHOW_PRESS);
                                this.mHandler.removeMessages(LONG_PRESS);
                            } else {
                                hasMessages = false;
                            }
                            if (i <= this.mTouchSlopSquare) {
                                return hasMessages;
                            }
                            this.mAlwaysInBiggerTapRegion = false;
                            return hasMessages;
                        } else if (Math.abs(xVelocity) >= 1.0f || Math.abs(yVelocity) >= 1.0f) {
                            hasMessages = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, xVelocity, yVelocity);
                            this.mLastFocusX = f;
                            this.mLastFocusY = f2;
                            return hasMessages;
                        }
                    }
                    break;
                case TAP /*3*/:
                    cancel();
                    return false;
                case Place.TYPE_AQUARIUM /*4*/:
                    break;
                case Place.TYPE_ART_GALLERY /*5*/:
                    this.mLastFocusX = f;
                    this.mDownFocusX = f;
                    this.mLastFocusY = f2;
                    this.mDownFocusY = f2;
                    cancelTaps();
                    return false;
                case Place.TYPE_ATM /*6*/:
                    this.mLastFocusX = f;
                    this.mDownFocusX = f;
                    this.mLastFocusY = f2;
                    this.mDownFocusY = f2;
                    this.mVelocityTracker.computeCurrentVelocity(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, (float) this.mMaximumFlingVelocity);
                    int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                    actionIndex = MotionEventCompat.getPointerId(motionEvent, actionIndex2);
                    f = VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, actionIndex);
                    float yVelocity2 = VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, actionIndex);
                    for (actionIndex = LONGPRESS_TIMEOUT; actionIndex < pointerCount; actionIndex += SHOW_PRESS) {
                        if (actionIndex != actionIndex2) {
                            int pointerId2 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                            if ((VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, pointerId2) * yVelocity2) + (VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, pointerId2) * f) < 0.0f) {
                                this.mVelocityTracker.clear();
                                return false;
                            }
                        }
                    }
                    break;
                default:
                    return false;
            }
            return false;
        }

        public void setIsLongpressEnabled(boolean z) {
            this.mIsLongpressEnabled = z;
        }

        public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
            this.mDoubleTapListener = onDoubleTapListener;
        }
    }

    static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {
        private final GestureDetector mDetector;

        public GestureDetectorCompatImplJellybeanMr2(Context context, OnGestureListener onGestureListener, Handler handler) {
            this.mDetector = new GestureDetector(context, onGestureListener, handler);
        }

        public boolean isLongpressEnabled() {
            return this.mDetector.isLongpressEnabled();
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.mDetector.onTouchEvent(motionEvent);
        }

        public void setIsLongpressEnabled(boolean z) {
            this.mDetector.setIsLongpressEnabled(z);
        }

        public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
            this.mDetector.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(Context context, OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetectorCompat(Context context, OnGestureListener onGestureListener, Handler handler) {
        if (VERSION.SDK_INT > 17) {
            this.mImpl = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
        } else {
            this.mImpl = new GestureDetectorCompatImplBase(context, onGestureListener, handler);
        }
    }

    public boolean isLongpressEnabled() {
        return this.mImpl.isLongpressEnabled();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mImpl.setIsLongpressEnabled(z);
    }

    public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
        this.mImpl.setOnDoubleTapListener(onDoubleTapListener);
    }
}
