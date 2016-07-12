package crittercism.android;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class ed {
    public static final ed f792a;
    private ee f793b;
    private ThreadLocal f794c;

    /* renamed from: crittercism.android.ed.a */
    final class C1080a implements ee {
        final /* synthetic */ ed f791a;

        private C1080a(ed edVar) {
            this.f791a = edVar;
        }

        public final Date m768a() {
            return new Date();
        }
    }

    static {
        f792a = new ed();
    }

    private ed() {
        this.f793b = new C1080a();
        this.f794c = new ThreadLocal();
    }

    private SimpleDateFormat m769b() {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) this.f794c.get();
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        simpleDateFormat.setLenient(false);
        this.f794c.set(simpleDateFormat);
        return simpleDateFormat;
    }

    public final long m770a(String str) {
        return m769b().parse(str).getTime();
    }

    public final String m771a() {
        return m772a(this.f793b.m767a());
    }

    public final String m772a(Date date) {
        return m769b().format(date);
    }
}
