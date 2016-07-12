package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;

public final class AnnotatedMethodMap implements Iterable<AnnotatedMethod> {
    protected LinkedHashMap<MemberKey, AnnotatedMethod> _methods;

    public void add(AnnotatedMethod annotatedMethod) {
        if (this._methods == null) {
            this._methods = new LinkedHashMap();
        }
        this._methods.put(new MemberKey(annotatedMethod.getAnnotated()), annotatedMethod);
    }

    public AnnotatedMethod find(String str, Class<?>[] clsArr) {
        return this._methods == null ? null : (AnnotatedMethod) this._methods.get(new MemberKey(str, clsArr));
    }

    public AnnotatedMethod find(Method method) {
        return this._methods == null ? null : (AnnotatedMethod) this._methods.get(new MemberKey(method));
    }

    public boolean isEmpty() {
        return this._methods == null || this._methods.size() == 0;
    }

    public Iterator<AnnotatedMethod> iterator() {
        return this._methods != null ? this._methods.values().iterator() : Collections.emptyList().iterator();
    }

    public AnnotatedMethod remove(AnnotatedMethod annotatedMethod) {
        return remove(annotatedMethod.getAnnotated());
    }

    public AnnotatedMethod remove(Method method) {
        return this._methods != null ? (AnnotatedMethod) this._methods.remove(new MemberKey(method)) : null;
    }

    public int size() {
        return this._methods == null ? 0 : this._methods.size();
    }
}
