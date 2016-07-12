package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.deser.DeserializerCache;
import com.fasterxml.jackson.databind.deser.DeserializerFactory;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LinkedNode;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

public abstract class DeserializationContext extends DatabindContext implements Serializable {
    private static final int MAX_ERROR_STR_LEN = 500;
    private static final long serialVersionUID = 1;
    protected transient ArrayBuilders _arrayBuilders;
    protected transient ContextAttributes _attributes;
    protected final DeserializerCache _cache;
    protected final DeserializationConfig _config;
    protected LinkedNode<JavaType> _currentType;
    protected transient DateFormat _dateFormat;
    protected final DeserializerFactory _factory;
    protected final int _featureFlags;
    protected final InjectableValues _injectableValues;
    protected transient ObjectBuffer _objectBuffer;
    protected transient JsonParser _parser;
    protected final Class<?> _view;

    protected DeserializationContext(DeserializationContext deserializationContext) {
        this._cache = new DeserializerCache();
        this._factory = deserializationContext._factory;
        this._config = deserializationContext._config;
        this._featureFlags = deserializationContext._featureFlags;
        this._view = deserializationContext._view;
        this._injectableValues = null;
    }

    protected DeserializationContext(DeserializationContext deserializationContext, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
        this._cache = deserializationContext._cache;
        this._factory = deserializationContext._factory;
        this._config = deserializationConfig;
        this._featureFlags = deserializationConfig.getDeserializationFeatures();
        this._view = deserializationConfig.getActiveView();
        this._parser = jsonParser;
        this._injectableValues = injectableValues;
        this._attributes = deserializationConfig.getAttributes();
    }

    protected DeserializationContext(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory) {
        this._cache = deserializationContext._cache;
        this._factory = deserializerFactory;
        this._config = deserializationContext._config;
        this._featureFlags = deserializationContext._featureFlags;
        this._view = deserializationContext._view;
        this._parser = deserializationContext._parser;
        this._injectableValues = deserializationContext._injectableValues;
        this._attributes = deserializationContext._attributes;
    }

    protected DeserializationContext(DeserializerFactory deserializerFactory) {
        this(deserializerFactory, null);
    }

    protected DeserializationContext(DeserializerFactory deserializerFactory, DeserializerCache deserializerCache) {
        if (deserializerFactory == null) {
            throw new IllegalArgumentException("Can not pass null DeserializerFactory");
        }
        this._factory = deserializerFactory;
        if (deserializerCache == null) {
            deserializerCache = new DeserializerCache();
        }
        this._cache = deserializerCache;
        this._featureFlags = 0;
        this._config = null;
        this._injectableValues = null;
        this._view = null;
        this._attributes = null;
    }

    protected String _calcName(Class<?> cls) {
        return cls.isArray() ? _calcName(cls.getComponentType()) + "[]" : cls.getName();
    }

    protected String _desc(String str) {
        return str.length() > MAX_ERROR_STR_LEN ? str.substring(0, MAX_ERROR_STR_LEN) + "]...[" + str.substring(str.length() - 500) : str;
    }

    protected String _valueDesc() {
        try {
            return _desc(this._parser.getText());
        } catch (Exception e) {
            return "[N/A]";
        }
    }

    public abstract void checkUnresolvedObjectId() throws UnresolvedForwardReference;

    public Calendar constructCalendar(Date date) {
        Calendar instance = Calendar.getInstance(getTimeZone());
        instance.setTime(date);
        return instance;
    }

    public final JavaType constructType(Class<?> cls) {
        return this._config.constructType((Class) cls);
    }

    public abstract JsonDeserializer<Object> deserializerInstance(Annotated annotated, Object obj) throws JsonMappingException;

    protected String determineClassName(Object obj) {
        return ClassUtil.getClassDescription(obj);
    }

    public JsonMappingException endOfInputException(Class<?> cls) {
        return JsonMappingException.from(this._parser, "Unexpected end-of-input when trying to deserialize a " + cls.getName());
    }

    public Class<?> findClass(String str) throws ClassNotFoundException {
        return getTypeFactory().findClass(str);
    }

    public final JsonDeserializer<Object> findContextualValueDeserializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<Object> findValueDeserializer = this._cache.findValueDeserializer(this, this._factory, javaType);
        return findValueDeserializer != null ? handleSecondaryContextualization(findValueDeserializer, beanProperty, javaType) : findValueDeserializer;
    }

    public final Object findInjectableValue(Object obj, BeanProperty beanProperty, Object obj2) {
        if (this._injectableValues != null) {
            return this._injectableValues.findInjectableValue(obj, this, beanProperty, obj2);
        }
        throw new IllegalStateException("No 'injectableValues' configured, can not inject value with id [" + obj + "]");
    }

    public final KeyDeserializer findKeyDeserializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        KeyDeserializer findKeyDeserializer = this._cache.findKeyDeserializer(this, this._factory, javaType);
        return findKeyDeserializer instanceof ContextualKeyDeserializer ? ((ContextualKeyDeserializer) findKeyDeserializer).createContextual(this, beanProperty) : findKeyDeserializer;
    }

    public final JsonDeserializer<Object> findNonContextualValueDeserializer(JavaType javaType) throws JsonMappingException {
        return this._cache.findValueDeserializer(this, this._factory, javaType);
    }

    @Deprecated
    public abstract ReadableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator);

    public abstract ReadableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator, ObjectIdResolver objectIdResolver);

    public final JsonDeserializer<Object> findRootValueDeserializer(JavaType javaType) throws JsonMappingException {
        JsonDeserializer findValueDeserializer = this._cache.findValueDeserializer(this, this._factory, javaType);
        if (findValueDeserializer == null) {
            return null;
        }
        JsonDeserializer<Object> handleSecondaryContextualization = handleSecondaryContextualization(findValueDeserializer, null, javaType);
        TypeDeserializer findTypeDeserializer = this._factory.findTypeDeserializer(this._config, javaType);
        return findTypeDeserializer != null ? new TypeWrappedDeserializer(findTypeDeserializer.forProperty(null), handleSecondaryContextualization) : handleSecondaryContextualization;
    }

    public final Class<?> getActiveView() {
        return this._view;
    }

    public final AnnotationIntrospector getAnnotationIntrospector() {
        return this._config.getAnnotationIntrospector();
    }

    public final ArrayBuilders getArrayBuilders() {
        if (this._arrayBuilders == null) {
            this._arrayBuilders = new ArrayBuilders();
        }
        return this._arrayBuilders;
    }

    public Object getAttribute(Object obj) {
        return this._attributes.getAttribute(obj);
    }

    public final Base64Variant getBase64Variant() {
        return this._config.getBase64Variant();
    }

    public DeserializationConfig getConfig() {
        return this._config;
    }

    public JavaType getContextualType() {
        return this._currentType == null ? null : (JavaType) this._currentType.value();
    }

    protected DateFormat getDateFormat() {
        if (this._dateFormat != null) {
            return this._dateFormat;
        }
        DateFormat dateFormat = (DateFormat) this._config.getDateFormat().clone();
        this._dateFormat = dateFormat;
        return dateFormat;
    }

    public final int getDeserializationFeatures() {
        return this._featureFlags;
    }

    public DeserializerFactory getFactory() {
        return this._factory;
    }

    public Locale getLocale() {
        return this._config.getLocale();
    }

    public final JsonNodeFactory getNodeFactory() {
        return this._config.getNodeFactory();
    }

    public final JsonParser getParser() {
        return this._parser;
    }

    public TimeZone getTimeZone() {
        return this._config.getTimeZone();
    }

    public final TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    @Deprecated
    public JsonDeserializer<?> handlePrimaryContextualization(JsonDeserializer<?> jsonDeserializer, BeanProperty beanProperty) throws JsonMappingException {
        return handlePrimaryContextualization(jsonDeserializer, beanProperty, TypeFactory.unknownType());
    }

    public JsonDeserializer<?> handlePrimaryContextualization(JsonDeserializer<?> jsonDeserializer, BeanProperty beanProperty, JavaType javaType) throws JsonMappingException {
        if (jsonDeserializer instanceof ContextualDeserializer) {
            this._currentType = new LinkedNode(javaType, this._currentType);
            try {
                jsonDeserializer = ((ContextualDeserializer) jsonDeserializer).createContextual(this, beanProperty);
            } finally {
                this._currentType = this._currentType.next();
            }
        }
        return jsonDeserializer;
    }

    @Deprecated
    public JsonDeserializer<?> handleSecondaryContextualization(JsonDeserializer<?> jsonDeserializer, BeanProperty beanProperty) throws JsonMappingException {
        return jsonDeserializer instanceof ContextualDeserializer ? ((ContextualDeserializer) jsonDeserializer).createContextual(this, beanProperty) : jsonDeserializer;
    }

    public JsonDeserializer<?> handleSecondaryContextualization(JsonDeserializer<?> jsonDeserializer, BeanProperty beanProperty, JavaType javaType) throws JsonMappingException {
        if (jsonDeserializer instanceof ContextualDeserializer) {
            this._currentType = new LinkedNode(javaType, this._currentType);
            try {
                jsonDeserializer = ((ContextualDeserializer) jsonDeserializer).createContextual(this, beanProperty);
            } finally {
                this._currentType = this._currentType.next();
            }
        }
        return jsonDeserializer;
    }

    public boolean handleUnknownProperty(JsonParser jsonParser, JsonDeserializer<?> jsonDeserializer, Object obj, String str) throws IOException, JsonProcessingException {
        LinkedNode problemHandlers = this._config.getProblemHandlers();
        if (problemHandlers != null) {
            for (LinkedNode linkedNode = problemHandlers; linkedNode != null; linkedNode = linkedNode.next()) {
                if (((DeserializationProblemHandler) linkedNode.value()).handleUnknownProperty(this, jsonParser, jsonDeserializer, obj, str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean hasDeserializationFeatures(int i) {
        return (this._featureFlags & i) == i;
    }

    public final boolean hasSomeOfFeatures(int i) {
        return (this._featureFlags & i) != 0;
    }

    @Deprecated
    public boolean hasValueDeserializerFor(JavaType javaType) {
        return hasValueDeserializerFor(javaType, null);
    }

    public boolean hasValueDeserializerFor(JavaType javaType, AtomicReference<Throwable> atomicReference) {
        try {
            return this._cache.hasValueDeserializerFor(this, this._factory, javaType);
        } catch (JsonMappingException e) {
            if (atomicReference != null) {
                atomicReference.set(e);
            }
            return false;
        } catch (RuntimeException e2) {
            if (atomicReference == null) {
                throw e2;
            }
            atomicReference.set(e2);
            return false;
        }
    }

    public JsonMappingException instantiationException(Class<?> cls, String str) {
        return JsonMappingException.from(this._parser, String.format("Can not construct instance of %s, problem: %s", new Object[]{cls.getName(), str}));
    }

    public JsonMappingException instantiationException(Class<?> cls, Throwable th) {
        return JsonMappingException.from(this._parser, String.format("Can not construct instance of %s, problem: %s", new Object[]{cls.getName(), th.getMessage()}), th);
    }

    public final boolean isEnabled(DeserializationFeature deserializationFeature) {
        return (this._featureFlags & deserializationFeature.getMask()) != 0;
    }

    public abstract KeyDeserializer keyDeserializerInstance(Annotated annotated, Object obj) throws JsonMappingException;

    public final ObjectBuffer leaseObjectBuffer() {
        ObjectBuffer objectBuffer = this._objectBuffer;
        if (objectBuffer == null) {
            return new ObjectBuffer();
        }
        this._objectBuffer = null;
        return objectBuffer;
    }

    public JsonMappingException mappingException(Class<?> cls) {
        return mappingException((Class) cls, this._parser.getCurrentToken());
    }

    public JsonMappingException mappingException(Class<?> cls, JsonToken jsonToken) {
        return JsonMappingException.from(this._parser, String.format("Can not deserialize instance of %s out of %s token", new Object[]{_calcName(cls), jsonToken}));
    }

    public JsonMappingException mappingException(String str) {
        return JsonMappingException.from(getParser(), str);
    }

    public JsonMappingException mappingException(String str, Object... objArr) {
        return JsonMappingException.from(getParser(), String.format(str, objArr));
    }

    public Date parseDate(String str) throws IllegalArgumentException {
        try {
            return getDateFormat().parse(str);
        } catch (ParseException e) {
            throw new IllegalArgumentException(String.format("Failed to parse Date value '%s': %s", new Object[]{str, e.getMessage()}));
        }
    }

    public <T> T readPropertyValue(JsonParser jsonParser, BeanProperty beanProperty, JavaType javaType) throws IOException {
        JsonDeserializer findContextualValueDeserializer = findContextualValueDeserializer(javaType, beanProperty);
        if (findContextualValueDeserializer != null) {
            return findContextualValueDeserializer.deserialize(jsonParser, this);
        }
        String str = beanProperty == null ? "NULL" : "'" + beanProperty.getName() + "'";
        throw mappingException("Could not find JsonDeserializer for type %s (via property %s)", javaType, str);
    }

    public <T> T readPropertyValue(JsonParser jsonParser, BeanProperty beanProperty, Class<T> cls) throws IOException {
        return readPropertyValue(jsonParser, beanProperty, getTypeFactory().constructType((Type) cls));
    }

    public <T> T readValue(JsonParser jsonParser, JavaType javaType) throws IOException {
        JsonDeserializer findRootValueDeserializer = findRootValueDeserializer(javaType);
        if (findRootValueDeserializer != null) {
            return findRootValueDeserializer.deserialize(jsonParser, this);
        }
        throw mappingException("Could not find JsonDeserializer for type %s", javaType);
    }

    public <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException {
        return readValue(jsonParser, getTypeFactory().constructType((Type) cls));
    }

    public void reportUnknownProperty(Object obj, String str, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
            throw UnrecognizedPropertyException.from(this._parser, obj, str, jsonDeserializer == null ? null : jsonDeserializer.getKnownPropertyNames());
        }
    }

    public final void returnObjectBuffer(ObjectBuffer objectBuffer) {
        if (this._objectBuffer == null || objectBuffer.initialCapacity() >= this._objectBuffer.initialCapacity()) {
            this._objectBuffer = objectBuffer;
        }
    }

    public DeserializationContext setAttribute(Object obj, Object obj2) {
        this._attributes = this._attributes.withPerCallAttribute(obj, obj2);
        return this;
    }

    @Deprecated
    public JsonMappingException unknownTypeException(JavaType javaType, String str) {
        return JsonMappingException.from(this._parser, "Could not resolve type id '" + str + "' into a subtype of " + javaType);
    }

    public JsonMappingException unknownTypeException(JavaType javaType, String str, String str2) {
        String str3 = "Could not resolve type id '" + str + "' into a subtype of " + javaType;
        if (str2 != null) {
            str3 = str3 + ": " + str2;
        }
        return JsonMappingException.from(this._parser, str3);
    }

    public JsonMappingException weirdKeyException(Class<?> cls, String str, String str2) {
        return InvalidFormatException.from(this._parser, String.format("Can not construct Map key of type %s from String \"%s\": ", new Object[]{cls.getName(), _desc(str), str2}), str, cls);
    }

    public JsonMappingException weirdNumberException(Number number, Class<?> cls, String str) {
        return InvalidFormatException.from(this._parser, String.format("Can not construct instance of %s from number value (%s): %s", new Object[]{cls.getName(), _valueDesc(), str}), null, cls);
    }

    public JsonMappingException weirdStringException(String str, Class<?> cls, String str2) {
        return InvalidFormatException.from(this._parser, String.format("Can not construct instance of %s from String value '%s': %s", new Object[]{cls.getName(), _valueDesc(), str2}), str, cls);
    }

    public JsonMappingException wrongTokenException(JsonParser jsonParser, JsonToken jsonToken, String str) {
        String format = String.format("Unexpected token (%s), expected %s", new Object[]{jsonParser.getCurrentToken(), jsonToken});
        if (str != null) {
            format = format + ": " + str;
        }
        return JsonMappingException.from(jsonParser, format);
    }
}
