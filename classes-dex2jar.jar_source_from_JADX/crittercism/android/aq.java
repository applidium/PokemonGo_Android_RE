package crittercism.android;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import org.apache.http.util.CharArrayBuffer;

public final class aq extends af {
    private boolean f320d;

    public aq(af afVar) {
        super(afVar);
        this.f320d = false;
    }

    public final boolean m316a(CharArrayBuffer charArrayBuffer) {
        boolean z = false;
        if (charArrayBuffer.substringTrimmed(0, charArrayBuffer.length()).length() == 0) {
            z = true;
        }
        this.f320d = z;
        return true;
    }

    public final af m317b() {
        if (this.f320d) {
            this.f303a.m302b(m250a());
            return this.f303a.m301b();
        }
        this.f304b.clear();
        return this;
    }

    public final af m318c() {
        this.f304b.clear();
        return new ar(this);
    }

    protected final int m319d() {
        return 8;
    }

    protected final int m320e() {
        return AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
    }
}
