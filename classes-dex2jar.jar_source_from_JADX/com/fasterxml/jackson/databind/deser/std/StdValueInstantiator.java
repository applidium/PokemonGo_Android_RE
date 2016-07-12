package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.io.IOException;
import java.io.Serializable;

@JacksonStdImpl
public class StdValueInstantiator extends ValueInstantiator implements Serializable {
    private static final long serialVersionUID = 1;
    protected SettableBeanProperty[] _constructorArguments;
    protected AnnotatedWithParams _defaultCreator;
    protected SettableBeanProperty[] _delegateArguments;
    protected AnnotatedWithParams _delegateCreator;
    protected JavaType _delegateType;
    protected AnnotatedWithParams _fromBooleanCreator;
    protected AnnotatedWithParams _fromDoubleCreator;
    protected AnnotatedWithParams _fromIntCreator;
    protected AnnotatedWithParams _fromLongCreator;
    protected AnnotatedWithParams _fromStringCreator;
    protected AnnotatedParameter _incompleteParameter;
    protected final String _valueTypeDesc;
    protected AnnotatedWithParams _withArgsCreator;

    public StdValueInstantiator(DeserializationConfig deserializationConfig, JavaType javaType) {
        this._valueTypeDesc = javaType == null ? "UNKNOWN TYPE" : javaType.toString();
    }

    public StdValueInstantiator(DeserializationConfig deserializationConfig, Class<?> cls) {
        this._valueTypeDesc = cls == null ? "UNKNOWN TYPE" : cls.getName();
    }

    protected StdValueInstantiator(StdValueInstantiator stdValueInstantiator) {
        this._valueTypeDesc = stdValueInstantiator._valueTypeDesc;
        this._defaultCreator = stdValueInstantiator._defaultCreator;
        this._constructorArguments = stdValueInstantiator._constructorArguments;
        this._withArgsCreator = stdValueInstantiator._withArgsCreator;
        this._delegateType = stdValueInstantiator._delegateType;
        this._delegateCreator = stdValueInstantiator._delegateCreator;
        this._delegateArguments = stdValueInstantiator._delegateArguments;
        this._fromStringCreator = stdValueInstantiator._fromStringCreator;
        this._fromIntCreator = stdValueInstantiator._fromIntCreator;
        this._fromLongCreator = stdValueInstantiator._fromLongCreator;
        this._fromDoubleCreator = stdValueInstantiator._fromDoubleCreator;
        this._fromBooleanCreator = stdValueInstantiator._fromBooleanCreator;
    }

    public boolean canCreateFromBoolean() {
        return this._fromBooleanCreator != null;
    }

    public boolean canCreateFromDouble() {
        return this._fromDoubleCreator != null;
    }

    public boolean canCreateFromInt() {
        return this._fromIntCreator != null;
    }

    public boolean canCreateFromLong() {
        return this._fromLongCreator != null;
    }

    public boolean canCreateFromObjectWith() {
        return this._withArgsCreator != null;
    }

    public boolean canCreateFromString() {
        return this._fromStringCreator != null;
    }

    public boolean canCreateUsingDefault() {
        return this._defaultCreator != null;
    }

    public boolean canCreateUsingDelegate() {
        return this._delegateType != null;
    }

    public void configureFromBooleanCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromBooleanCreator = annotatedWithParams;
    }

    public void configureFromDoubleCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromDoubleCreator = annotatedWithParams;
    }

    public void configureFromIntCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromIntCreator = annotatedWithParams;
    }

    public void configureFromLongCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromLongCreator = annotatedWithParams;
    }

    public void configureFromObjectSettings(AnnotatedWithParams annotatedWithParams, AnnotatedWithParams annotatedWithParams2, JavaType javaType, SettableBeanProperty[] settableBeanPropertyArr, AnnotatedWithParams annotatedWithParams3, SettableBeanProperty[] settableBeanPropertyArr2) {
        this._defaultCreator = annotatedWithParams;
        this._delegateCreator = annotatedWithParams2;
        this._delegateType = javaType;
        this._delegateArguments = settableBeanPropertyArr;
        this._withArgsCreator = annotatedWithParams3;
        this._constructorArguments = settableBeanPropertyArr2;
    }

    public void configureFromStringCreator(AnnotatedWithParams annotatedWithParams) {
        this._fromStringCreator = annotatedWithParams;
    }

    public void configureIncompleteParameter(AnnotatedParameter annotatedParameter) {
        this._incompleteParameter = annotatedParameter;
    }

    public Object createFromBoolean(DeserializationContext deserializationContext, boolean z) throws IOException {
        try {
            if (this._fromBooleanCreator != null) {
                return this._fromBooleanCreator.call1(Boolean.valueOf(z));
            }
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Boolean value (%s); no single-boolean/Boolean-arg constructor/factory method", getValueTypeDesc(), Boolean.valueOf(z));
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public Object createFromDouble(DeserializationContext deserializationContext, double d) throws IOException {
        try {
            if (this._fromDoubleCreator != null) {
                return this._fromDoubleCreator.call1(Double.valueOf(d));
            }
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Floating-point number (%s); no one-double/Double-arg constructor/factory method", getValueTypeDesc(), Double.valueOf(d));
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public Object createFromInt(DeserializationContext deserializationContext, int i) throws IOException {
        try {
            if (this._fromIntCreator != null) {
                return this._fromIntCreator.call1(Integer.valueOf(i));
            }
            if (this._fromLongCreator != null) {
                return this._fromLongCreator.call1(Long.valueOf((long) i));
            }
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Integral number (%s); no single-int-arg constructor/factory method", getValueTypeDesc(), Integer.valueOf(i));
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public Object createFromLong(DeserializationContext deserializationContext, long j) throws IOException {
        try {
            if (this._fromLongCreator != null) {
                return this._fromLongCreator.call1(Long.valueOf(j));
            }
            throw deserializationContext.mappingException("Can not instantiate value of type %s from Long integral number (%s); no single-long-arg constructor/factory method", getValueTypeDesc(), Long.valueOf(j));
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        if (this._withArgsCreator == null) {
            throw new IllegalStateException("No with-args constructor for " + getValueTypeDesc());
        }
        try {
            return this._withArgsCreator.call(objArr);
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
        if (this._fromStringCreator == null) {
            return _createFromStringFallbacks(deserializationContext, str);
        }
        try {
            return this._fromStringCreator.call1(str);
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
        if (this._defaultCreator == null) {
            throw new IllegalStateException("No default constructor for " + getValueTypeDesc());
        }
        try {
            return this._defaultCreator.call();
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        if (this._delegateCreator == null) {
            throw new IllegalStateException("No delegate constructor for " + getValueTypeDesc());
        }
        try {
            if (this._delegateArguments == null) {
                return this._delegateCreator.call1(obj);
            }
            int length = this._delegateArguments.length;
            Object[] objArr = new Object[length];
            for (int i = 0; i < length; i++) {
                BeanProperty beanProperty = this._delegateArguments[i];
                if (beanProperty == null) {
                    objArr[i] = obj;
                } else {
                    objArr[i] = deserializationContext.findInjectableValue(beanProperty.getInjectableValueId(), beanProperty, null);
                }
            }
            return this._delegateCreator.call(objArr);
        } catch (Throwable e) {
            throw wrapException(e);
        } catch (Throwable e2) {
            throw wrapException(e2);
        }
    }

    public AnnotatedWithParams getDefaultCreator() {
        return this._defaultCreator;
    }

    public AnnotatedWithParams getDelegateCreator() {
        return this._delegateCreator;
    }

    public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
        return this._delegateType;
    }

    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        return this._constructorArguments;
    }

    public AnnotatedParameter getIncompleteParameter() {
        return this._incompleteParameter;
    }

    public String getValueTypeDesc() {
        return this._valueTypeDesc;
    }

    public AnnotatedWithParams getWithArgsCreator() {
        return this._withArgsCreator;
    }

    protected JsonMappingException wrapException(Throwable th) {
        Throwable th2 = th;
        while (th2.getCause() != null) {
            th2 = th2.getCause();
        }
        return th2 instanceof JsonMappingException ? (JsonMappingException) th2 : new JsonMappingException("Instantiation of " + getValueTypeDesc() + " value failed: " + th2.getMessage(), th2);
    }
}
