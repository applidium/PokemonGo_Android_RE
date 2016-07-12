package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaSession.Token;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.view.KeyEvent;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;

class MediaControllerCompatApi21 {

    public interface Callback {
        void onMetadataChanged(Object obj);

        void onPlaybackStateChanged(Object obj);

        void onSessionDestroyed();

        void onSessionEvent(String str, Bundle bundle);
    }

    static class CallbackProxy<T extends Callback> extends android.media.session.MediaController.Callback {
        protected final T mCallback;

        public CallbackProxy(T t) {
            this.mCallback = t;
        }

        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.mCallback.onMetadataChanged(mediaMetadata);
        }

        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.mCallback.onPlaybackStateChanged(playbackState);
        }

        public void onSessionDestroyed() {
            this.mCallback.onSessionDestroyed();
        }

        public void onSessionEvent(String str, Bundle bundle) {
            this.mCallback.onSessionEvent(str, bundle);
        }
    }

    public static class PlaybackInfo {
        private static final int FLAG_SCO = 4;
        private static final int STREAM_BLUETOOTH_SCO = 6;
        private static final int STREAM_SYSTEM_ENFORCED = 7;

        public static AudioAttributes getAudioAttributes(Object obj) {
            return ((android.media.session.MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        public static int getCurrentVolume(Object obj) {
            return ((android.media.session.MediaController.PlaybackInfo) obj).getCurrentVolume();
        }

        public static int getLegacyAudioStream(Object obj) {
            return toLegacyStreamType(getAudioAttributes(obj));
        }

        public static int getMaxVolume(Object obj) {
            return ((android.media.session.MediaController.PlaybackInfo) obj).getMaxVolume();
        }

        public static int getPlaybackType(Object obj) {
            return ((android.media.session.MediaController.PlaybackInfo) obj).getPlaybackType();
        }

        public static int getVolumeControl(Object obj) {
            return ((android.media.session.MediaController.PlaybackInfo) obj).getVolumeControl();
        }

        private static int toLegacyStreamType(AudioAttributes audioAttributes) {
            if ((audioAttributes.getFlags() & 1) == 1) {
                return STREAM_SYSTEM_ENFORCED;
            }
            if ((audioAttributes.getFlags() & FLAG_SCO) == FLAG_SCO) {
                return STREAM_BLUETOOTH_SCO;
            }
            switch (audioAttributes.getUsage()) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                case Place.TYPE_BICYCLE_STORE /*11*/:
                case Place.TYPE_BOOK_STORE /*12*/:
                case Place.TYPE_BUS_STATION /*14*/:
                    return 3;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    return 0;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    return 8;
                case FLAG_SCO /*4*/:
                    return FLAG_SCO;
                case Place.TYPE_ART_GALLERY /*5*/:
                case STREAM_SYSTEM_ENFORCED /*7*/:
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                case Place.TYPE_BAR /*9*/:
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    return 5;
                case STREAM_BLUETOOTH_SCO /*6*/:
                    return 2;
                case Place.TYPE_BOWLING_ALLEY /*13*/:
                    return 1;
                default:
                    return 3;
            }
        }
    }

    public static class TransportControls {
        public static void fastForward(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).fastForward();
        }

        public static void pause(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).pause();
        }

        public static void play(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).play();
        }

        public static void playFromMediaId(Object obj, String str, Bundle bundle) {
            ((android.media.session.MediaController.TransportControls) obj).playFromMediaId(str, bundle);
        }

        public static void playFromSearch(Object obj, String str, Bundle bundle) {
            ((android.media.session.MediaController.TransportControls) obj).playFromSearch(str, bundle);
        }

        public static void rewind(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).rewind();
        }

        public static void seekTo(Object obj, long j) {
            ((android.media.session.MediaController.TransportControls) obj).seekTo(j);
        }

        public static void sendCustomAction(Object obj, String str, Bundle bundle) {
            ((android.media.session.MediaController.TransportControls) obj).sendCustomAction(str, bundle);
        }

        public static void setRating(Object obj, Object obj2) {
            ((android.media.session.MediaController.TransportControls) obj).setRating((Rating) obj2);
        }

        public static void skipToNext(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).skipToNext();
        }

        public static void skipToPrevious(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).skipToPrevious();
        }

        public static void skipToQueueItem(Object obj, long j) {
            ((android.media.session.MediaController.TransportControls) obj).skipToQueueItem(j);
        }

        public static void stop(Object obj) {
            ((android.media.session.MediaController.TransportControls) obj).stop();
        }
    }

    MediaControllerCompatApi21() {
    }

    public static void adjustVolume(Object obj, int i, int i2) {
        ((MediaController) obj).adjustVolume(i, i2);
    }

    public static Object createCallback(Callback callback) {
        return new CallbackProxy(callback);
    }

    public static boolean dispatchMediaButtonEvent(Object obj, KeyEvent keyEvent) {
        return ((MediaController) obj).dispatchMediaButtonEvent(keyEvent);
    }

    public static Object fromToken(Context context, Object obj) {
        return new MediaController(context, (Token) obj);
    }

    public static Bundle getExtras(Object obj) {
        return ((MediaController) obj).getExtras();
    }

    public static long getFlags(Object obj) {
        return ((MediaController) obj).getFlags();
    }

    public static Object getMetadata(Object obj) {
        return ((MediaController) obj).getMetadata();
    }

    public static String getPackageName(Object obj) {
        return ((MediaController) obj).getPackageName();
    }

    public static Object getPlaybackInfo(Object obj) {
        return ((MediaController) obj).getPlaybackInfo();
    }

    public static Object getPlaybackState(Object obj) {
        return ((MediaController) obj).getPlaybackState();
    }

    public static List<Object> getQueue(Object obj) {
        Collection queue = ((MediaController) obj).getQueue();
        return queue == null ? null : new ArrayList(queue);
    }

    public static CharSequence getQueueTitle(Object obj) {
        return ((MediaController) obj).getQueueTitle();
    }

    public static int getRatingType(Object obj) {
        return ((MediaController) obj).getRatingType();
    }

    public static PendingIntent getSessionActivity(Object obj) {
        return ((MediaController) obj).getSessionActivity();
    }

    public static Object getTransportControls(Object obj) {
        return ((MediaController) obj).getTransportControls();
    }

    public static void registerCallback(Object obj, Object obj2, Handler handler) {
        ((MediaController) obj).registerCallback((android.media.session.MediaController.Callback) obj2, handler);
    }

    public static void sendCommand(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }

    public static void setVolumeTo(Object obj, int i, int i2) {
        ((MediaController) obj).setVolumeTo(i, i2);
    }

    public static void unregisterCallback(Object obj, Object obj2) {
        ((MediaController) obj).unregisterCallback((android.media.session.MediaController.Callback) obj2);
    }
}
