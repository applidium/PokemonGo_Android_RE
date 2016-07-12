package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;

public final class CollectionType extends CollectionLikeType {
    private static final long serialVersionUID = 1;

    private CollectionType(Class<?> cls, JavaType javaType, Object obj, Object obj2, boolean z) {
        super(cls, javaType, obj, obj2, z);
    }

    public static CollectionType construct(Class<?> cls, JavaType javaType) {
        return new CollectionType(cls, javaType, null, null, false);
    }

    protected JavaType _narrow(Class<?> cls) {
        return new CollectionType(cls, this._elementType, null, null, this._asStatic);
    }

    public Class<?> getParameterSource() {
        return Collection.class;
    }

    public JavaType narrowContentsBy(Class<?> cls) {
        return cls == this._elementType.getRawClass() ? this : new CollectionType(this._class, this._elementType.narrowBy(cls), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public String toString() {
        return "[collection type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }

    public JavaType widenContentsBy(Class<?> cls) {
        return cls == this._elementType.getRawClass() ? this : new CollectionType(this._class, this._elementType.widenBy(cls), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public CollectionType withContentTypeHandler(Object obj) {
        return new CollectionType(this._class, this._elementType.withTypeHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public CollectionType withContentValueHandler(Object obj) {
        return new CollectionType(this._class, this._elementType.withValueHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public CollectionType withStaticTyping() {
        return this._asStatic ? this : new CollectionType(this._class, this._elementType.withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    public CollectionType withTypeHandler(Object obj) {
        return new CollectionType(this._class, this._elementType, this._valueHandler, obj, this._asStatic);
    }

    public CollectionType withValueHandler(Object obj) {
        return new CollectionType(this._class, this._elementType, obj, this._typeHandler, this._asStatic);
    }
}
