package spacemadness.com.lunarconsole.debug;

import spacemadness.com.lunarconsole.utils.StringUtils;

public class Log {
    private static final String TAG = "LunarConsole";
    private static final LogLevel logLevel;

    public enum LogLevel {
        Crit(6),
        Error(6),
        Warn(5),
        Info(4),
        Debug(3),
        None(-1);
        
        private int androidLogPriority;

        private LogLevel(int i) {
            this.androidLogPriority = i;
        }

        public int getAndroidLogPriority() {
            return this.androidLogPriority;
        }
    }

    static {
        logLevel = LogLevel.Info;
    }

    public static void m859d(String str, Object... objArr) {
        m860d(null, str, objArr);
    }

    public static void m860d(Tag tag, String str, Object... objArr) {
        log(LogLevel.Debug, tag, str, objArr);
    }

    public static void m861e(String str, Object... objArr) {
        m863e((Tag) null, str, objArr);
    }

    public static void m862e(Throwable th, String str, Object... objArr) {
        m861e(str, objArr);
        if (th != null) {
            th.printStackTrace();
        }
    }

    public static void m863e(Tag tag, String str, Object... objArr) {
        log(LogLevel.Error, tag, str, objArr);
    }

    public static void m864i(String str, Object... objArr) {
        m865i(null, str, objArr);
    }

    public static void m865i(Tag tag, String str, Object... objArr) {
        log(LogLevel.Info, tag, str, objArr);
    }

    private static void log(LogLevel logLevel, Tag tag, String str, Object... objArr) {
        if (!shouldLogLevel(logLevel) || !shouldLogTag(tag)) {
            return;
        }
        if (str != null) {
            logHelper(logLevel, str, objArr);
        } else {
            logHelper(logLevel, "null", new Object[0]);
        }
    }

    private static void logHelper(LogLevel logLevel, String str, Object... objArr) {
        android.util.Log.println(logLevel.getAndroidLogPriority(), "LunarConsole/" + Thread.currentThread().getName(), StringUtils.TryFormat(str, objArr));
    }

    private static boolean shouldLogLevel(LogLevel logLevel) {
        return logLevel.ordinal() <= logLevel.ordinal();
    }

    private static boolean shouldLogTag(Tag tag) {
        return tag == null || tag.enabled;
    }

    public static void m866w(String str, Object... objArr) {
        m867w(null, str, objArr);
    }

    public static void m867w(Tag tag, String str, Object... objArr) {
        log(LogLevel.Warn, tag, str, objArr);
    }
}
