package crittercism.android;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import org.apache.http.util.CharArrayBuffer;

public final class ai extends af {
    private int f312d;

    public ai(af afVar) {
        super(afVar);
        this.f312d = -1;
    }

    public final boolean m276a(CharArrayBuffer charArrayBuffer) {
        int indexOf = charArrayBuffer.indexOf(59);
        int length = charArrayBuffer.length();
        if (indexOf > 0) {
            length = indexOf;
        }
        try {
            this.f312d = Integer.parseInt(charArrayBuffer.substringTrimmed(0, length), 16);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public final af m277b() {
        int i = this.f312d;
        if (this.f312d == 0) {
            return new aq(this);
        }
        this.f304b.clear();
        return new ah(this, this.f312d);
    }

    public final af m278c() {
        return as.f322d;
    }

    protected final int m279d() {
        return 16;
    }

    protected final int m280e() {
        return AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY;
    }

    public final void m281f() {
        this.f303a.m302b(m250a());
        this.f303a.m298a(as.f322d);
    }
}
