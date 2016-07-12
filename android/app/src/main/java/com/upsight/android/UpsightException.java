package com.upsight.android;

import java.util.Locale;

public final class UpsightException extends Exception {
    public UpsightException(String str, Object... objArr) {
        super(String.format(Locale.getDefault(), str, objArr));
    }

    public UpsightException(Throwable th) {
        super(th);
    }

    public UpsightException(Throwable th, String str, Object... objArr) {
        super(String.format(Locale.getDefault(), str, objArr), th);
    }
}
