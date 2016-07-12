package com.fasterxml.jackson.databind.util;

import java.util.IdentityHashMap;

public class ObjectIdMap extends IdentityHashMap<Object, Object> {
    public ObjectIdMap() {
        super(16);
    }

    public Object findId(Object obj) {
        return get(obj);
    }

    public void insertId(Object obj, Object obj2) {
        put(obj, obj2);
    }
}
