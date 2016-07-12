package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.BeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class SimpleBeanPropertyFilter implements BeanPropertyFilter, PropertyFilter {

    /* renamed from: com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter.1 */
    static final class C01611 implements PropertyFilter {
        final /* synthetic */ BeanPropertyFilter val$src;

        C01611(BeanPropertyFilter beanPropertyFilter) {
            this.val$src = beanPropertyFilter;
        }

        public void depositSchemaProperty(PropertyWriter propertyWriter, JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
            this.val$src.depositSchemaProperty((BeanPropertyWriter) propertyWriter, jsonObjectFormatVisitor, serializerProvider);
        }

        public void depositSchemaProperty(PropertyWriter propertyWriter, ObjectNode objectNode, SerializerProvider serializerProvider) throws JsonMappingException {
            this.val$src.depositSchemaProperty((BeanPropertyWriter) propertyWriter, objectNode, serializerProvider);
        }

        public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyWriter propertyWriter) throws Exception {
            throw new UnsupportedOperationException();
        }

        public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyWriter propertyWriter) throws Exception {
            this.val$src.serializeAsField(obj, jsonGenerator, serializerProvider, (BeanPropertyWriter) propertyWriter);
        }
    }

    public static class FilterExceptFilter extends SimpleBeanPropertyFilter implements Serializable {
        private static final long serialVersionUID = 1;
        protected final Set<String> _propertiesToInclude;

        public FilterExceptFilter(Set<String> set) {
            this._propertiesToInclude = set;
        }

        protected boolean include(BeanPropertyWriter beanPropertyWriter) {
            return this._propertiesToInclude.contains(beanPropertyWriter.getName());
        }

        protected boolean include(PropertyWriter propertyWriter) {
            return this._propertiesToInclude.contains(propertyWriter.getName());
        }
    }

    public static class SerializeExceptFilter extends SimpleBeanPropertyFilter implements Serializable {
        static final SerializeExceptFilter INCLUDE_ALL;
        private static final long serialVersionUID = 1;
        protected final Set<String> _propertiesToExclude;

        static {
            INCLUDE_ALL = new SerializeExceptFilter();
        }

        SerializeExceptFilter() {
            this._propertiesToExclude = Collections.emptySet();
        }

        public SerializeExceptFilter(Set<String> set) {
            this._propertiesToExclude = set;
        }

        protected boolean include(BeanPropertyWriter beanPropertyWriter) {
            return !this._propertiesToExclude.contains(beanPropertyWriter.getName());
        }

        protected boolean include(PropertyWriter propertyWriter) {
            return !this._propertiesToExclude.contains(propertyWriter.getName());
        }
    }

    protected SimpleBeanPropertyFilter() {
    }

    public static SimpleBeanPropertyFilter filterOutAllExcept(Set<String> set) {
        return new FilterExceptFilter(set);
    }

    public static SimpleBeanPropertyFilter filterOutAllExcept(String... strArr) {
        Object hashSet = new HashSet(strArr.length);
        Collections.addAll(hashSet, strArr);
        return new FilterExceptFilter(hashSet);
    }

    public static PropertyFilter from(BeanPropertyFilter beanPropertyFilter) {
        return new C01611(beanPropertyFilter);
    }

    public static SimpleBeanPropertyFilter serializeAll() {
        return SerializeExceptFilter.INCLUDE_ALL;
    }

    @Deprecated
    public static SimpleBeanPropertyFilter serializeAll(Set<String> set) {
        return new FilterExceptFilter(set);
    }

    public static SimpleBeanPropertyFilter serializeAllExcept(Set<String> set) {
        return new SerializeExceptFilter(set);
    }

    public static SimpleBeanPropertyFilter serializeAllExcept(String... strArr) {
        Object hashSet = new HashSet(strArr.length);
        Collections.addAll(hashSet, strArr);
        return new SerializeExceptFilter(hashSet);
    }

    @Deprecated
    public void depositSchemaProperty(BeanPropertyWriter beanPropertyWriter, JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
        if (include(beanPropertyWriter)) {
            beanPropertyWriter.depositSchemaProperty(jsonObjectFormatVisitor);
        }
    }

    @Deprecated
    public void depositSchemaProperty(BeanPropertyWriter beanPropertyWriter, ObjectNode objectNode, SerializerProvider serializerProvider) throws JsonMappingException {
        if (include(beanPropertyWriter)) {
            beanPropertyWriter.depositSchemaProperty(objectNode, serializerProvider);
        }
    }

    public void depositSchemaProperty(PropertyWriter propertyWriter, JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
        if (include(propertyWriter)) {
            propertyWriter.depositSchemaProperty(jsonObjectFormatVisitor);
        }
    }

    @Deprecated
    public void depositSchemaProperty(PropertyWriter propertyWriter, ObjectNode objectNode, SerializerProvider serializerProvider) throws JsonMappingException {
        if (include(propertyWriter)) {
            propertyWriter.depositSchemaProperty(objectNode, serializerProvider);
        }
    }

    protected boolean include(BeanPropertyWriter beanPropertyWriter) {
        return true;
    }

    protected boolean include(PropertyWriter propertyWriter) {
        return true;
    }

    protected boolean includeElement(Object obj) {
        return true;
    }

    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyWriter propertyWriter) throws Exception {
        if (includeElement(obj)) {
            propertyWriter.serializeAsElement(obj, jsonGenerator, serializerProvider);
        }
    }

    @Deprecated
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, BeanPropertyWriter beanPropertyWriter) throws Exception {
        if (include(beanPropertyWriter)) {
            beanPropertyWriter.serializeAsField(obj, jsonGenerator, serializerProvider);
        } else if (!jsonGenerator.canOmitFields()) {
            beanPropertyWriter.serializeAsOmittedField(obj, jsonGenerator, serializerProvider);
        }
    }

    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyWriter propertyWriter) throws Exception {
        if (include(propertyWriter)) {
            propertyWriter.serializeAsField(obj, jsonGenerator, serializerProvider);
        } else if (!jsonGenerator.canOmitFields()) {
            propertyWriter.serializeAsOmittedField(obj, jsonGenerator, serializerProvider);
        }
    }
}
