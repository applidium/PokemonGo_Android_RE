package android.support.v4.text;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.Locale;

class ICUCompatIcs {
    private static final String TAG = "ICUCompatIcs";
    private static Method sAddLikelySubtagsMethod;
    private static Method sGetScriptMethod;

    static {
        try {
            Class cls = Class.forName("libcore.icu.ICU");
            if (cls != null) {
                sGetScriptMethod = cls.getMethod("getScript", new Class[]{String.class});
                sAddLikelySubtagsMethod = cls.getMethod("addLikelySubtags", new Class[]{String.class});
            }
        } catch (Throwable e) {
            sGetScriptMethod = null;
            sAddLikelySubtagsMethod = null;
            Log.w(TAG, e);
        }
    }

    ICUCompatIcs() {
    }

    private static String addLikelySubtags(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (sAddLikelySubtagsMethod != null) {
                return (String) sAddLikelySubtagsMethod.invoke(null, new Object[]{locale2});
            }
        } catch (Throwable e) {
            Log.w(TAG, e);
        } catch (Throwable e2) {
            Log.w(TAG, e2);
        }
        return locale2;
    }

    private static String getScript(String str) {
        try {
            if (sGetScriptMethod != null) {
                return (String) sGetScriptMethod.invoke(null, new Object[]{str});
            }
        } catch (Throwable e) {
            Log.w(TAG, e);
        } catch (Throwable e2) {
            Log.w(TAG, e2);
        }
        return null;
    }

    public static String maximizeAndGetScript(Locale locale) {
        String addLikelySubtags = addLikelySubtags(locale);
        return addLikelySubtags != null ? getScript(addLikelySubtags) : null;
    }
}
