package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.type.ResolvedType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

public abstract class JavaType extends ResolvedType implements Serializable, Type {
    private static final long serialVersionUID = 1;
    protected final boolean _asStatic;
    protected final Class<?> _class;
    protected final int _hash;
    protected final Object _typeHandler;
    protected final Object _valueHandler;

    protected JavaType(Class<?> cls, int i, Object obj, Object obj2, boolean z) {
        this._class = cls;
        this._hash = cls.getName().hashCode() + i;
        this._valueHandler = obj;
        this._typeHandler = obj2;
        this._asStatic = z;
    }

    protected void _assertSubclass(Class<?> cls, Class<?> cls2) {
        if (!this._class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Class " + cls.getName() + " is not assignable to " + this._class.getName());
        }
    }

    protected abstract JavaType _narrow(Class<?> cls);

    protected JavaType _widen(Class<?> cls) {
        return _narrow(cls);
    }

    public JavaType containedType(int i) {
        return null;
    }

    public int containedTypeCount() {
        return 0;
    }

    public String containedTypeName(int i) {
        return null;
    }

    public JavaType containedTypeOrUnknown(int i) {
        JavaType containedType = containedType(i);
        return containedType == null ? TypeFactory.unknownType() : containedType;
    }

    public abstract boolean equals(Object obj);

    public JavaType forcedNarrowBy(Class<?> cls) {
        if (cls == this._class) {
            return this;
        }
        JavaType _narrow = _narrow(cls);
        if (this._valueHandler != _narrow.getValueHandler()) {
            _narrow = _narrow.withValueHandler(this._valueHandler);
        }
        return this._typeHandler != _narrow.getTypeHandler() ? _narrow.withTypeHandler(this._typeHandler) : _narrow;
    }

    public JavaType getContentType() {
        return null;
    }

    public String getErasedSignature() {
        StringBuilder stringBuilder = new StringBuilder(40);
        getErasedSignature(stringBuilder);
        return stringBuilder.toString();
    }

    public abstract StringBuilder getErasedSignature(StringBuilder stringBuilder);

    public String getGenericSignature() {
        StringBuilder stringBuilder = new StringBuilder(40);
        getGenericSignature(stringBuilder);
        return stringBuilder.toString();
    }

    public abstract StringBuilder getGenericSignature(StringBuilder stringBuilder);

    public JavaType getKeyType() {
        return null;
    }

    public abstract Class<?> getParameterSource();

    public final Class<?> getRawClass() {
        return this._class;
    }

    public JavaType getReferencedType() {
        return null;
    }

    public <T> T getTypeHandler() {
        return this._typeHandler;
    }

    public <T> T getValueHandler() {
        return this._valueHandler;
    }

    public boolean hasGenericTypes() {
        return containedTypeCount() > 0;
    }

    public final boolean hasRawClass(Class<?> cls) {
        return this._class == cls;
    }

    public boolean hasValueHandler() {
        return this._valueHandler != null;
    }

    public final int hashCode() {
        return this._hash;
    }

    public boolean isAbstract() {
        return Modifier.isAbstract(this._class.getModifiers());
    }

    public boolean isArrayType() {
        return false;
    }

    public boolean isCollectionLikeType() {
        return false;
    }

    public boolean isConcrete() {
        return (this._class.getModifiers() & 1536) == 0 ? true : this._class.isPrimitive();
    }

    public abstract boolean isContainerType();

    public final boolean isEnumType() {
        return this._class.isEnum();
    }

    public final boolean isFinal() {
        return Modifier.isFinal(this._class.getModifiers());
    }

    public final boolean isInterface() {
        return this._class.isInterface();
    }

    public final boolean isJavaLangObject() {
        return this._class == Object.class;
    }

    public boolean isMapLikeType() {
        return false;
    }

    public final boolean isPrimitive() {
        return this._class.isPrimitive();
    }

    public boolean isThrowable() {
        return Throwable.class.isAssignableFrom(this._class);
    }

    public final boolean isTypeOrSubTypeOf(Class<?> cls) {
        return this._class == cls || cls.isAssignableFrom(this._class);
    }

    public JavaType narrowBy(Class<?> cls) {
        if (cls == this._class) {
            return this;
        }
        _assertSubclass(cls, this._class);
        JavaType _narrow = _narrow(cls);
        if (this._valueHandler != _narrow.getValueHandler()) {
            _narrow = _narrow.withValueHandler(this._valueHandler);
        }
        return this._typeHandler != _narrow.getTypeHandler() ? _narrow.withTypeHandler(this._typeHandler) : _narrow;
    }

    public abstract JavaType narrowContentsBy(Class<?> cls);

    public abstract String toString();

    public final boolean useStaticType() {
        return this._asStatic;
    }

    public JavaType widenBy(Class<?> cls) {
        if (cls == this._class) {
            return this;
        }
        _assertSubclass(this._class, cls);
        return _widen(cls);
    }

    public abstract JavaType widenContentsBy(Class<?> cls);

    public abstract JavaType withContentTypeHandler(Object obj);

    public abstract JavaType withContentValueHandler(Object obj);

    public abstract JavaType withStaticTyping();

    public abstract JavaType withTypeHandler(Object obj);

    public abstract JavaType withValueHandler(Object obj);
}
