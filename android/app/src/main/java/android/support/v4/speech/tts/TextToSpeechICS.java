package android.support.v4.speech.tts;

import android.content.Context;
import android.os.Build.VERSION;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnInitListener;
import android.util.Log;

class TextToSpeechICS {
    private static final String TAG = "android.support.v4.speech.tts";

    TextToSpeechICS() {
    }

    static TextToSpeech construct(Context context, OnInitListener onInitListener, String str) {
        if (VERSION.SDK_INT >= 14) {
            return new TextToSpeech(context, onInitListener, str);
        }
        if (str == null) {
            return new TextToSpeech(context, onInitListener);
        }
        Log.w(TAG, "Can't specify tts engine on this device");
        return new TextToSpeech(context, onInitListener);
    }
}
