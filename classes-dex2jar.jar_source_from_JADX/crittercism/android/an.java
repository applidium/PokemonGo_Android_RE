package crittercism.android;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import org.apache.http.ParseException;
import org.apache.http.RequestLine;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

public final class an extends af {
    public an(al alVar) {
        super(alVar);
    }

    public final boolean m305a(CharArrayBuffer charArrayBuffer) {
        try {
            RequestLine parseRequestLine = BasicLineParser.DEFAULT.parseRequestLine(charArrayBuffer, new ParserCursor(0, charArrayBuffer.length()));
            this.f303a.m300a(parseRequestLine.getMethod(), parseRequestLine.getUri());
            return true;
        } catch (ParseException e) {
            return false;
        }
    }

    public final af m306b() {
        return new am(this);
    }

    public final af m307c() {
        return as.f322d;
    }

    protected final int m308d() {
        return 64;
    }

    protected final int m309e() {
        return AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT;
    }
}
