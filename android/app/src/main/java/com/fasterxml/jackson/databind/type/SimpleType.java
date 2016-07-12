package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;
import java.util.Map;

public class SimpleType extends TypeBase {
    private static final long serialVersionUID = 1;
    protected final String[] _typeNames;
    protected final JavaType[] _typeParameters;
    protected final Class<?> _typeParametersFor;

    protected SimpleType(Class<?> cls) {
        this(cls, null, null, null, null, false, null);
    }

    protected SimpleType(Class<?> cls, int i, Object obj, Object obj2, boolean z) {
        super(cls, i, obj, obj2, z);
        this._typeNames = null;
        this._typeParameters = null;
        this._typeParametersFor = cls;
    }

    @Deprecated
    protected SimpleType(Class<?> cls, String[] strArr, JavaType[] javaTypeArr, Object obj, Object obj2, boolean z) {
        this(cls, strArr, javaTypeArr, obj, obj2, z, null);
    }

    protected SimpleType(Class<?> cls, String[] strArr, JavaType[] javaTypeArr, Object obj, Object obj2, boolean z, Class<?> cls2) {
        super(cls, 0, obj, obj2, z);
        if (strArr == null || strArr.length == 0) {
            this._typeNames = null;
            this._typeParameters = null;
        } else {
            this._typeNames = strArr;
            this._typeParameters = javaTypeArr;
        }
        this._typeParametersFor = cls2;
    }

    public static SimpleType construct(Class<?> cls) {
        if (Map.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Map (class: " + cls.getName() + ")");
        } else if (Collection.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Can not construct SimpleType for a Collection (class: " + cls.getName() + ")");
        } else if (!cls.isArray()) {
            return new SimpleType(cls);
        } else {
            throw new IllegalArgumentException("Can not construct SimpleType for an array (class: " + cls.getName() + ")");
        }
    }

    public static SimpleType constructUnsafe(Class<?> cls) {
        return new SimpleType(cls, null, null, null, null, false, null);
    }

    protected JavaType _narrow(Class<?> cls) {
        return new SimpleType(cls, this._typeNames, this._typeParameters, this._valueHandler, this._typeHandler, this._asStatic, this._typeParametersFor);
    }

    protected String buildCanonicalName() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this._class.getName());
        if (this._typeParameters != null && this._typeParameters.length > 0) {
            stringBuilder.append('<');
            Object obj = 1;
            for (JavaType javaType : this._typeParameters) {
                if (obj != null) {
                    obj = null;
                } else {
                    stringBuilder.append(',');
                }
                stringBuilder.append(javaType.toCanonical());
            }
            stringBuilder.append('>');
        }
        return stringBuilder.toString();
    }

    public JavaType containedType(int i) {
        return (i < 0 || this._typeParameters == null || i >= this._typeParameters.length) ? null : this._typeParameters[i];
    }

    public int containedTypeCount() {
        return this._typeParameters == null ? 0 : this._typeParameters.length;
    }

    public String containedTypeName(int i) {
        return (i < 0 || this._typeNames == null || i >= this._typeNames.length) ? null : this._typeNames[i];
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            SimpleType simpleType = (SimpleType) obj;
            if (simpleType._class == this._class) {
                JavaType[] javaTypeArr = this._typeParameters;
                JavaType[] javaTypeArr2 = simpleType._typeParameters;
                if (javaTypeArr == null) {
                    if (javaTypeArr2 == null || javaTypeArr2.length == 0) {
                        return true;
                    }
                } else if (javaTypeArr2 != null && javaTypeArr.length == javaTypeArr2.length) {
                    int length = javaTypeArr.length;
                    int i = 0;
                    while (i < length) {
                        if (javaTypeArr[i].equals(javaTypeArr2[i])) {
                            i++;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public StringBuilder getErasedSignature(StringBuilder stringBuilder) {
        return TypeBase._classSignature(this._class, stringBuilder, true);
    }

    public StringBuilder getGenericSignature(StringBuilder stringBuilder) {
        int i = 0;
        TypeBase._classSignature(this._class, stringBuilder, false);
        if (this._typeParameters != null) {
            stringBuilder.append('<');
            JavaType[] javaTypeArr = this._typeParameters;
            int length = javaTypeArr.length;
            while (i < length) {
                stringBuilder = javaTypeArr[i].getGenericSignature(stringBuilder);
                i++;
            }
            stringBuilder.append('>');
        }
        stringBuilder.append(';');
        return stringBuilder;
    }

    public Class<?> getParameterSource() {
        return this._typeParametersFor;
    }

    public boolean isContainerType() {
        return false;
    }

    public JavaType narrowContentsBy(Class<?> cls) {
        throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(40);
        stringBuilder.append("[simple type, class ").append(buildCanonicalName()).append(']');
        return stringBuilder.toString();
    }

    public JavaType widenContentsBy(Class<?> cls) {
        throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
    }

    public JavaType withContentTypeHandler(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
    }

    public SimpleType withContentValueHandler(Object obj) {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenValueHandler()");
    }

    public SimpleType withStaticTyping() {
        return this._asStatic ? this : new SimpleType(this._class, this._typeNames, this._typeParameters, this._valueHandler, this._typeHandler, true, this._typeParametersFor);
    }

    public SimpleType withTypeHandler(Object obj) {
        return new SimpleType(this._class, this._typeNames, this._typeParameters, this._valueHandler, obj, this._asStatic, this._typeParametersFor);
    }

    public SimpleType withValueHandler(Object obj) {
        if (obj == this._valueHandler) {
            return this;
        }
        return new SimpleType(this._class, this._typeNames, this._typeParameters, obj, this._typeHandler, this._asStatic, this._typeParametersFor);
    }
}
