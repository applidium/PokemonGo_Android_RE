package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

final class SwipeProgressBar {
    private static final int ANIMATION_DURATION_MS = 2000;
    private static final int COLOR1 = -1291845632;
    private static final int COLOR2 = Integer.MIN_VALUE;
    private static final int COLOR3 = 1291845632;
    private static final int COLOR4 = 436207616;
    private static final int FINISH_ANIMATION_DURATION_MS = 1000;
    private static final Interpolator INTERPOLATOR;
    private Rect mBounds;
    private final RectF mClipRect;
    private int mColor1;
    private int mColor2;
    private int mColor3;
    private int mColor4;
    private long mFinishTime;
    private final Paint mPaint;
    private View mParent;
    private boolean mRunning;
    private long mStartTime;
    private float mTriggerPercentage;

    static {
        INTERPOLATOR = new FastOutSlowInInterpolator();
    }

    public SwipeProgressBar(View view) {
        this.mPaint = new Paint();
        this.mClipRect = new RectF();
        this.mBounds = new Rect();
        this.mParent = view;
        this.mColor1 = COLOR1;
        this.mColor2 = COLOR2;
        this.mColor3 = COLOR3;
        this.mColor4 = COLOR4;
    }

    private void drawCircle(Canvas canvas, float f, float f2, int i, float f3) {
        this.mPaint.setColor(i);
        canvas.save();
        canvas.translate(f, f2);
        float interpolation = INTERPOLATOR.getInterpolation(f3);
        canvas.scale(interpolation, interpolation);
        canvas.drawCircle(0.0f, 0.0f, f, this.mPaint);
        canvas.restore();
    }

    private void drawTrigger(Canvas canvas, int i, int i2) {
        this.mPaint.setColor(this.mColor1);
        canvas.drawCircle((float) i, (float) i2, ((float) i) * this.mTriggerPercentage, this.mPaint);
    }

    void draw(Canvas canvas) {
        int width = this.mBounds.width();
        int height = this.mBounds.height();
        int i = width / 2;
        int i2 = height / 2;
        int save = canvas.save();
        canvas.clipRect(this.mBounds);
        if (this.mRunning || this.mFinishTime > 0) {
            Canvas canvas2;
            int i3;
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j = (currentAnimationTimeMillis - this.mStartTime) / 2000;
            float f = ((float) ((currentAnimationTimeMillis - this.mStartTime) % 2000)) / 20.0f;
            Object obj;
            if (this.mRunning) {
                obj = null;
            } else {
                if (currentAnimationTimeMillis - this.mFinishTime >= 1000) {
                    this.mFinishTime = 0;
                    return;
                }
                float f2 = (float) (width / 2);
                float interpolation = INTERPOLATOR.getInterpolation((((float) ((currentAnimationTimeMillis - this.mFinishTime) % 1000)) / 10.0f) / 100.0f) * f2;
                this.mClipRect.set(((float) i) - interpolation, 0.0f, interpolation + ((float) i), (float) height);
                canvas.saveLayerAlpha(this.mClipRect, 0, 0);
                obj = 1;
            }
            if (j == 0) {
                canvas.drawColor(this.mColor1);
            } else if (f >= 0.0f && f < 25.0f) {
                canvas.drawColor(this.mColor4);
            } else if (f >= 25.0f && f < 50.0f) {
                canvas.drawColor(this.mColor1);
            } else if (f < 50.0f || f >= 75.0f) {
                canvas.drawColor(this.mColor3);
            } else {
                canvas.drawColor(this.mColor2);
            }
            if (f >= 0.0f && f <= 25.0f) {
                canvas2 = canvas;
                drawCircle(canvas2, (float) i, (float) i2, this.mColor1, ((25.0f + f) * 2.0f) / 100.0f);
            }
            if (f >= 0.0f && f <= 50.0f) {
                canvas2 = canvas;
                drawCircle(canvas2, (float) i, (float) i2, this.mColor2, (2.0f * f) / 100.0f);
            }
            if (f >= 25.0f && f <= 75.0f) {
                canvas2 = canvas;
                drawCircle(canvas2, (float) i, (float) i2, this.mColor3, ((f - 25.0f) * 2.0f) / 100.0f);
            }
            if (f >= 50.0f && f <= 100.0f) {
                canvas2 = canvas;
                drawCircle(canvas2, (float) i, (float) i2, this.mColor4, ((f - 50.0f) * 2.0f) / 100.0f);
            }
            if (f >= 75.0f && f <= 100.0f) {
                canvas2 = canvas;
                drawCircle(canvas2, (float) i, (float) i2, this.mColor1, ((f - 75.0f) * 2.0f) / 100.0f);
            }
            if (this.mTriggerPercentage <= 0.0f || r9 == null) {
                i3 = save;
            } else {
                canvas.restoreToCount(save);
                i3 = canvas.save();
                canvas.clipRect(this.mBounds);
                drawTrigger(canvas, i, i2);
            }
            ViewCompat.postInvalidateOnAnimation(this.mParent, this.mBounds.left, this.mBounds.top, this.mBounds.right, this.mBounds.bottom);
            save = i3;
        } else if (this.mTriggerPercentage > 0.0f && ((double) this.mTriggerPercentage) <= 1.0d) {
            drawTrigger(canvas, i, i2);
        }
        canvas.restoreToCount(save);
    }

    boolean isRunning() {
        return this.mRunning || this.mFinishTime > 0;
    }

    void setBounds(int i, int i2, int i3, int i4) {
        this.mBounds.left = i;
        this.mBounds.top = i2;
        this.mBounds.right = i3;
        this.mBounds.bottom = i4;
    }

    void setColorScheme(int i, int i2, int i3, int i4) {
        this.mColor1 = i;
        this.mColor2 = i2;
        this.mColor3 = i3;
        this.mColor4 = i4;
    }

    void setTriggerPercentage(float f) {
        this.mTriggerPercentage = f;
        this.mStartTime = 0;
        ViewCompat.postInvalidateOnAnimation(this.mParent, this.mBounds.left, this.mBounds.top, this.mBounds.right, this.mBounds.bottom);
    }

    void start() {
        if (!this.mRunning) {
            this.mTriggerPercentage = 0.0f;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mRunning = true;
            this.mParent.postInvalidate();
        }
    }

    void stop() {
        if (this.mRunning) {
            this.mTriggerPercentage = 0.0f;
            this.mFinishTime = AnimationUtils.currentAnimationTimeMillis();
            this.mRunning = false;
            this.mParent.postInvalidate();
        }
    }
}
