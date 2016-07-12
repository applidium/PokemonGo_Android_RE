package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;

public class MediaDescriptionCompatApi21 {

    public static class Builder {
        public static Object build(Object obj) {
            return ((android.media.MediaDescription.Builder) obj).build();
        }

        public static Object newInstance() {
            return new android.media.MediaDescription.Builder();
        }

        public static void setDescription(Object obj, CharSequence charSequence) {
            ((android.media.MediaDescription.Builder) obj).setDescription(charSequence);
        }

        public static void setExtras(Object obj, Bundle bundle) {
            ((android.media.MediaDescription.Builder) obj).setExtras(bundle);
        }

        public static void setIconBitmap(Object obj, Bitmap bitmap) {
            ((android.media.MediaDescription.Builder) obj).setIconBitmap(bitmap);
        }

        public static void setIconUri(Object obj, Uri uri) {
            ((android.media.MediaDescription.Builder) obj).setIconUri(uri);
        }

        public static void setMediaId(Object obj, String str) {
            ((android.media.MediaDescription.Builder) obj).setMediaId(str);
        }

        public static void setSubtitle(Object obj, CharSequence charSequence) {
            ((android.media.MediaDescription.Builder) obj).setSubtitle(charSequence);
        }

        public static void setTitle(Object obj, CharSequence charSequence) {
            ((android.media.MediaDescription.Builder) obj).setTitle(charSequence);
        }
    }

    public static Object fromParcel(Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }

    public static CharSequence getDescription(Object obj) {
        return ((MediaDescription) obj).getDescription();
    }

    public static Bundle getExtras(Object obj) {
        return ((MediaDescription) obj).getExtras();
    }

    public static Bitmap getIconBitmap(Object obj) {
        return ((MediaDescription) obj).getIconBitmap();
    }

    public static Uri getIconUri(Object obj) {
        return ((MediaDescription) obj).getIconUri();
    }

    public static String getMediaId(Object obj) {
        return ((MediaDescription) obj).getMediaId();
    }

    public static CharSequence getSubtitle(Object obj) {
        return ((MediaDescription) obj).getSubtitle();
    }

    public static CharSequence getTitle(Object obj) {
        return ((MediaDescription) obj).getTitle();
    }

    public static void writeToParcel(Object obj, Parcel parcel, int i) {
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
