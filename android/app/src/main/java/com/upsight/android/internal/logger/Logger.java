package com.upsight.android.internal.logger;

import android.text.TextUtils;
import com.upsight.android.UpsightException;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.logger.UpsightLogger.Level;
import com.upsight.android.persistence.UpsightDataStore;
import com.upsight.android.persistence.UpsightDataStoreListener;
import com.upsight.android.persistence.UpsightSubscription;
import com.upsight.android.persistence.annotation.Created;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

public final class Logger implements UpsightLogger {
    private final UpsightDataStore mDataStore;
    private final LogWriter mLogWriter;
    private final Map<String, UpsightSubscription> mSubscriptionsMap;

    /* renamed from: com.upsight.android.internal.logger.Logger.1 */
    class C09221 implements UpsightDataStoreListener<LogMessage> {
        C09221() {
        }

        public void onFailure(UpsightException upsightException) {
        }

        public void onSuccess(LogMessage logMessage) {
            Logger.this.mDataStore.remove(logMessage);
        }
    }

    public static final class LogSubscriber {
        private final EnumSet<Level> mLevels;
        private final Pattern mTag;
        private final LogWriter mWriter;

        public LogSubscriber(String str, EnumSet<Level> enumSet, LogWriter logWriter) {
            this.mTag = Pattern.compile(str);
            this.mLevels = enumSet;
            this.mWriter = logWriter;
        }

        @Created
        public void onLogMessageCreated(LogMessage logMessage) {
            if (this.mTag.matcher(logMessage.getTag()).matches() && this.mLevels.contains(logMessage.getLevel())) {
                this.mWriter.write(logMessage.getTag(), logMessage.getLevel(), logMessage.getMessage());
            }
        }
    }

    Logger(UpsightDataStore upsightDataStore, LogWriter logWriter) {
        this.mSubscriptionsMap = new ConcurrentHashMap();
        this.mDataStore = upsightDataStore;
        this.mLogWriter = logWriter;
    }

    public static Logger create(UpsightDataStore upsightDataStore, LogWriter logWriter) {
        return new Logger(upsightDataStore, logWriter);
    }

    private static String formatString(String str, Object... objArr) {
        return objArr.length == 0 ? str : String.format(str, objArr);
    }

    private void log(Level level, String str, Throwable th, String str2, Object... objArr) {
        Writer stringWriter = new StringWriter();
        if (th != null) {
            th.printStackTrace(new PrintWriter(stringWriter));
        }
        this.mDataStore.store(new LogMessage(str, level, formatString(str2, objArr), stringWriter.getBuffer().toString()), new C09221());
    }

    public void m217d(String str, String str2, Object... objArr) {
        log(Level.DEBUG, str, null, str2, objArr);
    }

    public void m218d(String str, Throwable th, String str2, Object... objArr) {
        log(Level.DEBUG, str, th, str2, objArr);
    }

    public void m219e(String str, String str2, Object... objArr) {
        log(Level.ERROR, str, null, str2, objArr);
    }

    public void m220e(String str, Throwable th, String str2, Object... objArr) {
        log(Level.ERROR, str, th, str2, objArr);
    }

    public void m221i(String str, String str2, Object... objArr) {
        log(Level.INFO, str, null, str2, objArr);
    }

    public void m222i(String str, Throwable th, String str2, Object... objArr) {
        log(Level.INFO, str, th, str2, objArr);
    }

    public void setLogLevel(String str, EnumSet<Level> enumSet) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Log tag can not be null or empty.");
        }
        UpsightSubscription upsightSubscription = (UpsightSubscription) this.mSubscriptionsMap.put(str, this.mDataStore.subscribe(new LogSubscriber(str, enumSet, this.mLogWriter)));
        if (upsightSubscription != null) {
            upsightSubscription.unsubscribe();
        }
    }

    public void m223v(String str, String str2, Object... objArr) {
        log(Level.VERBOSE, str, null, str2, objArr);
    }

    public void m224v(String str, Throwable th, String str2, Object... objArr) {
        log(Level.VERBOSE, str, th, str2, objArr);
    }

    public void m225w(String str, String str2, Object... objArr) {
        log(Level.WARN, str, null, str2, objArr);
    }

    public void m226w(String str, Throwable th, String str2, Object... objArr) {
        log(Level.WARN, str, th, str2, objArr);
    }
}
