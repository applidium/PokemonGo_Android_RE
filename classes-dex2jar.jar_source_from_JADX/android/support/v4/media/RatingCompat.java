package android.support.v4.media;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class RatingCompat implements Parcelable {
    public static final Creator<RatingCompat> CREATOR;
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    private static final float RATING_NOT_RATED = -1.0f;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private static final String TAG = "Rating";
    private Object mRatingObj;
    private final int mRatingStyle;
    private final float mRatingValue;

    /* renamed from: android.support.v4.media.RatingCompat.1 */
    static final class C00451 implements Creator<RatingCompat> {
        C00451() {
        }

        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readFloat(), null);
        }

        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StarStyle {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Style {
    }

    static {
        CREATOR = new C00451();
    }

    private RatingCompat(int i, float f) {
        this.mRatingStyle = i;
        this.mRatingValue = f;
    }

    public static RatingCompat fromRating(Object obj) {
        RatingCompat ratingCompat = null;
        if (obj != null && VERSION.SDK_INT >= 21) {
            int ratingStyle = RatingCompatApi21.getRatingStyle(obj);
            if (RatingCompatApi21.isRated(obj)) {
                switch (ratingStyle) {
                    case RATING_HEART /*1*/:
                        ratingCompat = newHeartRating(RatingCompatApi21.hasHeart(obj));
                        break;
                    case RATING_THUMB_UP_DOWN /*2*/:
                        ratingCompat = newThumbRating(RatingCompatApi21.isThumbUp(obj));
                        break;
                    case RATING_3_STARS /*3*/:
                    case RATING_4_STARS /*4*/:
                    case RATING_5_STARS /*5*/:
                        ratingCompat = newStarRating(ratingStyle, RatingCompatApi21.getStarRating(obj));
                        break;
                    case RATING_PERCENTAGE /*6*/:
                        ratingCompat = newPercentageRating(RatingCompatApi21.getPercentRating(obj));
                        break;
                    default:
                        break;
                }
            }
            ratingCompat = newUnratedRating(ratingStyle);
            ratingCompat.mRatingObj = obj;
        }
        return ratingCompat;
    }

    public static RatingCompat newHeartRating(boolean z) {
        return new RatingCompat(RATING_HEART, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newPercentageRating(float f) {
        if (f >= 0.0f && f <= 100.0f) {
            return new RatingCompat(RATING_PERCENTAGE, f);
        }
        Log.e(TAG, "Invalid percentage-based rating value");
        return null;
    }

    public static RatingCompat newStarRating(int i, float f) {
        float f2;
        switch (i) {
            case RATING_3_STARS /*3*/:
                f2 = 3.0f;
                break;
            case RATING_4_STARS /*4*/:
                f2 = 4.0f;
                break;
            case RATING_5_STARS /*5*/:
                f2 = 5.0f;
                break;
            default:
                Log.e(TAG, "Invalid rating style (" + i + ") for a star rating");
                return null;
        }
        if (f >= 0.0f && f <= r1) {
            return new RatingCompat(i, f);
        }
        Log.e(TAG, "Trying to set out of range star-based rating");
        return null;
    }

    public static RatingCompat newThumbRating(boolean z) {
        return new RatingCompat(RATING_THUMB_UP_DOWN, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newUnratedRating(int i) {
        switch (i) {
            case RATING_HEART /*1*/:
            case RATING_THUMB_UP_DOWN /*2*/:
            case RATING_3_STARS /*3*/:
            case RATING_4_STARS /*4*/:
            case RATING_5_STARS /*5*/:
            case RATING_PERCENTAGE /*6*/:
                return new RatingCompat(i, RATING_NOT_RATED);
            default:
                return null;
        }
    }

    public int describeContents() {
        return this.mRatingStyle;
    }

    public float getPercentRating() {
        return (this.mRatingStyle == RATING_PERCENTAGE && isRated()) ? this.mRatingValue : RATING_NOT_RATED;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object getRating() {
        /*
        r2 = this;
        r0 = r2.mRatingObj;
        if (r0 != 0) goto L_0x000a;
    L_0x0004:
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 21;
        if (r0 >= r1) goto L_0x000d;
    L_0x000a:
        r0 = r2.mRatingObj;
    L_0x000c:
        return r0;
    L_0x000d:
        r0 = r2.isRated();
        if (r0 == 0) goto L_0x004a;
    L_0x0013:
        r0 = r2.mRatingStyle;
        switch(r0) {
            case 1: goto L_0x001a;
            case 2: goto L_0x0027;
            case 3: goto L_0x0032;
            case 4: goto L_0x0032;
            case 5: goto L_0x0032;
            case 6: goto L_0x003f;
            default: goto L_0x0018;
        };
    L_0x0018:
        r0 = 0;
        goto L_0x000c;
    L_0x001a:
        r0 = r2.hasHeart();
        r0 = android.support.v4.media.RatingCompatApi21.newHeartRating(r0);
        r2.mRatingObj = r0;
    L_0x0024:
        r0 = r2.mRatingObj;
        goto L_0x000c;
    L_0x0027:
        r0 = r2.isThumbUp();
        r0 = android.support.v4.media.RatingCompatApi21.newThumbRating(r0);
        r2.mRatingObj = r0;
        goto L_0x0024;
    L_0x0032:
        r0 = r2.mRatingStyle;
        r1 = r2.getStarRating();
        r0 = android.support.v4.media.RatingCompatApi21.newStarRating(r0, r1);
        r2.mRatingObj = r0;
        goto L_0x0024;
    L_0x003f:
        r0 = r2.getPercentRating();
        r0 = android.support.v4.media.RatingCompatApi21.newPercentageRating(r0);
        r2.mRatingObj = r0;
        goto L_0x0018;
    L_0x004a:
        r0 = r2.mRatingStyle;
        r0 = android.support.v4.media.RatingCompatApi21.newUnratedRating(r0);
        r2.mRatingObj = r0;
        goto L_0x0024;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.RatingCompat.getRating():java.lang.Object");
    }

    public int getRatingStyle() {
        return this.mRatingStyle;
    }

    public float getStarRating() {
        switch (this.mRatingStyle) {
            case RATING_3_STARS /*3*/:
            case RATING_4_STARS /*4*/:
            case RATING_5_STARS /*5*/:
                if (isRated()) {
                    return this.mRatingValue;
                }
                break;
        }
        return RATING_NOT_RATED;
    }

    public boolean hasHeart() {
        return this.mRatingStyle == RATING_HEART && this.mRatingValue == 1.0f;
    }

    public boolean isRated() {
        return this.mRatingValue >= 0.0f;
    }

    public boolean isThumbUp() {
        return this.mRatingStyle == RATING_THUMB_UP_DOWN && this.mRatingValue == 1.0f;
    }

    public String toString() {
        return "Rating:style=" + this.mRatingStyle + " rating=" + (this.mRatingValue < 0.0f ? "unrated" : String.valueOf(this.mRatingValue));
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mRatingStyle);
        parcel.writeFloat(this.mRatingValue);
    }
}
