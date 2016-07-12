package android.support.v4.media.session;

import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.RemoteControlClient.MetadataEditor;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompatApi14.Callback;
import com.google.android.gms.ads.AdRequest;

public class MediaSessionCompatApi19 {
    private static final long ACTION_SET_RATING = 128;
    private static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
    private static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
    private static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";

    static class OnMetadataUpdateListener<T extends Callback> implements android.media.RemoteControlClient.OnMetadataUpdateListener {
        protected final T mCallback;

        public OnMetadataUpdateListener(T t) {
            this.mCallback = t;
        }

        public void onMetadataUpdate(int i, Object obj) {
            if (i == 268435457 && (obj instanceof Rating)) {
                this.mCallback.onSetRating(obj);
            }
        }
    }

    static void addNewMetadata(Bundle bundle, MetadataEditor metadataEditor) {
        if (bundle != null) {
            if (bundle.containsKey(METADATA_KEY_YEAR)) {
                metadataEditor.putLong(8, bundle.getLong(METADATA_KEY_YEAR));
            }
            if (bundle.containsKey(METADATA_KEY_RATING)) {
                metadataEditor.putObject(101, bundle.getParcelable(METADATA_KEY_RATING));
            }
            if (bundle.containsKey(METADATA_KEY_USER_RATING)) {
                metadataEditor.putObject(268435457, bundle.getParcelable(METADATA_KEY_USER_RATING));
            }
        }
    }

    public static Object createMetadataUpdateListener(Callback callback) {
        return new OnMetadataUpdateListener(callback);
    }

    static int getRccTransportControlFlagsFromActions(long j) {
        int rccTransportControlFlagsFromActions = MediaSessionCompatApi18.getRccTransportControlFlagsFromActions(j);
        return (ACTION_SET_RATING & j) != 0 ? rccTransportControlFlagsFromActions | AdRequest.MAX_CONTENT_URL_LENGTH : rccTransportControlFlagsFromActions;
    }

    public static void setMetadata(Object obj, Bundle bundle, long j) {
        MetadataEditor editMetadata = ((RemoteControlClient) obj).editMetadata(true);
        MediaSessionCompatApi14.buildOldMetadata(bundle, editMetadata);
        addNewMetadata(bundle, editMetadata);
        if ((ACTION_SET_RATING & j) != 0) {
            editMetadata.addEditableKey(268435457);
        }
        editMetadata.apply();
    }

    public static void setOnMetadataUpdateListener(Object obj, Object obj2) {
        ((RemoteControlClient) obj).setMetadataUpdateListener((android.media.RemoteControlClient.OnMetadataUpdateListener) obj2);
    }

    public static void setTransportControlFlags(Object obj, long j) {
        ((RemoteControlClient) obj).setTransportControlFlags(getRccTransportControlFlagsFromActions(j));
    }
}
