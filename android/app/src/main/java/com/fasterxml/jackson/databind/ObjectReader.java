package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.core.filter.FilteringParserDelegate;
import com.fasterxml.jackson.core.filter.JsonPointerBasedFilter;
import com.fasterxml.jackson.core.filter.TokenFilter;
import com.fasterxml.jackson.core.type.ResolvedType;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.deser.DataFormatReaders;
import com.fasterxml.jackson.databind.deser.DataFormatReaders.Match;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.TreeTraversingParser;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

public class ObjectReader extends ObjectCodec implements Versioned, Serializable {
    private static final JavaType JSON_NODE_TYPE;
    private static final long serialVersionUID = 1;
    protected final DeserializationConfig _config;
    protected final DefaultDeserializationContext _context;
    protected final DataFormatReaders _dataFormatReaders;
    private final TokenFilter _filter;
    protected final InjectableValues _injectableValues;
    protected final JsonFactory _parserFactory;
    protected final JsonDeserializer<Object> _rootDeserializer;
    protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _rootDeserializers;
    protected final FormatSchema _schema;
    protected final boolean _unwrapRoot;
    protected final Object _valueToUpdate;
    protected final JavaType _valueType;

    static {
        JSON_NODE_TYPE = SimpleType.constructUnsafe(JsonNode.class);
    }

    protected ObjectReader(ObjectMapper objectMapper, DeserializationConfig deserializationConfig) {
        this(objectMapper, deserializationConfig, null, null, null, null);
    }

    protected ObjectReader(ObjectMapper objectMapper, DeserializationConfig deserializationConfig, JavaType javaType, Object obj, FormatSchema formatSchema, InjectableValues injectableValues) {
        this._config = deserializationConfig;
        this._context = objectMapper._deserializationContext;
        this._rootDeserializers = objectMapper._rootDeserializers;
        this._parserFactory = objectMapper._jsonFactory;
        this._valueType = javaType;
        this._valueToUpdate = obj;
        if (obj == null || !javaType.isArrayType()) {
            this._schema = formatSchema;
            this._injectableValues = injectableValues;
            this._unwrapRoot = deserializationConfig.useRootWrapping();
            this._rootDeserializer = _prefetchRootDeserializer(javaType);
            this._dataFormatReaders = null;
            this._filter = null;
            return;
        }
        throw new IllegalArgumentException("Can not update an array value");
    }

    protected ObjectReader(ObjectReader objectReader, JsonFactory jsonFactory) {
        this._config = objectReader._config.with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, jsonFactory.requiresPropertyOrdering());
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = jsonFactory;
        this._valueType = objectReader._valueType;
        this._rootDeserializer = objectReader._rootDeserializer;
        this._valueToUpdate = objectReader._valueToUpdate;
        this._schema = objectReader._schema;
        this._injectableValues = objectReader._injectableValues;
        this._unwrapRoot = objectReader._unwrapRoot;
        this._dataFormatReaders = objectReader._dataFormatReaders;
        this._filter = objectReader._filter;
    }

    protected ObjectReader(ObjectReader objectReader, TokenFilter tokenFilter) {
        this._config = objectReader._config;
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = objectReader._parserFactory;
        this._valueType = objectReader._valueType;
        this._rootDeserializer = objectReader._rootDeserializer;
        this._valueToUpdate = objectReader._valueToUpdate;
        this._schema = objectReader._schema;
        this._injectableValues = objectReader._injectableValues;
        this._unwrapRoot = objectReader._unwrapRoot;
        this._dataFormatReaders = objectReader._dataFormatReaders;
        this._filter = tokenFilter;
    }

    protected ObjectReader(ObjectReader objectReader, DeserializationConfig deserializationConfig) {
        this._config = deserializationConfig;
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = objectReader._parserFactory;
        this._valueType = objectReader._valueType;
        this._rootDeserializer = objectReader._rootDeserializer;
        this._valueToUpdate = objectReader._valueToUpdate;
        this._schema = objectReader._schema;
        this._injectableValues = objectReader._injectableValues;
        this._unwrapRoot = deserializationConfig.useRootWrapping();
        this._dataFormatReaders = objectReader._dataFormatReaders;
        this._filter = objectReader._filter;
    }

    protected ObjectReader(ObjectReader objectReader, DeserializationConfig deserializationConfig, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, Object obj, FormatSchema formatSchema, InjectableValues injectableValues, DataFormatReaders dataFormatReaders) {
        this._config = deserializationConfig;
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = objectReader._parserFactory;
        this._valueType = javaType;
        this._rootDeserializer = jsonDeserializer;
        this._valueToUpdate = obj;
        if (obj == null || !javaType.isArrayType()) {
            this._schema = formatSchema;
            this._injectableValues = injectableValues;
            this._unwrapRoot = deserializationConfig.useRootWrapping();
            this._dataFormatReaders = dataFormatReaders;
            this._filter = objectReader._filter;
            return;
        }
        throw new IllegalArgumentException("Can not update an array value");
    }

    protected Object _bind(JsonParser jsonParser, Object obj) throws IOException {
        JsonToken _initForReading = _initForReading(jsonParser);
        DeserializationContext createDeserializationContext;
        if (_initForReading == JsonToken.VALUE_NULL) {
            if (obj == null) {
                createDeserializationContext = createDeserializationContext(jsonParser);
                obj = _findRootDeserializer(createDeserializationContext).getNullValue(createDeserializationContext);
            }
        } else if (!(_initForReading == JsonToken.END_ARRAY || _initForReading == JsonToken.END_OBJECT)) {
            createDeserializationContext = createDeserializationContext(jsonParser);
            JsonDeserializer _findRootDeserializer = _findRootDeserializer(createDeserializationContext);
            if (this._unwrapRoot) {
                obj = _unwrapAndDeserialize(jsonParser, createDeserializationContext, this._valueType, _findRootDeserializer);
            } else if (obj == null) {
                obj = _findRootDeserializer.deserialize(jsonParser, createDeserializationContext);
            } else {
                _findRootDeserializer.deserialize(jsonParser, createDeserializationContext, obj);
            }
        }
        jsonParser.clearCurrentToken();
        return obj;
    }

    protected Object _bindAndClose(JsonParser jsonParser) throws IOException {
        try {
            Object nullValue;
            JsonToken _initForReading = _initForReading(jsonParser);
            DeserializationContext createDeserializationContext;
            if (_initForReading == JsonToken.VALUE_NULL) {
                if (this._valueToUpdate == null) {
                    createDeserializationContext = createDeserializationContext(jsonParser);
                    nullValue = _findRootDeserializer(createDeserializationContext).getNullValue(createDeserializationContext);
                } else {
                    nullValue = this._valueToUpdate;
                }
            } else if (_initForReading == JsonToken.END_ARRAY || _initForReading == JsonToken.END_OBJECT) {
                nullValue = this._valueToUpdate;
            } else {
                createDeserializationContext = createDeserializationContext(jsonParser);
                JsonDeserializer _findRootDeserializer = _findRootDeserializer(createDeserializationContext);
                if (this._unwrapRoot) {
                    nullValue = _unwrapAndDeserialize(jsonParser, createDeserializationContext, this._valueType, _findRootDeserializer);
                } else if (this._valueToUpdate == null) {
                    nullValue = _findRootDeserializer.deserialize(jsonParser, createDeserializationContext);
                } else {
                    _findRootDeserializer.deserialize(jsonParser, createDeserializationContext, this._valueToUpdate);
                    nullValue = this._valueToUpdate;
                }
            }
            return nullValue;
        } finally {
            try {
                jsonParser.close();
            } catch (IOException e) {
            }
        }
    }

    protected JsonNode _bindAndCloseAsTree(JsonParser jsonParser) throws IOException {
        try {
            JsonNode _bindAsTree = _bindAsTree(jsonParser);
            return _bindAsTree;
        } finally {
            try {
                jsonParser.close();
            } catch (IOException e) {
            }
        }
    }

    protected <T> MappingIterator<T> _bindAndReadValues(JsonParser jsonParser) throws IOException {
        _initForMultiRead(jsonParser);
        jsonParser.nextToken();
        DeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
        return _newIterator(jsonParser, createDeserializationContext, _findRootDeserializer(createDeserializationContext), true);
    }

    protected JsonNode _bindAsTree(JsonParser jsonParser) throws IOException {
        JsonNode jsonNode;
        JsonToken _initForReading = _initForReading(jsonParser);
        if (_initForReading == JsonToken.VALUE_NULL || _initForReading == JsonToken.END_ARRAY || _initForReading == JsonToken.END_OBJECT) {
            jsonNode = NullNode.instance;
        } else {
            DeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
            JsonDeserializer _findTreeDeserializer = _findTreeDeserializer(createDeserializationContext);
            jsonNode = this._unwrapRoot ? (JsonNode) _unwrapAndDeserialize(jsonParser, createDeserializationContext, JSON_NODE_TYPE, _findTreeDeserializer) : (JsonNode) _findTreeDeserializer.deserialize(jsonParser, createDeserializationContext);
        }
        jsonParser.clearCurrentToken();
        return jsonNode;
    }

    protected JsonParser _considerFilter(JsonParser jsonParser) {
        return (this._filter == null || FilteringParserDelegate.class.isInstance(jsonParser)) ? jsonParser : new FilteringParserDelegate(jsonParser, this._filter, false, false);
    }

    protected Object _detectBindAndClose(Match match, boolean z) throws IOException {
        if (!match.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, match);
        }
        JsonParser createParserWithMatch = match.createParserWithMatch();
        if (z) {
            createParserWithMatch.enable(Feature.AUTO_CLOSE_SOURCE);
        }
        return match.getReader()._bindAndClose(createParserWithMatch);
    }

    protected Object _detectBindAndClose(byte[] bArr, int i, int i2) throws IOException {
        Match findFormat = this._dataFormatReaders.findFormat(bArr, i, i2);
        if (!findFormat.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, findFormat);
        }
        return findFormat.getReader()._bindAndClose(findFormat.createParserWithMatch());
    }

    protected JsonNode _detectBindAndCloseAsTree(InputStream inputStream) throws IOException {
        Match findFormat = this._dataFormatReaders.findFormat(inputStream);
        if (!findFormat.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, findFormat);
        }
        JsonParser createParserWithMatch = findFormat.createParserWithMatch();
        createParserWithMatch.enable(Feature.AUTO_CLOSE_SOURCE);
        return findFormat.getReader()._bindAndCloseAsTree(createParserWithMatch);
    }

    protected <T> MappingIterator<T> _detectBindAndReadValues(Match match, boolean z) throws IOException, JsonProcessingException {
        if (!match.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, match);
        }
        JsonParser createParserWithMatch = match.createParserWithMatch();
        if (z) {
            createParserWithMatch.enable(Feature.AUTO_CLOSE_SOURCE);
        }
        return match.getReader()._bindAndReadValues(createParserWithMatch);
    }

    protected JsonDeserializer<Object> _findRootDeserializer(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this._rootDeserializer != null) {
            return this._rootDeserializer;
        }
        JavaType javaType = this._valueType;
        if (javaType == null) {
            throw new JsonMappingException("No value type configured for ObjectReader");
        }
        JsonDeserializer<Object> jsonDeserializer = (JsonDeserializer) this._rootDeserializers.get(javaType);
        if (jsonDeserializer != null) {
            return jsonDeserializer;
        }
        jsonDeserializer = deserializationContext.findRootValueDeserializer(javaType);
        if (jsonDeserializer == null) {
            throw new JsonMappingException("Can not find a deserializer for type " + javaType);
        }
        this._rootDeserializers.put(javaType, jsonDeserializer);
        return jsonDeserializer;
    }

    protected JsonDeserializer<Object> _findTreeDeserializer(DeserializationContext deserializationContext) throws JsonMappingException {
        JsonDeserializer<Object> jsonDeserializer = (JsonDeserializer) this._rootDeserializers.get(JSON_NODE_TYPE);
        if (jsonDeserializer == null) {
            jsonDeserializer = deserializationContext.findRootValueDeserializer(JSON_NODE_TYPE);
            if (jsonDeserializer == null) {
                throw new JsonMappingException("Can not find a deserializer for type " + JSON_NODE_TYPE);
            }
            this._rootDeserializers.put(JSON_NODE_TYPE, jsonDeserializer);
        }
        return jsonDeserializer;
    }

    protected void _initForMultiRead(JsonParser jsonParser) throws IOException {
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        this._config.initialize(jsonParser);
    }

    protected JsonToken _initForReading(JsonParser jsonParser) throws IOException {
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        this._config.initialize(jsonParser);
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == null) {
            currentToken = jsonParser.nextToken();
            if (currentToken == null) {
                throw JsonMappingException.from(jsonParser, "No content to map due to end-of-input");
            }
        }
        return currentToken;
    }

    protected InputStream _inputStream(File file) throws IOException {
        return new FileInputStream(file);
    }

    protected InputStream _inputStream(URL url) throws IOException {
        return url.openStream();
    }

    protected ObjectReader _new(ObjectReader objectReader, JsonFactory jsonFactory) {
        return new ObjectReader(objectReader, jsonFactory);
    }

    protected ObjectReader _new(ObjectReader objectReader, DeserializationConfig deserializationConfig) {
        return new ObjectReader(objectReader, deserializationConfig);
    }

    protected ObjectReader _new(ObjectReader objectReader, DeserializationConfig deserializationConfig, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, Object obj, FormatSchema formatSchema, InjectableValues injectableValues, DataFormatReaders dataFormatReaders) {
        return new ObjectReader(objectReader, deserializationConfig, javaType, jsonDeserializer, obj, formatSchema, injectableValues, dataFormatReaders);
    }

    protected <T> MappingIterator<T> _newIterator(JsonParser jsonParser, DeserializationContext deserializationContext, JsonDeserializer<?> jsonDeserializer, boolean z) {
        return new MappingIterator(this._valueType, jsonParser, deserializationContext, jsonDeserializer, z, this._valueToUpdate);
    }

    protected JsonDeserializer<Object> _prefetchRootDeserializer(JavaType javaType) {
        JsonDeserializer<Object> jsonDeserializer = null;
        if (javaType != null && this._config.isEnabled(DeserializationFeature.EAGER_DESERIALIZER_FETCH)) {
            jsonDeserializer = (JsonDeserializer) this._rootDeserializers.get(javaType);
            if (jsonDeserializer == null) {
                try {
                    jsonDeserializer = createDeserializationContext(null).findRootValueDeserializer(javaType);
                    if (jsonDeserializer != null) {
                        this._rootDeserializers.put(javaType, jsonDeserializer);
                    }
                } catch (JsonProcessingException e) {
                }
            }
        }
        return jsonDeserializer;
    }

    protected void _reportUndetectableSource(Object obj) throws JsonProcessingException {
        throw new JsonParseException("Can not use source of type " + obj.getClass().getName() + " with format auto-detection: must be byte- not char-based", JsonLocation.NA);
    }

    protected void _reportUnkownFormat(DataFormatReaders dataFormatReaders, Match match) throws JsonProcessingException {
        throw new JsonParseException("Can not detect format from input, does not look like any of detectable formats " + dataFormatReaders.toString(), JsonLocation.NA);
    }

    protected Object _unwrapAndDeserialize(JsonParser jsonParser, DeserializationContext deserializationContext, JavaType javaType, JsonDeserializer<Object> jsonDeserializer) throws IOException {
        String simpleName = this._config.findRootName(javaType).getSimpleName();
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            throw JsonMappingException.from(jsonParser, "Current token not START_OBJECT (needed to unwrap root name '" + simpleName + "'), but " + jsonParser.getCurrentToken());
        } else if (jsonParser.nextToken() != JsonToken.FIELD_NAME) {
            throw JsonMappingException.from(jsonParser, "Current token not FIELD_NAME (to contain expected root name '" + simpleName + "'), but " + jsonParser.getCurrentToken());
        } else {
            String currentName = jsonParser.getCurrentName();
            if (simpleName.equals(currentName)) {
                Object deserialize;
                jsonParser.nextToken();
                if (this._valueToUpdate == null) {
                    deserialize = jsonDeserializer.deserialize(jsonParser, deserializationContext);
                } else {
                    jsonDeserializer.deserialize(jsonParser, deserializationContext, this._valueToUpdate);
                    deserialize = this._valueToUpdate;
                }
                if (jsonParser.nextToken() == JsonToken.END_OBJECT) {
                    return deserialize;
                }
                throw JsonMappingException.from(jsonParser, "Current token not END_OBJECT (to match wrapper object with root name '" + simpleName + "'), but " + jsonParser.getCurrentToken());
            }
            throw JsonMappingException.from(jsonParser, "Root name '" + currentName + "' does not match expected ('" + simpleName + "') for type " + javaType);
        }
    }

    protected void _verifySchemaType(FormatSchema formatSchema) {
        if (formatSchema != null && !this._parserFactory.canUseSchema(formatSchema)) {
            throw new IllegalArgumentException("Can not use FormatSchema of type " + formatSchema.getClass().getName() + " for format " + this._parserFactory.getFormatName());
        }
    }

    protected ObjectReader _with(DeserializationConfig deserializationConfig) {
        if (deserializationConfig == this._config) {
            return this;
        }
        ObjectReader _new = _new(this, deserializationConfig);
        return this._dataFormatReaders != null ? _new.withFormatDetection(this._dataFormatReaders.with(deserializationConfig)) : _new;
    }

    public ObjectReader at(JsonPointer jsonPointer) {
        return new ObjectReader(this, new JsonPointerBasedFilter(jsonPointer));
    }

    public ObjectReader at(String str) {
        return new ObjectReader(this, new JsonPointerBasedFilter(str));
    }

    public JsonNode createArrayNode() {
        return this._config.getNodeFactory().arrayNode();
    }

    protected DefaultDeserializationContext createDeserializationContext(JsonParser jsonParser) {
        return this._context.createInstance(this._config, jsonParser, this._injectableValues);
    }

    public JsonNode createObjectNode() {
        return this._config.getNodeFactory().objectNode();
    }

    public ObjectReader forType(TypeReference<?> typeReference) {
        return forType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }

    public ObjectReader forType(JavaType javaType) {
        if (javaType != null && javaType.equals(this._valueType)) {
            return this;
        }
        JsonDeserializer _prefetchRootDeserializer = _prefetchRootDeserializer(javaType);
        DataFormatReaders dataFormatReaders = this._dataFormatReaders;
        if (dataFormatReaders != null) {
            dataFormatReaders = dataFormatReaders.withType(javaType);
        }
        return _new(this, this._config, javaType, _prefetchRootDeserializer, this._valueToUpdate, this._schema, this._injectableValues, dataFormatReaders);
    }

    public ObjectReader forType(Class<?> cls) {
        return forType(this._config.constructType((Class) cls));
    }

    public ContextAttributes getAttributes() {
        return this._config.getAttributes();
    }

    public DeserializationConfig getConfig() {
        return this._config;
    }

    public JsonFactory getFactory() {
        return this._parserFactory;
    }

    public InjectableValues getInjectableValues() {
        return this._injectableValues;
    }

    public TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    public boolean isEnabled(Feature feature) {
        return this._parserFactory.isEnabled(feature);
    }

    public boolean isEnabled(DeserializationFeature deserializationFeature) {
        return this._config.isEnabled(deserializationFeature);
    }

    public boolean isEnabled(MapperFeature mapperFeature) {
        return this._config.isEnabled(mapperFeature);
    }

    public <T extends TreeNode> T readTree(JsonParser jsonParser) throws IOException, JsonProcessingException {
        return _bindAsTree(jsonParser);
    }

    public JsonNode readTree(InputStream inputStream) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndCloseAsTree(inputStream) : _bindAndCloseAsTree(_considerFilter(this._parserFactory.createParser(inputStream)));
    }

    public JsonNode readTree(Reader reader) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(reader);
        }
        return _bindAndCloseAsTree(_considerFilter(this._parserFactory.createParser(reader)));
    }

    public JsonNode readTree(String str) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(str);
        }
        return _bindAndCloseAsTree(_considerFilter(this._parserFactory.createParser(str)));
    }

    public <T> T readValue(JsonParser jsonParser) throws IOException, JsonProcessingException {
        return _bind(jsonParser, this._valueToUpdate);
    }

    public <T> T readValue(JsonParser jsonParser, ResolvedType resolvedType) throws IOException, JsonProcessingException {
        return forType((JavaType) resolvedType).readValue(jsonParser);
    }

    public <T> T readValue(JsonParser jsonParser, TypeReference<?> typeReference) throws IOException, JsonProcessingException {
        return forType((TypeReference) typeReference).readValue(jsonParser);
    }

    public <T> T readValue(JsonParser jsonParser, JavaType javaType) throws IOException, JsonProcessingException {
        return forType(javaType).readValue(jsonParser);
    }

    public <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException, JsonProcessingException {
        return forType((Class) cls).readValue(jsonParser);
    }

    public <T> T readValue(JsonNode jsonNode) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(jsonNode);
        }
        return _bindAndClose(_considerFilter(treeAsTokens(jsonNode)));
    }

    public <T> T readValue(File file) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndClose(this._dataFormatReaders.findFormat(_inputStream(file)), true) : _bindAndClose(_considerFilter(this._parserFactory.createParser(file)));
    }

    public <T> T readValue(InputStream inputStream) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndClose(this._dataFormatReaders.findFormat(inputStream), false) : _bindAndClose(_considerFilter(this._parserFactory.createParser(inputStream)));
    }

    public <T> T readValue(Reader reader) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(reader);
        }
        return _bindAndClose(_considerFilter(this._parserFactory.createParser(reader)));
    }

    public <T> T readValue(String str) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(str);
        }
        return _bindAndClose(_considerFilter(this._parserFactory.createParser(str)));
    }

    public <T> T readValue(URL url) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndClose(this._dataFormatReaders.findFormat(_inputStream(url)), true) : _bindAndClose(_considerFilter(this._parserFactory.createParser(url)));
    }

    public <T> T readValue(byte[] bArr) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndClose(bArr, 0, bArr.length) : _bindAndClose(_considerFilter(this._parserFactory.createParser(bArr)));
    }

    public <T> T readValue(byte[] bArr, int i, int i2) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndClose(bArr, i, i2) : _bindAndClose(_considerFilter(this._parserFactory.createParser(bArr, i, i2)));
    }

    public <T> MappingIterator<T> readValues(JsonParser jsonParser) throws IOException, JsonProcessingException {
        DeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
        return _newIterator(jsonParser, createDeserializationContext, _findRootDeserializer(createDeserializationContext), false);
    }

    public <T> MappingIterator<T> readValues(File file) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(_inputStream(file)), false) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(file)));
    }

    public <T> MappingIterator<T> readValues(InputStream inputStream) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(inputStream), false) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(inputStream)));
    }

    public <T> MappingIterator<T> readValues(Reader reader) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(reader);
        }
        JsonParser _considerFilter = _considerFilter(this._parserFactory.createParser(reader));
        _initForMultiRead(_considerFilter);
        _considerFilter.nextToken();
        DeserializationContext createDeserializationContext = createDeserializationContext(_considerFilter);
        return _newIterator(_considerFilter, createDeserializationContext, _findRootDeserializer(createDeserializationContext), true);
    }

    public <T> MappingIterator<T> readValues(String str) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(str);
        }
        JsonParser _considerFilter = _considerFilter(this._parserFactory.createParser(str));
        _initForMultiRead(_considerFilter);
        _considerFilter.nextToken();
        DeserializationContext createDeserializationContext = createDeserializationContext(_considerFilter);
        return _newIterator(_considerFilter, createDeserializationContext, _findRootDeserializer(createDeserializationContext), true);
    }

    public <T> MappingIterator<T> readValues(URL url) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(_inputStream(url)), true) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(url)));
    }

    public final <T> MappingIterator<T> readValues(byte[] bArr) throws IOException, JsonProcessingException {
        return readValues(bArr, 0, bArr.length);
    }

    public <T> MappingIterator<T> readValues(byte[] bArr, int i, int i2) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(bArr, i, i2), false) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(bArr)));
    }

    public <T> Iterator<T> readValues(JsonParser jsonParser, ResolvedType resolvedType) throws IOException, JsonProcessingException {
        return readValues(jsonParser, (JavaType) resolvedType);
    }

    public <T> Iterator<T> readValues(JsonParser jsonParser, TypeReference<?> typeReference) throws IOException, JsonProcessingException {
        return forType((TypeReference) typeReference).readValues(jsonParser);
    }

    public <T> Iterator<T> readValues(JsonParser jsonParser, JavaType javaType) throws IOException, JsonProcessingException {
        return forType(javaType).readValues(jsonParser);
    }

    public <T> Iterator<T> readValues(JsonParser jsonParser, Class<T> cls) throws IOException, JsonProcessingException {
        return forType((Class) cls).readValues(jsonParser);
    }

    public JsonParser treeAsTokens(TreeNode treeNode) {
        return new TreeTraversingParser((JsonNode) treeNode, this);
    }

    public <T> T treeToValue(TreeNode treeNode, Class<T> cls) throws JsonProcessingException {
        try {
            return readValue(treeAsTokens(treeNode), (Class) cls);
        } catch (JsonProcessingException e) {
            throw e;
        } catch (Throwable e2) {
            throw new IllegalArgumentException(e2.getMessage(), e2);
        }
    }

    public Version version() {
        return PackageVersion.VERSION;
    }

    public ObjectReader with(Base64Variant base64Variant) {
        return _with(this._config.with(base64Variant));
    }

    public ObjectReader with(FormatSchema formatSchema) {
        if (this._schema == formatSchema) {
            return this;
        }
        _verifySchemaType(formatSchema);
        return _new(this, this._config, this._valueType, this._rootDeserializer, this._valueToUpdate, formatSchema, this._injectableValues, this._dataFormatReaders);
    }

    public ObjectReader with(JsonFactory jsonFactory) {
        if (jsonFactory != this._parserFactory) {
            this = _new(this, jsonFactory);
            if (jsonFactory.getCodec() == null) {
                jsonFactory.setCodec(this);
            }
        }
        return this;
    }

    public ObjectReader with(Feature feature) {
        return _with(this._config.with(feature));
    }

    public ObjectReader with(DeserializationConfig deserializationConfig) {
        return _with(deserializationConfig);
    }

    public ObjectReader with(DeserializationFeature deserializationFeature) {
        return _with(this._config.with(deserializationFeature));
    }

    public ObjectReader with(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.with(deserializationFeature, deserializationFeatureArr));
    }

    public ObjectReader with(InjectableValues injectableValues) {
        if (this._injectableValues == injectableValues) {
            return this;
        }
        return _new(this, this._config, this._valueType, this._rootDeserializer, this._valueToUpdate, this._schema, injectableValues, this._dataFormatReaders);
    }

    public ObjectReader with(ContextAttributes contextAttributes) {
        return _with(this._config.with(contextAttributes));
    }

    public ObjectReader with(JsonNodeFactory jsonNodeFactory) {
        return _with(this._config.with(jsonNodeFactory));
    }

    public ObjectReader with(Locale locale) {
        return _with(this._config.with(locale));
    }

    public ObjectReader with(TimeZone timeZone) {
        return _with(this._config.with(timeZone));
    }

    public ObjectReader withAttribute(Object obj, Object obj2) {
        return _with((DeserializationConfig) this._config.withAttribute(obj, obj2));
    }

    public ObjectReader withAttributes(Map<Object, Object> map) {
        return _with((DeserializationConfig) this._config.withAttributes(map));
    }

    public ObjectReader withFeatures(Feature... featureArr) {
        return _with(this._config.withFeatures(featureArr));
    }

    public ObjectReader withFeatures(DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.withFeatures(deserializationFeatureArr));
    }

    public ObjectReader withFormatDetection(DataFormatReaders dataFormatReaders) {
        return _new(this, this._config, this._valueType, this._rootDeserializer, this._valueToUpdate, this._schema, this._injectableValues, dataFormatReaders);
    }

    public ObjectReader withFormatDetection(ObjectReader... objectReaderArr) {
        return withFormatDetection(new DataFormatReaders(objectReaderArr));
    }

    public ObjectReader withHandler(DeserializationProblemHandler deserializationProblemHandler) {
        return _with(this._config.withHandler(deserializationProblemHandler));
    }

    public ObjectReader withRootName(PropertyName propertyName) {
        return _with(this._config.withRootName(propertyName));
    }

    public ObjectReader withRootName(String str) {
        return _with((DeserializationConfig) this._config.withRootName(str));
    }

    @Deprecated
    public ObjectReader withType(TypeReference<?> typeReference) {
        return forType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }

    @Deprecated
    public ObjectReader withType(JavaType javaType) {
        return forType(javaType);
    }

    @Deprecated
    public ObjectReader withType(Class<?> cls) {
        return forType(this._config.constructType((Class) cls));
    }

    @Deprecated
    public ObjectReader withType(Type type) {
        return forType(this._config.getTypeFactory().constructType(type));
    }

    public ObjectReader withValueToUpdate(Object obj) {
        if (obj == this._valueToUpdate) {
            return this;
        }
        if (obj == null) {
            throw new IllegalArgumentException("cat not update null value");
        }
        return _new(this, this._config, this._valueType == null ? this._config.constructType(obj.getClass()) : this._valueType, this._rootDeserializer, obj, this._schema, this._injectableValues, this._dataFormatReaders);
    }

    public ObjectReader withView(Class<?> cls) {
        return _with(this._config.withView((Class) cls));
    }

    public ObjectReader without(Feature feature) {
        return _with(this._config.without(feature));
    }

    public ObjectReader without(DeserializationFeature deserializationFeature) {
        return _with(this._config.without(deserializationFeature));
    }

    public ObjectReader without(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.without(deserializationFeature, deserializationFeatureArr));
    }

    public ObjectReader withoutAttribute(Object obj) {
        return _with((DeserializationConfig) this._config.withoutAttribute(obj));
    }

    public ObjectReader withoutFeatures(Feature... featureArr) {
        return _with(this._config.withoutFeatures(featureArr));
    }

    public ObjectReader withoutFeatures(DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.withoutFeatures(deserializationFeatureArr));
    }

    public ObjectReader withoutRootName() {
        return _with(this._config.withRootName(PropertyName.NO_NAME));
    }

    public void writeTree(JsonGenerator jsonGenerator, TreeNode treeNode) {
        throw new UnsupportedOperationException();
    }

    public void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException, JsonProcessingException {
        throw new UnsupportedOperationException("Not implemented for ObjectReader");
    }
}
