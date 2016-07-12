package crittercism.android;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.voxelbusters.nativeplugins.defines.Keys.WebView;
import org.apache.http.Header;
import org.apache.http.ParseException;
import org.apache.http.message.BasicLineParser;
import org.apache.http.util.CharArrayBuffer;

public abstract class ak extends af {
    boolean f313d;
    int f314e;
    boolean f315f;
    private boolean f316g;
    private boolean f317h;

    public ak(af afVar) {
        super(afVar);
        this.f313d = false;
        this.f316g = false;
        this.f317h = false;
        this.f315f = false;
    }

    public final boolean m290a(CharArrayBuffer charArrayBuffer) {
        int length = this.f304b.length();
        length = (length == 0 || (length == 1 && this.f304b.charAt(0) == '\r')) ? true : 0;
        if (length != 0) {
            this.f317h = true;
            return true;
        }
        try {
            Header parseHeader = BasicLineParser.DEFAULT.parseHeader(charArrayBuffer);
            if (!this.f313d && parseHeader.getName().equalsIgnoreCase("content-length")) {
                length = Integer.parseInt(parseHeader.getValue());
                if (length < 0) {
                    return false;
                }
                this.f313d = true;
                this.f314e = length;
                return true;
            } else if (parseHeader.getName().equalsIgnoreCase("transfer-encoding")) {
                this.f315f = parseHeader.getValue().equalsIgnoreCase("chunked");
                return true;
            } else if (this.f316g || !parseHeader.getName().equalsIgnoreCase(WebView.HOST)) {
                return true;
            } else {
                String value = parseHeader.getValue();
                if (value == null) {
                    return true;
                }
                this.f316g = true;
                this.f303a.m299a(value);
                return true;
            }
        } catch (ParseException e) {
            return false;
        } catch (NumberFormatException e2) {
            return false;
        }
    }

    public final af m291b() {
        if (this.f317h) {
            return m295g();
        }
        this.f304b.clear();
        return this;
    }

    public final af m292c() {
        this.f304b.clear();
        return new ar(this);
    }

    protected final int m293d() {
        return 32;
    }

    protected final int m294e() {
        return AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
    }

    protected abstract af m295g();
}
