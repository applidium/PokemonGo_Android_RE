package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonLocation;

public class UnresolvedId {
    private final Object _id;
    private final JsonLocation _location;
    private final Class<?> _type;

    public UnresolvedId(Object obj, Class<?> cls, JsonLocation jsonLocation) {
        this._id = obj;
        this._type = cls;
        this._location = jsonLocation;
    }

    public Object getId() {
        return this._id;
    }

    public JsonLocation getLocation() {
        return this._location;
    }

    public Class<?> getType() {
        return this._type;
    }

    public String toString() {
        Object obj = this._id;
        String name = this._type == null ? "NULL" : this._type.getName();
        return String.format("Object id [%s] (for %s) at %s", new Object[]{obj, name, this._location});
    }
}
