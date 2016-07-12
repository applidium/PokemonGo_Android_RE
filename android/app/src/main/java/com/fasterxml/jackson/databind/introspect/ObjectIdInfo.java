package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.annotation.SimpleObjectIdResolver;
import com.fasterxml.jackson.databind.PropertyName;

public class ObjectIdInfo {
    protected final boolean _alwaysAsId;
    protected final Class<? extends ObjectIdGenerator<?>> _generator;
    protected final PropertyName _propertyName;
    protected final Class<? extends ObjectIdResolver> _resolver;
    protected final Class<?> _scope;

    @Deprecated
    public ObjectIdInfo(PropertyName propertyName, Class<?> cls, Class<? extends ObjectIdGenerator<?>> cls2) {
        this(propertyName, (Class) cls, (Class) cls2, false);
    }

    public ObjectIdInfo(PropertyName propertyName, Class<?> cls, Class<? extends ObjectIdGenerator<?>> cls2, Class<? extends ObjectIdResolver> cls3) {
        this(propertyName, cls, cls2, false, cls3);
    }

    protected ObjectIdInfo(PropertyName propertyName, Class<?> cls, Class<? extends ObjectIdGenerator<?>> cls2, boolean z) {
        this(propertyName, cls, cls2, z, SimpleObjectIdResolver.class);
    }

    protected ObjectIdInfo(PropertyName propertyName, Class<?> cls, Class<? extends ObjectIdGenerator<?>> cls2, boolean z, Class<? extends ObjectIdResolver> cls3) {
        Class cls4;
        this._propertyName = propertyName;
        this._scope = cls;
        this._generator = cls2;
        this._alwaysAsId = z;
        if (cls3 == null) {
            cls4 = SimpleObjectIdResolver.class;
        }
        this._resolver = cls4;
    }

    @Deprecated
    public ObjectIdInfo(String str, Class<?> cls, Class<? extends ObjectIdGenerator<?>> cls2) {
        this(new PropertyName(str), (Class) cls, (Class) cls2, false);
    }

    public boolean getAlwaysAsId() {
        return this._alwaysAsId;
    }

    public Class<? extends ObjectIdGenerator<?>> getGeneratorType() {
        return this._generator;
    }

    public PropertyName getPropertyName() {
        return this._propertyName;
    }

    public Class<? extends ObjectIdResolver> getResolverType() {
        return this._resolver;
    }

    public Class<?> getScope() {
        return this._scope;
    }

    public String toString() {
        return "ObjectIdInfo: propName=" + this._propertyName + ", scope=" + (this._scope == null ? "null" : this._scope.getName()) + ", generatorType=" + (this._generator == null ? "null" : this._generator.getName()) + ", alwaysAsId=" + this._alwaysAsId;
    }

    public ObjectIdInfo withAlwaysAsId(boolean z) {
        if (this._alwaysAsId == z) {
            return this;
        }
        return new ObjectIdInfo(this._propertyName, this._scope, this._generator, z, this._resolver);
    }
}
