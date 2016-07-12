package crittercism.android;

import java.net.MalformedURLException;
import java.net.URL;

public final class db {
    private String f700a;
    private String f701b;

    public db(String str, String str2) {
        str.endsWith("/");
        str2.startsWith("/");
        this.f700a = str;
        this.f701b = str2;
    }

    public final URL m695a() {
        try {
            return new URL(this.f700a + this.f701b);
        } catch (MalformedURLException e) {
            new StringBuilder("Invalid url: ").append(this.f700a).append(this.f701b);
            dx.m753b();
            return null;
        }
    }
}
