package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;

public class MarginLayoutParamsCompat {
    static final MarginLayoutParamsCompatImpl IMPL;

    interface MarginLayoutParamsCompatImpl {
        int getLayoutDirection(MarginLayoutParams marginLayoutParams);

        int getMarginEnd(MarginLayoutParams marginLayoutParams);

        int getMarginStart(MarginLayoutParams marginLayoutParams);

        boolean isMarginRelative(MarginLayoutParams marginLayoutParams);

        void resolveLayoutDirection(MarginLayoutParams marginLayoutParams, int i);

        void setLayoutDirection(MarginLayoutParams marginLayoutParams, int i);

        void setMarginEnd(MarginLayoutParams marginLayoutParams, int i);

        void setMarginStart(MarginLayoutParams marginLayoutParams, int i);
    }

    static class MarginLayoutParamsCompatImplBase implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplBase() {
        }

        public int getLayoutDirection(MarginLayoutParams marginLayoutParams) {
            return 0;
        }

        public int getMarginEnd(MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.rightMargin;
        }

        public int getMarginStart(MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.leftMargin;
        }

        public boolean isMarginRelative(MarginLayoutParams marginLayoutParams) {
            return false;
        }

        public void resolveLayoutDirection(MarginLayoutParams marginLayoutParams, int i) {
        }

        public void setLayoutDirection(MarginLayoutParams marginLayoutParams, int i) {
        }

        public void setMarginEnd(MarginLayoutParams marginLayoutParams, int i) {
            marginLayoutParams.rightMargin = i;
        }

        public void setMarginStart(MarginLayoutParams marginLayoutParams, int i) {
            marginLayoutParams.leftMargin = i;
        }
    }

    static class MarginLayoutParamsCompatImplJbMr1 implements MarginLayoutParamsCompatImpl {
        MarginLayoutParamsCompatImplJbMr1() {
        }

        public int getLayoutDirection(MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getLayoutDirection(marginLayoutParams);
        }

        public int getMarginEnd(MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getMarginEnd(marginLayoutParams);
        }

        public int getMarginStart(MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.getMarginStart(marginLayoutParams);
        }

        public boolean isMarginRelative(MarginLayoutParams marginLayoutParams) {
            return MarginLayoutParamsCompatJellybeanMr1.isMarginRelative(marginLayoutParams);
        }

        public void resolveLayoutDirection(MarginLayoutParams marginLayoutParams, int i) {
            MarginLayoutParamsCompatJellybeanMr1.resolveLayoutDirection(marginLayoutParams, i);
        }

        public void setLayoutDirection(MarginLayoutParams marginLayoutParams, int i) {
            MarginLayoutParamsCompatJellybeanMr1.setLayoutDirection(marginLayoutParams, i);
        }

        public void setMarginEnd(MarginLayoutParams marginLayoutParams, int i) {
            MarginLayoutParamsCompatJellybeanMr1.setMarginEnd(marginLayoutParams, i);
        }

        public void setMarginStart(MarginLayoutParams marginLayoutParams, int i) {
            MarginLayoutParamsCompatJellybeanMr1.setMarginStart(marginLayoutParams, i);
        }
    }

    static {
        if (VERSION.SDK_INT >= 17) {
            IMPL = new MarginLayoutParamsCompatImplJbMr1();
        } else {
            IMPL = new MarginLayoutParamsCompatImplBase();
        }
    }

    public static int getLayoutDirection(MarginLayoutParams marginLayoutParams) {
        return IMPL.getLayoutDirection(marginLayoutParams);
    }

    public static int getMarginEnd(MarginLayoutParams marginLayoutParams) {
        return IMPL.getMarginEnd(marginLayoutParams);
    }

    public static int getMarginStart(MarginLayoutParams marginLayoutParams) {
        return IMPL.getMarginStart(marginLayoutParams);
    }

    public static boolean isMarginRelative(MarginLayoutParams marginLayoutParams) {
        return IMPL.isMarginRelative(marginLayoutParams);
    }

    public static void resolveLayoutDirection(MarginLayoutParams marginLayoutParams, int i) {
        IMPL.resolveLayoutDirection(marginLayoutParams, i);
    }

    public static void setLayoutDirection(MarginLayoutParams marginLayoutParams, int i) {
        IMPL.setLayoutDirection(marginLayoutParams, i);
    }

    public static void setMarginEnd(MarginLayoutParams marginLayoutParams, int i) {
        IMPL.setMarginEnd(marginLayoutParams, i);
    }

    public static void setMarginStart(MarginLayoutParams marginLayoutParams, int i) {
        IMPL.setMarginStart(marginLayoutParams, i);
    }
}
