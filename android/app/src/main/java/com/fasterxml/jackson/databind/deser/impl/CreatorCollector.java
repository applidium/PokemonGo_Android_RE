package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.StdValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.squareup.otto.Bus;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class CreatorCollector {
    protected static final int C_BOOLEAN = 5;
    protected static final int C_DEFAULT = 0;
    protected static final int C_DELEGATE = 6;
    protected static final int C_DOUBLE = 4;
    protected static final int C_INT = 2;
    protected static final int C_LONG = 3;
    protected static final int C_PROPS = 7;
    protected static final int C_STRING = 1;
    protected static final String[] TYPE_DESCS;
    protected final BeanDescription _beanDesc;
    protected final boolean _canFixAccess;
    protected final AnnotatedWithParams[] _creators;
    protected SettableBeanProperty[] _delegateArgs;
    protected int _explicitCreators;
    protected boolean _hasNonDefaultCreator;
    protected AnnotatedParameter _incompleteParameter;
    protected SettableBeanProperty[] _propertyBasedArgs;

    protected static final class Vanilla extends ValueInstantiator implements Serializable {
        public static final int TYPE_COLLECTION = 1;
        public static final int TYPE_HASH_MAP = 3;
        public static final int TYPE_MAP = 2;
        private static final long serialVersionUID = 1;
        private final int _type;

        public Vanilla(int i) {
            this._type = i;
        }

        public boolean canCreateUsingDefault() {
            return true;
        }

        public boolean canInstantiate() {
            return true;
        }

        public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
            switch (this._type) {
                case TYPE_COLLECTION /*1*/:
                    return new ArrayList();
                case TYPE_MAP /*2*/:
                    return new LinkedHashMap();
                case TYPE_HASH_MAP /*3*/:
                    return new HashMap();
                default:
                    throw new IllegalStateException("Unknown type " + this._type);
            }
        }

        public String getValueTypeDesc() {
            switch (this._type) {
                case TYPE_COLLECTION /*1*/:
                    return ArrayList.class.getName();
                case TYPE_MAP /*2*/:
                    return LinkedHashMap.class.getName();
                case TYPE_HASH_MAP /*3*/:
                    return HashMap.class.getName();
                default:
                    return Object.class.getName();
            }
        }
    }

    static {
        TYPE_DESCS = new String[]{Bus.DEFAULT_IDENTIFIER, "String", "int", "long", "double", "boolean", "delegate", "property-based"};
    }

    public CreatorCollector(BeanDescription beanDescription, boolean z) {
        this._creators = new AnnotatedWithParams[8];
        this._explicitCreators = C_DEFAULT;
        this._hasNonDefaultCreator = false;
        this._beanDesc = beanDescription;
        this._canFixAccess = z;
    }

    private <T extends AnnotatedMember> T _fixAccess(T t) {
        if (t != null && this._canFixAccess) {
            ClassUtil.checkAndFixAccess((Member) t.getAnnotated());
        }
        return t;
    }

    @Deprecated
    public void addBooleanCreator(AnnotatedWithParams annotatedWithParams) {
        addBooleanCreator(annotatedWithParams, false);
    }

    public void addBooleanCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, C_BOOLEAN, z);
    }

    public void addDelegatingCreator(AnnotatedWithParams annotatedWithParams, boolean z, SettableBeanProperty[] settableBeanPropertyArr) {
        verifyNonDup(annotatedWithParams, C_DELEGATE, z);
        this._delegateArgs = settableBeanPropertyArr;
    }

    @Deprecated
    public void addDelegatingCreator(AnnotatedWithParams annotatedWithParams, CreatorProperty[] creatorPropertyArr) {
        addDelegatingCreator(annotatedWithParams, false, creatorPropertyArr);
    }

    @Deprecated
    public void addDoubleCreator(AnnotatedWithParams annotatedWithParams) {
        addBooleanCreator(annotatedWithParams, false);
    }

    public void addDoubleCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, C_DOUBLE, z);
    }

    public void addIncompeteParameter(AnnotatedParameter annotatedParameter) {
        if (this._incompleteParameter == null) {
            this._incompleteParameter = annotatedParameter;
        }
    }

    @Deprecated
    public void addIntCreator(AnnotatedWithParams annotatedWithParams) {
        addBooleanCreator(annotatedWithParams, false);
    }

    public void addIntCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, C_INT, z);
    }

    @Deprecated
    public void addLongCreator(AnnotatedWithParams annotatedWithParams) {
        addBooleanCreator(annotatedWithParams, false);
    }

    public void addLongCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, C_LONG, z);
    }

    public void addPropertyCreator(AnnotatedWithParams annotatedWithParams, boolean z, SettableBeanProperty[] settableBeanPropertyArr) {
        verifyNonDup(annotatedWithParams, C_PROPS, z);
        if (settableBeanPropertyArr.length > C_STRING) {
            HashMap hashMap = new HashMap();
            int length = settableBeanPropertyArr.length;
            int i = C_DEFAULT;
            while (i < length) {
                String name = settableBeanPropertyArr[i].getName();
                if (name.length() != 0 || settableBeanPropertyArr[i].getInjectableValueId() == null) {
                    Integer num = (Integer) hashMap.put(name, Integer.valueOf(i));
                    if (num != null) {
                        throw new IllegalArgumentException("Duplicate creator property \"" + name + "\" (index " + num + " vs " + i + ")");
                    }
                }
                i += C_STRING;
            }
        }
        this._propertyBasedArgs = settableBeanPropertyArr;
    }

    @Deprecated
    public void addPropertyCreator(AnnotatedWithParams annotatedWithParams, CreatorProperty[] creatorPropertyArr) {
        addPropertyCreator(annotatedWithParams, false, creatorPropertyArr);
    }

    @Deprecated
    public void addStringCreator(AnnotatedWithParams annotatedWithParams) {
        addStringCreator(annotatedWithParams, false);
    }

    public void addStringCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, C_STRING, z);
    }

    public ValueInstantiator constructValueInstantiator(DeserializationConfig deserializationConfig) {
        JavaType javaType;
        int i = !this._hasNonDefaultCreator ? C_STRING : C_DEFAULT;
        if (i != 0 || this._creators[C_DELEGATE] == null) {
            javaType = null;
        } else {
            int i2;
            if (this._delegateArgs != null) {
                int length = this._delegateArgs.length;
                i2 = C_DEFAULT;
                while (i2 < length) {
                    if (this._delegateArgs[i2] == null) {
                        break;
                    }
                    i2 += C_STRING;
                }
            }
            i2 = C_DEFAULT;
            javaType = this._beanDesc.bindingsForBeanType().resolveType(this._creators[C_DELEGATE].getGenericParameterType(i2));
        }
        JavaType type = this._beanDesc.getType();
        if (((!this._hasNonDefaultCreator ? C_STRING : C_DEFAULT) & i) != 0) {
            Class rawClass = type.getRawClass();
            if (rawClass == Collection.class || rawClass == List.class || rawClass == ArrayList.class) {
                return new Vanilla(C_STRING);
            }
            if (rawClass == Map.class || rawClass == LinkedHashMap.class) {
                return new Vanilla(C_INT);
            }
            if (rawClass == HashMap.class) {
                return new Vanilla(C_LONG);
            }
        }
        ValueInstantiator stdValueInstantiator = new StdValueInstantiator(deserializationConfig, type);
        stdValueInstantiator.configureFromObjectSettings(this._creators[C_DEFAULT], this._creators[C_DELEGATE], javaType, this._delegateArgs, this._creators[C_PROPS], this._propertyBasedArgs);
        stdValueInstantiator.configureFromStringCreator(this._creators[C_STRING]);
        stdValueInstantiator.configureFromIntCreator(this._creators[C_INT]);
        stdValueInstantiator.configureFromLongCreator(this._creators[C_LONG]);
        stdValueInstantiator.configureFromDoubleCreator(this._creators[C_DOUBLE]);
        stdValueInstantiator.configureFromBooleanCreator(this._creators[C_BOOLEAN]);
        stdValueInstantiator.configureIncompleteParameter(this._incompleteParameter);
        return stdValueInstantiator;
    }

    public boolean hasDefaultCreator() {
        return this._creators[C_DEFAULT] != null;
    }

    public boolean hasDelegatingCreator() {
        return this._creators[C_DELEGATE] != null;
    }

    public boolean hasPropertyBasedCreator() {
        return this._creators[C_PROPS] != null;
    }

    public void setDefaultCreator(AnnotatedWithParams annotatedWithParams) {
        this._creators[C_DEFAULT] = (AnnotatedWithParams) _fixAccess(annotatedWithParams);
    }

    protected void verifyNonDup(AnnotatedWithParams annotatedWithParams, int i, boolean z) {
        boolean z2 = true;
        int i2 = C_STRING << i;
        this._hasNonDefaultCreator = true;
        AnnotatedWithParams annotatedWithParams2 = this._creators[i];
        if (annotatedWithParams2 != null) {
            if ((this._explicitCreators & i2) != 0) {
                if (!z) {
                    return;
                }
            } else if (z) {
                z2 = false;
            }
            if (z2 && annotatedWithParams2.getClass() == annotatedWithParams.getClass()) {
                Class rawParameterType = annotatedWithParams2.getRawParameterType(C_DEFAULT);
                Class rawParameterType2 = annotatedWithParams.getRawParameterType(C_DEFAULT);
                if (rawParameterType == rawParameterType2) {
                    throw new IllegalArgumentException("Conflicting " + TYPE_DESCS[i] + " creators: already had explicitly marked " + annotatedWithParams2 + ", encountered " + annotatedWithParams);
                } else if (rawParameterType2.isAssignableFrom(rawParameterType)) {
                    return;
                }
            }
        }
        if (z) {
            this._explicitCreators |= i2;
        }
        this._creators[i] = (AnnotatedWithParams) _fixAccess(annotatedWithParams);
    }
}
