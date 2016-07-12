package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.Annotations;

public class PropertyBuilder {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final BeanDescription _beanDesc;
    protected final SerializationConfig _config;
    protected Object _defaultBean;
    protected final Include _defaultInclusion;

    /* renamed from: com.fasterxml.jackson.databind.ser.PropertyBuilder.1 */
    static /* synthetic */ class C01601 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        static {
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = new int[Include.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[Include.NON_NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[Include.ALWAYS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public PropertyBuilder(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        this._config = serializationConfig;
        this._beanDesc = beanDescription;
        this._defaultInclusion = beanDescription.findSerializationInclusion(serializationConfig.getSerializationInclusion());
        this._annotationIntrospector = this._config.getAnnotationIntrospector();
    }

    protected Object _throwWrapped(Exception exception, String str, Object obj) {
        Throwable th = exception;
        while (th.getCause() != null) {
            th = th.getCause();
        }
        if (th instanceof Error) {
            throw ((Error) th);
        } else if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else {
            throw new IllegalArgumentException("Failed to get property '" + str + "' of default " + obj.getClass().getName() + " instance");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected com.fasterxml.jackson.databind.ser.BeanPropertyWriter buildWriter(com.fasterxml.jackson.databind.SerializerProvider r13, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition r14, com.fasterxml.jackson.databind.JavaType r15, com.fasterxml.jackson.databind.JsonSerializer<?> r16, com.fasterxml.jackson.databind.jsontype.TypeSerializer r17, com.fasterxml.jackson.databind.jsontype.TypeSerializer r18, com.fasterxml.jackson.databind.introspect.AnnotatedMember r19, boolean r20) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
        r12 = this;
        r0 = r19;
        r1 = r20;
        r2 = r12.findSerializationType(r0, r1, r15);
        if (r18 == 0) goto L_0x00f2;
    L_0x000a:
        if (r2 != 0) goto L_0x000d;
    L_0x000c:
        r2 = r15;
    L_0x000d:
        r3 = r2.getContentType();
        if (r3 != 0) goto L_0x0050;
    L_0x0013:
        r3 = new java.lang.IllegalStateException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "Problem trying to create BeanPropertyWriter for property '";
        r4 = r4.append(r5);
        r5 = r14.getName();
        r4 = r4.append(r5);
        r5 = "' (of type ";
        r4 = r4.append(r5);
        r5 = r12._beanDesc;
        r5 = r5.getType();
        r4 = r4.append(r5);
        r5 = "); serialization type ";
        r4 = r4.append(r5);
        r2 = r4.append(r2);
        r4 = " has no content";
        r2 = r2.append(r4);
        r2 = r2.toString();
        r3.<init>(r2);
        throw r3;
    L_0x0050:
        r0 = r18;
        r9 = r2.withContentTypeHandler(r0);
        r9.getContentType();
    L_0x0059:
        r11 = 0;
        r10 = 0;
        r3 = 0;
        r2 = r14.findInclusion();
        if (r2 == 0) goto L_0x0066;
    L_0x0062:
        r4 = com.fasterxml.jackson.annotation.JsonInclude.Include.USE_DEFAULTS;
        if (r2 != r4) goto L_0x006c;
    L_0x0066:
        r2 = r12._defaultInclusion;
        if (r2 != 0) goto L_0x006c;
    L_0x006a:
        r2 = com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS;
    L_0x006c:
        r4 = com.fasterxml.jackson.databind.ser.PropertyBuilder.C01601.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;
        r2 = r2.ordinal();
        r2 = r4[r2];
        switch(r2) {
            case 1: goto L_0x00c0;
            case 2: goto L_0x00de;
            case 3: goto L_0x00e9;
            case 4: goto L_0x00ee;
            default: goto L_0x0077;
        };
    L_0x0077:
        r2 = r3;
    L_0x0078:
        r3 = r15.isContainerType();
        if (r3 == 0) goto L_0x00f0;
    L_0x007e:
        r3 = r12._config;
        r4 = com.fasterxml.jackson.databind.SerializationFeature.WRITE_EMPTY_JSON_ARRAYS;
        r3 = r3.isEnabled(r4);
        if (r3 != 0) goto L_0x00f0;
    L_0x0088:
        r11 = com.fasterxml.jackson.databind.ser.BeanPropertyWriter.MARKER_FOR_EMPTY;
        r10 = r2;
    L_0x008b:
        r2 = new com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
        r3 = r12._beanDesc;
        r5 = r3.getClassAnnotations();
        r3 = r14;
        r4 = r19;
        r6 = r15;
        r7 = r16;
        r8 = r17;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11);
        r3 = r12._annotationIntrospector;
        r0 = r19;
        r3 = r3.findNullSerializer(r0);
        if (r3 == 0) goto L_0x00b1;
    L_0x00a8:
        r0 = r19;
        r3 = r13.serializerInstance(r0, r3);
        r2.assignNullSerializer(r3);
    L_0x00b1:
        r3 = r12._annotationIntrospector;
        r0 = r19;
        r3 = r3.findUnwrappingNameTransformer(r0);
        if (r3 == 0) goto L_0x00bf;
    L_0x00bb:
        r2 = r2.unwrappingWriter(r3);
    L_0x00bf:
        return r2;
    L_0x00c0:
        r2 = r14.getName();
        r0 = r19;
        r11 = r12.getDefaultValue(r2, r0);
        if (r11 != 0) goto L_0x00cf;
    L_0x00cc:
        r2 = 1;
        r10 = r2;
        goto L_0x008b;
    L_0x00cf:
        r2 = r11.getClass();
        r2 = r2.isArray();
        if (r2 == 0) goto L_0x008b;
    L_0x00d9:
        r11 = com.fasterxml.jackson.databind.util.ArrayBuilders.getArrayComparator(r11);
        goto L_0x008b;
    L_0x00de:
        r2 = 1;
        r3 = r15.isReferenceType();
        if (r3 == 0) goto L_0x00f0;
    L_0x00e5:
        r11 = com.fasterxml.jackson.databind.ser.BeanPropertyWriter.MARKER_FOR_EMPTY;
        r10 = r2;
        goto L_0x008b;
    L_0x00e9:
        r2 = 1;
        r11 = com.fasterxml.jackson.databind.ser.BeanPropertyWriter.MARKER_FOR_EMPTY;
        r10 = r2;
        goto L_0x008b;
    L_0x00ee:
        r2 = 1;
        goto L_0x0078;
    L_0x00f0:
        r10 = r2;
        goto L_0x008b;
    L_0x00f2:
        r9 = r2;
        goto L_0x0059;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.PropertyBuilder.buildWriter(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.jsontype.TypeSerializer, com.fasterxml.jackson.databind.introspect.AnnotatedMember, boolean):com.fasterxml.jackson.databind.ser.BeanPropertyWriter");
    }

    protected JavaType findSerializationType(Annotated annotated, boolean z, JavaType javaType) {
        JavaType widenBy;
        Class findSerializationType = this._annotationIntrospector.findSerializationType(annotated);
        if (findSerializationType != null) {
            Class rawClass = javaType.getRawClass();
            if (findSerializationType.isAssignableFrom(rawClass)) {
                widenBy = javaType.widenBy(findSerializationType);
            } else if (rawClass.isAssignableFrom(findSerializationType)) {
                widenBy = this._config.constructSpecializedType(javaType, findSerializationType);
            } else {
                throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + annotated.getName() + "': class " + findSerializationType.getName() + " not a super-type of (declared) class " + rawClass.getName());
            }
            z = true;
        } else {
            widenBy = javaType;
        }
        JavaType modifySecondaryTypesByAnnotation = BasicSerializerFactory.modifySecondaryTypesByAnnotation(this._config, annotated, widenBy);
        if (modifySecondaryTypesByAnnotation != widenBy) {
            z = true;
            widenBy = modifySecondaryTypesByAnnotation;
        }
        Typing findSerializationTyping = this._annotationIntrospector.findSerializationTyping(annotated);
        if (!(findSerializationTyping == null || findSerializationTyping == Typing.DEFAULT_TYPING)) {
            z = findSerializationTyping == Typing.STATIC;
        }
        return z ? widenBy : null;
    }

    public Annotations getClassAnnotations() {
        return this._beanDesc.getClassAnnotations();
    }

    protected Object getDefaultBean() {
        if (this._defaultBean == null) {
            this._defaultBean = this._beanDesc.instantiateBean(this._config.canOverrideAccessModifiers());
            if (this._defaultBean == null) {
                throw new IllegalArgumentException("Class " + this._beanDesc.getClassInfo().getAnnotated().getName() + " has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation");
            }
        }
        return this._defaultBean;
    }

    protected Object getDefaultValue(String str, AnnotatedMember annotatedMember) {
        Object defaultBean = getDefaultBean();
        try {
            return annotatedMember.getValue(defaultBean);
        } catch (Exception e) {
            return _throwWrapped(e, str, defaultBean);
        }
    }
}
