package android.support.v4.speech.tts;

import android.os.Build.VERSION;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnUtteranceCompletedListener;
import android.speech.tts.UtteranceProgressListener;
import java.util.Locale;
import java.util.Set;

class TextToSpeechICSMR1 {
    public static final String KEY_FEATURE_EMBEDDED_SYNTHESIS = "embeddedTts";
    public static final String KEY_FEATURE_NETWORK_SYNTHESIS = "networkTts";

    /* renamed from: android.support.v4.speech.tts.TextToSpeechICSMR1.1 */
    static final class C00731 extends UtteranceProgressListener {
        final /* synthetic */ UtteranceProgressListenerICSMR1 val$listener;

        C00731(UtteranceProgressListenerICSMR1 utteranceProgressListenerICSMR1) {
            this.val$listener = utteranceProgressListenerICSMR1;
        }

        public void onDone(String str) {
            this.val$listener.onDone(str);
        }

        public void onError(String str) {
            this.val$listener.onError(str);
        }

        public void onStart(String str) {
            this.val$listener.onStart(str);
        }
    }

    /* renamed from: android.support.v4.speech.tts.TextToSpeechICSMR1.2 */
    static final class C00742 implements OnUtteranceCompletedListener {
        final /* synthetic */ UtteranceProgressListenerICSMR1 val$listener;

        C00742(UtteranceProgressListenerICSMR1 utteranceProgressListenerICSMR1) {
            this.val$listener = utteranceProgressListenerICSMR1;
        }

        public void onUtteranceCompleted(String str) {
            this.val$listener.onStart(str);
            this.val$listener.onDone(str);
        }
    }

    interface UtteranceProgressListenerICSMR1 {
        void onDone(String str);

        void onError(String str);

        void onStart(String str);
    }

    TextToSpeechICSMR1() {
    }

    static Set<String> getFeatures(TextToSpeech textToSpeech, Locale locale) {
        return VERSION.SDK_INT >= 15 ? textToSpeech.getFeatures(locale) : null;
    }

    static void setUtteranceProgressListener(TextToSpeech textToSpeech, UtteranceProgressListenerICSMR1 utteranceProgressListenerICSMR1) {
        if (VERSION.SDK_INT >= 15) {
            textToSpeech.setOnUtteranceProgressListener(new C00731(utteranceProgressListenerICSMR1));
        } else {
            textToSpeech.setOnUtteranceCompletedListener(new C00742(utteranceProgressListenerICSMR1));
        }
    }
}
