package com.upsight.android.managedvariables.internal.type;

import java.util.Observable;

public abstract class ManagedVariable<T> extends Observable {
    private T mDefaultValue;
    private String mTag;
    private T mValue;

    protected ManagedVariable(String str, T t, T t2) {
        this.mTag = str;
        this.mDefaultValue = t;
        if (t2 == null) {
            t2 = t;
        }
        this.mValue = r3;
    }

    public T get() {
        T t;
        synchronized (this) {
            t = this.mValue;
        }
        return t;
    }

    public String getTag() {
        return this.mTag;
    }

    void set(T t) {
        synchronized (this) {
            if (t != this.mValue) {
                if (t != null) {
                    this.mValue = t;
                } else {
                    this.mValue = this.mDefaultValue;
                }
                setChanged();
                notifyObservers();
            }
        }
    }
}
