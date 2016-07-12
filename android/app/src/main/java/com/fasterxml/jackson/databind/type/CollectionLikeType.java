package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;

public class CollectionLikeType extends TypeBase {
    private static final long serialVersionUID = 1;
    protected final JavaType _elementType;

    protected CollectionLikeType(Class<?> cls, JavaType javaType, Object obj, Object obj2, boolean z) {
        super(cls, javaType.hashCode(), obj, obj2, z);
        this._elementType = javaType;
    }

    public static CollectionLikeType construct(Class<?> cls, JavaType javaType) {
        return new CollectionLikeType(cls, javaType, null, null, false);
    }

    protected JavaType _narrow(Class<?> cls) {
        return new CollectionLikeType(cls, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    protected String buildCanonicalName() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this._class.getName());
        if (this._elementType != null) {
            stringBuilder.append('<');
            stringBuilder.append(this._elementType.toCanonical());
            stringBuilder.append('>');
        }
        return stringBuilder.toString();
    }

    public JavaType containedType(int i) {
        return i == 0 ? this._elementType : null;
    }

    public int containedTypeCount() {
        return 1;
    }

    public String containedTypeName(int i) {
        return i == 0 ? "E" : null;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            CollectionLikeType collectionLikeType = (CollectionLikeType) obj;
            if (this._class != collectionLikeType._class) {
                return false;
            }
            if (!this._elementType.equals(collectionLikeType._elementType)) {
                return false;
            }
        }
        return true;
    }

    public JavaType getContentType() {
        return this._elementType;
    }

    public StringBuilder getErasedSignature(StringBuilder stringBuilder) {
        return TypeBase._classSignature(this._class, stringBuilder, true);
    }

    public StringBuilder getGenericSignature(StringBuilder stringBuilder) {
        TypeBase._classSignature(this._class, stringBuilder, false);
        stringBuilder.append('<');
        this._elementType.getGenericSignature(stringBuilder);
        stringBuilder.append(">;");
        return stringBuilder;
    }

    public Class<?> getParameterSource() {
        return null;
    }

    public boolean isCollectionLikeType() {
        return true;
    }

    public boolean isContainerType() {
        return true;
    }

    public boolean isTrueCollectionType() {
        return Collection.class.isAssignableFrom(this._class);
    }

    public JavaType narrowContentsBy(Class<?> cls) {
        return cls == this._elementType.getRawClass() ? this : new CollectionLikeType(this._class, this._elementType.narrowBy(cls), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public String toString() {
        return "[collection-like type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }

    public JavaType widenContentsBy(Class<?> cls) {
        return cls == this._elementType.getRawClass() ? this : new CollectionLikeType(this._class, this._elementType.widenBy(cls), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public CollectionLikeType withContentTypeHandler(Object obj) {
        return new CollectionLikeType(this._class, this._elementType.withTypeHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public CollectionLikeType withContentValueHandler(Object obj) {
        return new CollectionLikeType(this._class, this._elementType.withValueHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    public CollectionLikeType withStaticTyping() {
        return this._asStatic ? this : new CollectionLikeType(this._class, this._elementType.withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    public CollectionLikeType withTypeHandler(Object obj) {
        return new CollectionLikeType(this._class, this._elementType, this._valueHandler, obj, this._asStatic);
    }

    public CollectionLikeType withValueHandler(Object obj) {
        return new CollectionLikeType(this._class, this._elementType, obj, this._typeHandler, this._asStatic);
    }
}
