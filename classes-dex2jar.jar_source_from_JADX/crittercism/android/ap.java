package crittercism.android;

import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

public final class ap extends af {
    private int f319d;

    public ap(al alVar) {
        super(alVar);
        this.f319d = -1;
    }

    public final boolean m311a(CharArrayBuffer charArrayBuffer) {
        try {
            StatusLine parseStatusLine = BasicLineParser.DEFAULT.parseStatusLine(charArrayBuffer, new ParserCursor(0, charArrayBuffer.length()));
            this.f319d = parseStatusLine.getStatusCode();
            this.f303a.m297a(parseStatusLine.getStatusCode());
            return true;
        } catch (ParseException e) {
            return false;
        }
    }

    public final af m312b() {
        return new ao(this, this.f319d);
    }

    public final af m313c() {
        return as.f322d;
    }

    protected final int m314d() {
        return 20;
    }

    protected final int m315e() {
        return 64;
    }
}
