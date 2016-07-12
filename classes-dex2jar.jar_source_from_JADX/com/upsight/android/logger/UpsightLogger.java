package com.upsight.android.logger;

import java.util.EnumSet;

public interface UpsightLogger {
    public static final int MAX_LENGTH = 4000;

    public enum Level {
        VERBOSE,
        DEBUG,
        INFO,
        WARN,
        ERROR
    }

    void m197d(String str, String str2, Object... objArr);

    void m198d(String str, Throwable th, String str2, Object... objArr);

    void m199e(String str, String str2, Object... objArr);

    void m200e(String str, Throwable th, String str2, Object... objArr);

    void m201i(String str, String str2, Object... objArr);

    void m202i(String str, Throwable th, String str2, Object... objArr);

    void setLogLevel(String str, EnumSet<Level> enumSet);

    void m203v(String str, String str2, Object... objArr);

    void m204v(String str, Throwable th, String str2, Object... objArr);

    void m205w(String str, String str2, Object... objArr);

    void m206w(String str, Throwable th, String str2, Object... objArr);
}
