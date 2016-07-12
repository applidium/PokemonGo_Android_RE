package com.nianticlabs.nia.sensors;

public final class MathUtil {
    public static final float DEGREES_TO_RADIANS = 0.017453292f;
    public static final float HALF_PI = 1.5707964f;
    public static final double NANOSECONDS_PER_SECOND = 1.0E9d;
    public static final long NANOSECONDS_PER_SECOND_AS_LONG = 1000000000;
    public static final float PI = 3.1415927f;
    public static final float RADIANS_TO_DEGREES = 57.29578f;
    public static final float TWO_PI = 6.2831855f;

    private MathUtil() {
    }

    public static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public static float degToRad(float f) {
        return DEGREES_TO_RADIANS * f;
    }

    public static float ease(float f) {
        return (float) Math.sin((((double) Math.max(Math.min(1.0f, f), 0.0f)) * 3.141592653589793d) / 2.0d);
    }

    public static float lerp(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    public static float linearStep(float f, float f2, float f3) {
        return saturate((f3 - f) / (f2 - f));
    }

    public static long nextPowerOf2(long j) {
        long max = Math.max(j, 0) - 1;
        max |= max >> 1;
        max |= max >> 2;
        max |= max >> 4;
        max |= max >> 8;
        return (max | (max >> 16)) + 1;
    }

    public static double normalizeAngle(double d) {
        double d2 = d;
        while (d2 > 3.141592653589793d) {
            d2 -= 6.283185307179586d;
        }
        while (d2 <= -3.141592653589793d) {
            d2 += 6.283185307179586d;
        }
        return d2;
    }

    public static float normalizeAngle(float f) {
        float f2 = f;
        while (f2 > PI) {
            f2 -= TWO_PI;
        }
        while (f2 <= -3.1415927f) {
            f2 += TWO_PI;
        }
        return f2;
    }

    public static float[] quadraticBezier(float f, float f2, float f3, float f4, float f5, float f6, int i) {
        float[] fArr = new float[(i * 2)];
        for (int i2 = 0; i2 < i; i2++) {
            float f7 = ((float) i2) * (1.0f / ((float) (i - 1)));
            fArr[i2 * 2] = ((((1.0f - f7) * (1.0f - f7)) * f) + ((((1.0f - f7) * 2.0f) * f7) * f3)) + ((f7 * f7) * f5);
            fArr[(i2 * 2) + 1] = ((f7 * f7) * f6) + ((((1.0f - f7) * (1.0f - f7)) * f2) + ((((1.0f - f7) * 2.0f) * f7) * f4));
        }
        return fArr;
    }

    public static float radToDeg(float f) {
        return RADIANS_TO_DEGREES * f;
    }

    public static float randomRange(float f, float f2) {
        return ((f2 - f) * ((float) Math.random())) + f;
    }

    public static float saturate(float f) {
        return clamp(f, 0.0f, 1.0f);
    }

    public static double wrapAngle(double d) {
        double d2 = d;
        while (d2 >= 6.283185307179586d) {
            d2 -= 6.283185307179586d;
        }
        while (d2 < 0.0d) {
            d2 += 6.283185307179586d;
        }
        return d2;
    }

    public static float wrapAngle(float f) {
        float f2 = f;
        while (f2 >= TWO_PI) {
            f2 -= TWO_PI;
        }
        while (f2 < 0.0f) {
            f2 += TWO_PI;
        }
        return f2;
    }
}
