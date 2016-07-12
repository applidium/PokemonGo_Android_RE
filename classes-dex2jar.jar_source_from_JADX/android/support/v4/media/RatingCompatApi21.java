package android.support.v4.media;

import android.media.Rating;

class RatingCompatApi21 {
    RatingCompatApi21() {
    }

    public static float getPercentRating(Object obj) {
        return ((Rating) obj).getPercentRating();
    }

    public static int getRatingStyle(Object obj) {
        return ((Rating) obj).getRatingStyle();
    }

    public static float getStarRating(Object obj) {
        return ((Rating) obj).getStarRating();
    }

    public static boolean hasHeart(Object obj) {
        return ((Rating) obj).hasHeart();
    }

    public static boolean isRated(Object obj) {
        return ((Rating) obj).isRated();
    }

    public static boolean isThumbUp(Object obj) {
        return ((Rating) obj).isThumbUp();
    }

    public static Object newHeartRating(boolean z) {
        return Rating.newHeartRating(z);
    }

    public static Object newPercentageRating(float f) {
        return Rating.newPercentageRating(f);
    }

    public static Object newStarRating(int i, float f) {
        return Rating.newStarRating(i, f);
    }

    public static Object newThumbRating(boolean z) {
        return Rating.newThumbRating(z);
    }

    public static Object newUnratedRating(int i) {
        return Rating.newUnratedRating(i);
    }
}
