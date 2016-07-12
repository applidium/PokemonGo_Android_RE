package com.unity3d.player;

import android.os.Build;
import java.lang.Thread.UncaughtExceptionHandler;

/* renamed from: com.unity3d.player.u */
final class C0866u implements UncaughtExceptionHandler {
    private volatile UncaughtExceptionHandler f233a;

    C0866u() {
    }

    final boolean m182a() {
        boolean z;
        synchronized (this) {
            C0866u defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler == this) {
                z = false;
            } else {
                this.f233a = defaultUncaughtExceptionHandler;
                Thread.setDefaultUncaughtExceptionHandler(this);
                z = true;
            }
        }
        return z;
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            try {
                Throwable error = new Error(String.format("FATAL EXCEPTION [%s]\n", new Object[]{thread.getName()}) + String.format("Unity version     : %s\n", new Object[]{"5.3.5f1"}) + String.format("Device model      : %s %s\n", new Object[]{Build.MANUFACTURER, Build.MODEL}) + String.format("Device fingerprint: %s\n", new Object[]{Build.FINGERPRINT}));
                error.setStackTrace(new StackTraceElement[0]);
                error.initCause(th);
                this.f233a.uncaughtException(thread, error);
            } catch (Throwable th2) {
                this.f233a.uncaughtException(thread, th);
            }
        }
    }
}
