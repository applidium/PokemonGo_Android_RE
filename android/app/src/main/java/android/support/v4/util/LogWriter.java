package android.support.v4.util;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import java.io.Writer;

public class LogWriter extends Writer {
    private StringBuilder mBuilder;
    private final String mTag;

    public LogWriter(String str) {
        this.mBuilder = new StringBuilder(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        this.mTag = str;
    }

    private void flushBuilder() {
        if (this.mBuilder.length() > 0) {
            Log.d(this.mTag, this.mBuilder.toString());
            this.mBuilder.delete(0, this.mBuilder.length());
        }
    }

    public void close() {
        flushBuilder();
    }

    public void flush() {
        flushBuilder();
    }

    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                flushBuilder();
            } else {
                this.mBuilder.append(c);
            }
        }
    }
}
