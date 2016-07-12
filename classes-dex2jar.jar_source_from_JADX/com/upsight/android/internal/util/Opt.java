package com.upsight.android.internal.util;

public class Opt<T> {
    private T mObject;

    private Opt(T t) {
        this.mObject = t;
    }

    public static <T> Opt<T> absent() {
        return new Opt(null);
    }

    public static <T> Opt<T> from(T t) {
        return new Opt(t);
    }

    public T get() {
        return this.mObject;
    }

    public boolean isPresent() {
        return this.mObject != null;
    }
}
