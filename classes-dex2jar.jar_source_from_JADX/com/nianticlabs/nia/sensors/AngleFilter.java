package com.nianticlabs.nia.sensors;

public class AngleFilter {
    private static final float FRICTION_COEFFICIENT_1 = 1.0f;
    private static final float FRICTION_COEFFICIENT_2 = 0.5f;
    private static final float MAX_DT = 10.0f;
    private static final float SIGNAL_LEVEL = 10.0f;
    private static final float STEP_SIZE = 0.5f;
    private static final float TIME_NORMALIZATION_MS = 100.0f;
    protected float currentValue;
    private long lastReadingTime;
    private float speed;
    private final boolean wrap;

    public AngleFilter(boolean z) {
        this.speed = 0.0f;
        this.lastReadingTime = 0;
        this.wrap = z;
    }

    private void step(float f, float f2) {
        float f3 = (f2 - this.currentValue) / SIGNAL_LEVEL;
        this.speed += (Math.abs(f3) * f3) * f;
        if (this.speed != 0.0f) {
            f3 = (f3 * SIGNAL_LEVEL) / this.speed;
            f3 = (float) ((Math.exp((double) (f3 * (-f3))) * 1.0d) + 0.5d);
            if (f3 * f >= FRICTION_COEFFICIENT_1) {
                this.speed = 0.0f;
                return;
            }
            this.speed -= (f3 * this.speed) * f;
            this.currentValue += this.speed * f;
        }
    }

    public float filter(long j, float f) {
        if (this.lastReadingTime == 0 || j < this.lastReadingTime) {
            this.currentValue = f;
        } else {
            if (this.wrap && Math.abs(f - this.currentValue) * 2.0f > 360.0f) {
                f = f < this.currentValue ? f + 360.0f : f - 360.0f;
            }
            float f2 = ((float) (j - this.lastReadingTime)) / TIME_NORMALIZATION_MS;
            if (f2 > SIGNAL_LEVEL || f2 < 0.0f) {
                this.currentValue = f;
                this.speed = 0.0f;
            } else {
                while (f2 > 0.0f) {
                    step(Math.min(STEP_SIZE, f2), f);
                    f2 -= STEP_SIZE;
                }
            }
        }
        this.lastReadingTime = j;
        if (this.wrap) {
            while (this.currentValue >= 360.0f) {
                this.currentValue -= 360.0f;
            }
            while (this.currentValue < 0.0f) {
                this.currentValue += 360.0f;
            }
        }
        return this.currentValue;
    }
}
