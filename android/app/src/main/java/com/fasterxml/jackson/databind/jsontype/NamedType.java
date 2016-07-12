package com.fasterxml.jackson.databind.jsontype;

import java.io.Serializable;

public final class NamedType implements Serializable {
    private static final long serialVersionUID = 1;
    protected final Class<?> _class;
    protected final int _hashCode;
    protected String _name;

    public NamedType(Class<?> cls) {
        this(cls, null);
    }

    public NamedType(Class<?> cls, String str) {
        this._class = cls;
        this._hashCode = cls.getName().hashCode();
        setName(str);
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            if (this._class != ((NamedType) obj)._class) {
                return false;
            }
        }
        return true;
    }

    public String getName() {
        return this._name;
    }

    public Class<?> getType() {
        return this._class;
    }

    public boolean hasName() {
        return this._name != null;
    }

    public int hashCode() {
        return this._hashCode;
    }

    public void setName(String str) {
        if (str == null || str.length() == 0) {
            str = null;
        }
        this._name = str;
    }

    public String toString() {
        return "[NamedType, class " + this._class.getName() + ", name: " + (this._name == null ? "null" : "'" + this._name + "'") + "]";
    }
}
