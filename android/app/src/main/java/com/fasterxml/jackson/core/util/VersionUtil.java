package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import java.io.Closeable;
import java.io.IOException;
import java.util.Properties;
import java.util.regex.Pattern;

public class VersionUtil {
    private static final Pattern V_SEP;
    private final Version _v;

    static {
        V_SEP = Pattern.compile("[-_./;:]");
    }

    protected VersionUtil() {
        Version version = null;
        try {
            version = versionFor(getClass());
        } catch (Exception e) {
            System.err.println("ERROR: Failed to load Version information from " + getClass());
        }
        if (version == null) {
            version = Version.unknownVersion();
        }
        this._v = version;
    }

    private static final void _close(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
        }
    }

    @Deprecated
    public static Version mavenVersionFor(ClassLoader classLoader, String str, String str2) {
        Closeable resourceAsStream = classLoader.getResourceAsStream("META-INF/maven/" + str.replaceAll("\\.", "/") + "/" + str2 + "/pom.properties");
        if (resourceAsStream != null) {
            Version parseVersion;
            try {
                Properties properties = new Properties();
                properties.load(resourceAsStream);
                parseVersion = parseVersion(properties.getProperty("version"), properties.getProperty("groupId"), properties.getProperty("artifactId"));
                return parseVersion;
            } catch (IOException e) {
                parseVersion = e;
            } finally {
                _close(resourceAsStream);
            }
        }
        return Version.unknownVersion();
    }

    public static Version packageVersionFor(Class<?> cls) {
        Class cls2;
        try {
            cls2 = Class.forName(cls.getPackage().getName() + ".PackageVersion", true, cls.getClassLoader());
            return ((Versioned) cls2.newInstance()).version();
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to get Versioned out of " + cls2);
        } catch (Exception e2) {
            return null;
        }
    }

    public static Version parseVersion(String str, String str2, String str3) {
        String str4 = null;
        if (str != null) {
            CharSequence trim = str.trim();
            if (trim.length() > 0) {
                String[] split = V_SEP.split(trim);
                int parseVersionPart = parseVersionPart(split[0]);
                int parseVersionPart2 = split.length > 1 ? parseVersionPart(split[1]) : 0;
                int parseVersionPart3 = split.length > 2 ? parseVersionPart(split[2]) : 0;
                if (split.length > 3) {
                    str4 = split[3];
                }
                return new Version(parseVersionPart, parseVersionPart2, parseVersionPart3, str4, str2, str3);
            }
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static int parseVersionPart(java.lang.String r5) {
        /*
        r0 = 0;
        r2 = r5.length();
        r1 = r0;
    L_0x0006:
        if (r0 >= r2) goto L_0x0014;
    L_0x0008:
        r3 = r5.charAt(r0);
        r4 = 57;
        if (r3 > r4) goto L_0x0014;
    L_0x0010:
        r4 = 48;
        if (r3 >= r4) goto L_0x0015;
    L_0x0014:
        return r1;
    L_0x0015:
        r1 = r1 * 10;
        r3 = r3 + -48;
        r1 = r1 + r3;
        r0 = r0 + 1;
        goto L_0x0006;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.VersionUtil.parseVersionPart(java.lang.String):int");
    }

    public static final void throwInternal() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    public static Version versionFor(Class<?> cls) {
        return packageVersionFor(cls);
    }

    public Version version() {
        return this._v;
    }
}
