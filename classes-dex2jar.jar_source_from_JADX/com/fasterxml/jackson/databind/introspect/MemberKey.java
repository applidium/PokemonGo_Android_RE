package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import spacemadness.com.lunarconsole.BuildConfig;

public final class MemberKey {
    static final Class<?>[] NO_CLASSES;
    final Class<?>[] _argTypes;
    final String _name;

    static {
        NO_CLASSES = new Class[0];
    }

    public MemberKey(String str, Class<?>[] clsArr) {
        Class[] clsArr2;
        this._name = str;
        if (clsArr == null) {
            clsArr2 = NO_CLASSES;
        }
        this._argTypes = clsArr2;
    }

    public MemberKey(Constructor<?> constructor) {
        this(BuildConfig.FLAVOR, constructor.getParameterTypes());
    }

    public MemberKey(Method method) {
        this(method.getName(), method.getParameterTypes());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj.getClass() != getClass()) {
            return false;
        }
        MemberKey memberKey = (MemberKey) obj;
        if (!this._name.equals(memberKey._name)) {
            return false;
        }
        Class[] clsArr = memberKey._argTypes;
        int length = this._argTypes.length;
        if (clsArr.length != length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (clsArr[i] != this._argTypes[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this._name.hashCode() + this._argTypes.length;
    }

    public String toString() {
        return this._name + "(" + this._argTypes.length + "-args)";
    }
}
