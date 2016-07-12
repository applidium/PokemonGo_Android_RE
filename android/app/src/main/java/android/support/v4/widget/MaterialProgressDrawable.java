package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.annotation.NonNull;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

class MaterialProgressDrawable extends Drawable implements Animatable {
    private static final int ANIMATION_DURATION = 1332;
    private static final int ARROW_HEIGHT = 5;
    private static final int ARROW_HEIGHT_LARGE = 6;
    private static final float ARROW_OFFSET_ANGLE = 5.0f;
    private static final int ARROW_WIDTH = 10;
    private static final int ARROW_WIDTH_LARGE = 12;
    private static final float CENTER_RADIUS = 8.75f;
    private static final float CENTER_RADIUS_LARGE = 12.5f;
    private static final int CIRCLE_DIAMETER = 40;
    private static final int CIRCLE_DIAMETER_LARGE = 56;
    private static final float COLOR_START_DELAY_OFFSET = 0.75f;
    static final int DEFAULT = 1;
    private static final float END_TRIM_START_DELAY_OFFSET = 0.5f;
    private static final float FULL_ROTATION = 1080.0f;
    static final int LARGE = 0;
    private static final Interpolator LINEAR_INTERPOLATOR;
    private static final Interpolator MATERIAL_INTERPOLATOR;
    private static final float MAX_PROGRESS_ARC = 0.8f;
    private static final float NUM_POINTS = 5.0f;
    private static final float START_TRIM_DURATION_OFFSET = 0.5f;
    private static final float STROKE_WIDTH = 2.5f;
    private static final float STROKE_WIDTH_LARGE = 3.0f;
    private final int[] COLORS;
    private Animation mAnimation;
    private final ArrayList<Animation> mAnimators;
    private final Callback mCallback;
    boolean mFinishing;
    private double mHeight;
    private View mParent;
    private Resources mResources;
    private final Ring mRing;
    private float mRotation;
    private float mRotationCount;
    private double mWidth;

    /* renamed from: android.support.v4.widget.MaterialProgressDrawable.1 */
    class C01121 extends Animation {
        final /* synthetic */ Ring val$ring;

        C01121(Ring ring) {
            this.val$ring = ring;
        }

        public void applyTransformation(float f, Transformation transformation) {
            if (MaterialProgressDrawable.this.mFinishing) {
                MaterialProgressDrawable.this.applyFinishTranslation(f, this.val$ring);
                return;
            }
            float access$100 = MaterialProgressDrawable.this.getMinProgressArc(this.val$ring);
            float startingEndTrim = this.val$ring.getStartingEndTrim();
            float startingStartTrim = this.val$ring.getStartingStartTrim();
            float startingRotation = this.val$ring.getStartingRotation();
            MaterialProgressDrawable.this.updateRingColor(f, this.val$ring);
            if (f <= MaterialProgressDrawable.START_TRIM_DURATION_OFFSET) {
                this.val$ring.setStartTrim(startingStartTrim + (MaterialProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation(f / MaterialProgressDrawable.START_TRIM_DURATION_OFFSET) * (MaterialProgressDrawable.MAX_PROGRESS_ARC - access$100)));
            }
            if (f > MaterialProgressDrawable.START_TRIM_DURATION_OFFSET) {
                this.val$ring.setEndTrim(((MaterialProgressDrawable.MAX_PROGRESS_ARC - access$100) * MaterialProgressDrawable.MATERIAL_INTERPOLATOR.getInterpolation((f - MaterialProgressDrawable.START_TRIM_DURATION_OFFSET) / MaterialProgressDrawable.START_TRIM_DURATION_OFFSET)) + startingEndTrim);
            }
            this.val$ring.setRotation((0.25f * f) + startingRotation);
            MaterialProgressDrawable.this.setRotation(((MaterialProgressDrawable.this.mRotationCount / MaterialProgressDrawable.NUM_POINTS) * MaterialProgressDrawable.FULL_ROTATION) + (216.0f * f));
        }
    }

    /* renamed from: android.support.v4.widget.MaterialProgressDrawable.2 */
    class C01132 implements AnimationListener {
        final /* synthetic */ Ring val$ring;

        C01132(Ring ring) {
            this.val$ring = ring;
        }

        public void onAnimationEnd(Animation animation) {
        }

        public void onAnimationRepeat(Animation animation) {
            this.val$ring.storeOriginals();
            this.val$ring.goToNextColor();
            this.val$ring.setStartTrim(this.val$ring.getEndTrim());
            if (MaterialProgressDrawable.this.mFinishing) {
                MaterialProgressDrawable.this.mFinishing = false;
                animation.setDuration(1332);
                this.val$ring.setShowArrow(false);
                return;
            }
            MaterialProgressDrawable.this.mRotationCount = (MaterialProgressDrawable.this.mRotationCount + 1.0f) % MaterialProgressDrawable.NUM_POINTS;
        }

        public void onAnimationStart(Animation animation) {
            MaterialProgressDrawable.this.mRotationCount = 0.0f;
        }
    }

    /* renamed from: android.support.v4.widget.MaterialProgressDrawable.3 */
    class C01143 implements Callback {
        C01143() {
        }

        public void invalidateDrawable(Drawable drawable) {
            MaterialProgressDrawable.this.invalidateSelf();
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            MaterialProgressDrawable.this.scheduleSelf(runnable, j);
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            MaterialProgressDrawable.this.unscheduleSelf(runnable);
        }
    }

    @Retention(RetentionPolicy.CLASS)
    public @interface ProgressDrawableSize {
    }

    private static class Ring {
        private int mAlpha;
        private Path mArrow;
        private int mArrowHeight;
        private final Paint mArrowPaint;
        private float mArrowScale;
        private int mArrowWidth;
        private int mBackgroundColor;
        private final Callback mCallback;
        private final Paint mCirclePaint;
        private int mColorIndex;
        private int[] mColors;
        private int mCurrentColor;
        private float mEndTrim;
        private final Paint mPaint;
        private double mRingCenterRadius;
        private float mRotation;
        private boolean mShowArrow;
        private float mStartTrim;
        private float mStartingEndTrim;
        private float mStartingRotation;
        private float mStartingStartTrim;
        private float mStrokeInset;
        private float mStrokeWidth;
        private final RectF mTempBounds;

        public Ring(Callback callback) {
            this.mTempBounds = new RectF();
            this.mPaint = new Paint();
            this.mArrowPaint = new Paint();
            this.mStartTrim = 0.0f;
            this.mEndTrim = 0.0f;
            this.mRotation = 0.0f;
            this.mStrokeWidth = MaterialProgressDrawable.NUM_POINTS;
            this.mStrokeInset = MaterialProgressDrawable.STROKE_WIDTH;
            this.mCirclePaint = new Paint(MaterialProgressDrawable.DEFAULT);
            this.mCallback = callback;
            this.mPaint.setStrokeCap(Cap.SQUARE);
            this.mPaint.setAntiAlias(true);
            this.mPaint.setStyle(Style.STROKE);
            this.mArrowPaint.setStyle(Style.FILL);
            this.mArrowPaint.setAntiAlias(true);
        }

        private void drawTriangle(Canvas canvas, float f, float f2, Rect rect) {
            if (this.mShowArrow) {
                if (this.mArrow == null) {
                    this.mArrow = new Path();
                    this.mArrow.setFillType(FillType.EVEN_ODD);
                } else {
                    this.mArrow.reset();
                }
                float f3 = (float) (((int) this.mStrokeInset) / 2);
                float f4 = this.mArrowScale;
                float cos = (float) ((this.mRingCenterRadius * Math.cos(0.0d)) + ((double) rect.exactCenterX()));
                float sin = (float) ((this.mRingCenterRadius * Math.sin(0.0d)) + ((double) rect.exactCenterY()));
                this.mArrow.moveTo(0.0f, 0.0f);
                this.mArrow.lineTo(((float) this.mArrowWidth) * this.mArrowScale, 0.0f);
                this.mArrow.lineTo((((float) this.mArrowWidth) * this.mArrowScale) / 2.0f, ((float) this.mArrowHeight) * this.mArrowScale);
                this.mArrow.offset(cos - (f3 * f4), sin);
                this.mArrow.close();
                this.mArrowPaint.setColor(this.mCurrentColor);
                canvas.rotate((f + f2) - MaterialProgressDrawable.NUM_POINTS, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.mArrow, this.mArrowPaint);
            }
        }

        private int getNextColorIndex() {
            return (this.mColorIndex + MaterialProgressDrawable.DEFAULT) % this.mColors.length;
        }

        private void invalidateSelf() {
            this.mCallback.invalidateDrawable(null);
        }

        public void draw(Canvas canvas, Rect rect) {
            RectF rectF = this.mTempBounds;
            rectF.set(rect);
            rectF.inset(this.mStrokeInset, this.mStrokeInset);
            float f = (this.mStartTrim + this.mRotation) * 360.0f;
            float f2 = ((this.mEndTrim + this.mRotation) * 360.0f) - f;
            this.mPaint.setColor(this.mCurrentColor);
            canvas.drawArc(rectF, f, f2, false, this.mPaint);
            drawTriangle(canvas, f, f2, rect);
            if (this.mAlpha < MotionEventCompat.ACTION_MASK) {
                this.mCirclePaint.setColor(this.mBackgroundColor);
                this.mCirclePaint.setAlpha(255 - this.mAlpha);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), (float) (rect.width() / 2), this.mCirclePaint);
            }
        }

        public int getAlpha() {
            return this.mAlpha;
        }

        public double getCenterRadius() {
            return this.mRingCenterRadius;
        }

        public float getEndTrim() {
            return this.mEndTrim;
        }

        public float getInsets() {
            return this.mStrokeInset;
        }

        public int getNextColor() {
            return this.mColors[getNextColorIndex()];
        }

        public float getRotation() {
            return this.mRotation;
        }

        public float getStartTrim() {
            return this.mStartTrim;
        }

        public int getStartingColor() {
            return this.mColors[this.mColorIndex];
        }

        public float getStartingEndTrim() {
            return this.mStartingEndTrim;
        }

        public float getStartingRotation() {
            return this.mStartingRotation;
        }

        public float getStartingStartTrim() {
            return this.mStartingStartTrim;
        }

        public float getStrokeWidth() {
            return this.mStrokeWidth;
        }

        public void goToNextColor() {
            setColorIndex(getNextColorIndex());
        }

        public void resetOriginals() {
            this.mStartingStartTrim = 0.0f;
            this.mStartingEndTrim = 0.0f;
            this.mStartingRotation = 0.0f;
            setStartTrim(0.0f);
            setEndTrim(0.0f);
            setRotation(0.0f);
        }

        public void setAlpha(int i) {
            this.mAlpha = i;
        }

        public void setArrowDimensions(float f, float f2) {
            this.mArrowWidth = (int) f;
            this.mArrowHeight = (int) f2;
        }

        public void setArrowScale(float f) {
            if (f != this.mArrowScale) {
                this.mArrowScale = f;
                invalidateSelf();
            }
        }

        public void setBackgroundColor(int i) {
            this.mBackgroundColor = i;
        }

        public void setCenterRadius(double d) {
            this.mRingCenterRadius = d;
        }

        public void setColor(int i) {
            this.mCurrentColor = i;
        }

        public void setColorFilter(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
            invalidateSelf();
        }

        public void setColorIndex(int i) {
            this.mColorIndex = i;
            this.mCurrentColor = this.mColors[this.mColorIndex];
        }

        public void setColors(@NonNull int[] iArr) {
            this.mColors = iArr;
            setColorIndex(MaterialProgressDrawable.LARGE);
        }

        public void setEndTrim(float f) {
            this.mEndTrim = f;
            invalidateSelf();
        }

        public void setInsets(int i, int i2) {
            float min = (float) Math.min(i, i2);
            min = (this.mRingCenterRadius <= 0.0d || min < 0.0f) ? (float) Math.ceil((double) (this.mStrokeWidth / 2.0f)) : (float) (((double) (min / 2.0f)) - this.mRingCenterRadius);
            this.mStrokeInset = min;
        }

        public void setRotation(float f) {
            this.mRotation = f;
            invalidateSelf();
        }

        public void setShowArrow(boolean z) {
            if (this.mShowArrow != z) {
                this.mShowArrow = z;
                invalidateSelf();
            }
        }

        public void setStartTrim(float f) {
            this.mStartTrim = f;
            invalidateSelf();
        }

        public void setStrokeWidth(float f) {
            this.mStrokeWidth = f;
            this.mPaint.setStrokeWidth(f);
            invalidateSelf();
        }

        public void storeOriginals() {
            this.mStartingStartTrim = this.mStartTrim;
            this.mStartingEndTrim = this.mEndTrim;
            this.mStartingRotation = this.mRotation;
        }
    }

    static {
        LINEAR_INTERPOLATOR = new LinearInterpolator();
        MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
    }

    public MaterialProgressDrawable(Context context, View view) {
        int[] iArr = new int[DEFAULT];
        iArr[LARGE] = ViewCompat.MEASURED_STATE_MASK;
        this.COLORS = iArr;
        this.mAnimators = new ArrayList();
        this.mCallback = new C01143();
        this.mParent = view;
        this.mResources = context.getResources();
        this.mRing = new Ring(this.mCallback);
        this.mRing.setColors(this.COLORS);
        updateSizes(DEFAULT);
        setupAnimators();
    }

    private void applyFinishTranslation(float f, Ring ring) {
        updateRingColor(f, ring);
        float floor = (float) (Math.floor((double) (ring.getStartingRotation() / MAX_PROGRESS_ARC)) + 1.0d);
        float minProgressArc = getMinProgressArc(ring);
        ring.setStartTrim((((ring.getStartingEndTrim() - minProgressArc) - ring.getStartingStartTrim()) * f) + ring.getStartingStartTrim());
        ring.setEndTrim(ring.getStartingEndTrim());
        ring.setRotation(((floor - ring.getStartingRotation()) * f) + ring.getStartingRotation());
    }

    private int evaluateColorChange(float f, int i, int i2) {
        int intValue = Integer.valueOf(i).intValue();
        int i3 = (intValue >> 24) & MotionEventCompat.ACTION_MASK;
        int i4 = (intValue >> 16) & MotionEventCompat.ACTION_MASK;
        int i5 = (intValue >> 8) & MotionEventCompat.ACTION_MASK;
        intValue &= MotionEventCompat.ACTION_MASK;
        int intValue2 = Integer.valueOf(i2).intValue();
        return (intValue + ((int) (((float) ((intValue2 & MotionEventCompat.ACTION_MASK) - intValue)) * f))) | ((((i3 + ((int) (((float) (((intValue2 >> 24) & MotionEventCompat.ACTION_MASK) - i3)) * f))) << 24) | ((i4 + ((int) (((float) (((intValue2 >> 16) & MotionEventCompat.ACTION_MASK) - i4)) * f))) << 16)) | ((((int) (((float) (((intValue2 >> 8) & MotionEventCompat.ACTION_MASK) - i5)) * f)) + i5) << 8));
    }

    private float getMinProgressArc(Ring ring) {
        return (float) Math.toRadians(((double) ring.getStrokeWidth()) / (6.283185307179586d * ring.getCenterRadius()));
    }

    private float getRotation() {
        return this.mRotation;
    }

    private void setSizeParameters(double d, double d2, double d3, double d4, float f, float f2) {
        Ring ring = this.mRing;
        float f3 = this.mResources.getDisplayMetrics().density;
        this.mWidth = ((double) f3) * d;
        this.mHeight = ((double) f3) * d2;
        ring.setStrokeWidth(((float) d4) * f3);
        ring.setCenterRadius(((double) f3) * d3);
        ring.setColorIndex(LARGE);
        ring.setArrowDimensions(f * f3, f3 * f2);
        ring.setInsets((int) this.mWidth, (int) this.mHeight);
    }

    private void setupAnimators() {
        Ring ring = this.mRing;
        Animation c01121 = new C01121(ring);
        c01121.setRepeatCount(-1);
        c01121.setRepeatMode(DEFAULT);
        c01121.setInterpolator(LINEAR_INTERPOLATOR);
        c01121.setAnimationListener(new C01132(ring));
        this.mAnimation = c01121;
    }

    private void updateRingColor(float f, Ring ring) {
        if (f > COLOR_START_DELAY_OFFSET) {
            ring.setColor(evaluateColorChange((f - COLOR_START_DELAY_OFFSET) / 0.25f, ring.getStartingColor(), ring.getNextColor()));
        }
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.mRotation, bounds.exactCenterX(), bounds.exactCenterY());
        this.mRing.draw(canvas, bounds);
        canvas.restoreToCount(save);
    }

    public int getAlpha() {
        return this.mRing.getAlpha();
    }

    public int getIntrinsicHeight() {
        return (int) this.mHeight;
    }

    public int getIntrinsicWidth() {
        return (int) this.mWidth;
    }

    public int getOpacity() {
        return -3;
    }

    public boolean isRunning() {
        ArrayList arrayList = this.mAnimators;
        int size = arrayList.size();
        for (int i = LARGE; i < size; i += DEFAULT) {
            Animation animation = (Animation) arrayList.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void setAlpha(int i) {
        this.mRing.setAlpha(i);
    }

    public void setArrowScale(float f) {
        this.mRing.setArrowScale(f);
    }

    public void setBackgroundColor(int i) {
        this.mRing.setBackgroundColor(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mRing.setColorFilter(colorFilter);
    }

    public void setColorSchemeColors(int... iArr) {
        this.mRing.setColors(iArr);
        this.mRing.setColorIndex(LARGE);
    }

    public void setProgressRotation(float f) {
        this.mRing.setRotation(f);
    }

    void setRotation(float f) {
        this.mRotation = f;
        invalidateSelf();
    }

    public void setStartEndTrim(float f, float f2) {
        this.mRing.setStartTrim(f);
        this.mRing.setEndTrim(f2);
    }

    public void showArrow(boolean z) {
        this.mRing.setShowArrow(z);
    }

    public void start() {
        this.mAnimation.reset();
        this.mRing.storeOriginals();
        if (this.mRing.getEndTrim() != this.mRing.getStartTrim()) {
            this.mFinishing = true;
            this.mAnimation.setDuration(666);
            this.mParent.startAnimation(this.mAnimation);
            return;
        }
        this.mRing.setColorIndex(LARGE);
        this.mRing.resetOriginals();
        this.mAnimation.setDuration(1332);
        this.mParent.startAnimation(this.mAnimation);
    }

    public void stop() {
        this.mParent.clearAnimation();
        setRotation(0.0f);
        this.mRing.setShowArrow(false);
        this.mRing.setColorIndex(LARGE);
        this.mRing.resetOriginals();
    }

    public void updateSizes(@ProgressDrawableSize int i) {
        if (i == 0) {
            setSizeParameters(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            setSizeParameters(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, NUM_POINTS);
        }
    }
}
