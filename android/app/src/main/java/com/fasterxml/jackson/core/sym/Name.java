package com.fasterxml.jackson.core.sym;

public abstract class Name {
    protected final int _hashCode;
    protected final String _name;

    protected Name(String str, int i) {
        this._name = str;
        this._hashCode = i;
    }

    public abstract boolean equals(int i);

    public abstract boolean equals(int i, int i2);

    public abstract boolean equals(int i, int i2, int i3);

    public boolean equals(Object obj) {
        return obj == this;
    }

    public abstract boolean equals(int[] iArr, int i);

    public String getName() {
        return this._name;
    }

    public final int hashCode() {
        return this._hashCode;
    }

    public String toString() {
        return this._name;
    }
}
