package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerator.IdKey;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.annotation.SimpleObjectIdResolver;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.InjectableValues;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonDeserializer.None;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map.Entry;

public abstract class DefaultDeserializationContext extends DeserializationContext implements Serializable {
    private static final long serialVersionUID = 1;
    private List<ObjectIdResolver> _objectIdResolvers;
    protected transient LinkedHashMap<IdKey, ReadableObjectId> _objectIds;

    public static final class Impl extends DefaultDeserializationContext {
        private static final long serialVersionUID = 1;

        protected Impl(Impl impl) {
            super(impl);
        }

        protected Impl(Impl impl, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
            super(impl, deserializationConfig, jsonParser, injectableValues);
        }

        protected Impl(Impl impl, DeserializerFactory deserializerFactory) {
            super((DefaultDeserializationContext) impl, deserializerFactory);
        }

        public Impl(DeserializerFactory deserializerFactory) {
            super(deserializerFactory, null);
        }

        public DefaultDeserializationContext copy() {
            return getClass() != Impl.class ? super.copy() : new Impl(this);
        }

        public DefaultDeserializationContext createInstance(DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
            return new Impl(this, deserializationConfig, jsonParser, injectableValues);
        }

        public DefaultDeserializationContext with(DeserializerFactory deserializerFactory) {
            return new Impl(this, deserializerFactory);
        }
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext) {
        super((DeserializationContext) defaultDeserializationContext);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
        super(defaultDeserializationContext, deserializationConfig, jsonParser, injectableValues);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, DeserializerFactory deserializerFactory) {
        super((DeserializationContext) defaultDeserializationContext, deserializerFactory);
    }

    protected DefaultDeserializationContext(DeserializerFactory deserializerFactory, DeserializerCache deserializerCache) {
        super(deserializerFactory, deserializerCache);
    }

    public void checkUnresolvedObjectId() throws UnresolvedForwardReference {
        if (this._objectIds != null && isEnabled(DeserializationFeature.FAIL_ON_UNRESOLVED_OBJECT_IDS)) {
            UnresolvedForwardReference unresolvedForwardReference = null;
            for (Entry value : this._objectIds.entrySet()) {
                ReadableObjectId readableObjectId = (ReadableObjectId) value.getValue();
                if (readableObjectId.hasReferringProperties() && !tryToResolveUnresolvedObjectId(readableObjectId)) {
                    if (unresolvedForwardReference == null) {
                        unresolvedForwardReference = new UnresolvedForwardReference("Unresolved forward references for: ");
                    }
                    Object obj = readableObjectId.getKey().key;
                    Iterator referringProperties = readableObjectId.referringProperties();
                    while (referringProperties.hasNext()) {
                        Referring referring = (Referring) referringProperties.next();
                        unresolvedForwardReference.addUnresolvedId(obj, referring.getBeanType(), referring.getLocation());
                    }
                }
            }
            if (unresolvedForwardReference != null) {
                throw unresolvedForwardReference;
            }
        }
    }

    public DefaultDeserializationContext copy() {
        throw new IllegalStateException("DefaultDeserializationContext sub-class not overriding copy()");
    }

    public abstract DefaultDeserializationContext createInstance(DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues);

    public JsonDeserializer<Object> deserializerInstance(Annotated annotated, Object obj) throws JsonMappingException {
        JsonDeserializer<Object> jsonDeserializer = null;
        if (obj != null) {
            if (obj instanceof JsonDeserializer) {
                jsonDeserializer = (JsonDeserializer) obj;
            } else if (obj instanceof Class) {
                Class cls = (Class) obj;
                if (!(cls == None.class || ClassUtil.isBogusClass(cls))) {
                    if (JsonDeserializer.class.isAssignableFrom(cls)) {
                        HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                        if (handlerInstantiator != null) {
                            jsonDeserializer = handlerInstantiator.deserializerInstance(this._config, annotated, cls);
                        }
                        if (jsonDeserializer == null) {
                            jsonDeserializer = (JsonDeserializer) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
                        }
                    } else {
                        throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<JsonDeserializer>");
                    }
                }
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned deserializer definition of type " + obj.getClass().getName() + "; expected type JsonDeserializer or Class<JsonDeserializer> instead");
            }
            if (jsonDeserializer instanceof ResolvableDeserializer) {
                ((ResolvableDeserializer) jsonDeserializer).resolve(this);
            }
        }
        return jsonDeserializer;
    }

    @Deprecated
    public ReadableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator) {
        return findObjectId(obj, objectIdGenerator, new SimpleObjectIdResolver());
    }

    public ReadableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator, ObjectIdResolver objectIdResolver) {
        if (obj == null) {
            return null;
        }
        ReadableObjectId readableObjectId;
        ObjectIdResolver objectIdResolver2;
        IdKey key = objectIdGenerator.key(obj);
        if (this._objectIds == null) {
            this._objectIds = new LinkedHashMap();
        } else {
            readableObjectId = (ReadableObjectId) this._objectIds.get(key);
            if (readableObjectId != null) {
                return readableObjectId;
            }
        }
        if (this._objectIdResolvers == null) {
            this._objectIdResolvers = new ArrayList(8);
            objectIdResolver2 = null;
        } else {
            for (ObjectIdResolver objectIdResolver22 : this._objectIdResolvers) {
                if (objectIdResolver22.canUseFor(objectIdResolver)) {
                    break;
                }
            }
            objectIdResolver22 = null;
        }
        if (objectIdResolver22 == null) {
            objectIdResolver22 = objectIdResolver.newForDeserialization(this);
            this._objectIdResolvers.add(objectIdResolver22);
        }
        ObjectIdResolver objectIdResolver3 = objectIdResolver22;
        readableObjectId = new ReadableObjectId(key);
        readableObjectId.setResolver(objectIdResolver3);
        this._objectIds.put(key, readableObjectId);
        return readableObjectId;
    }

    public final KeyDeserializer keyDeserializerInstance(Annotated annotated, Object obj) throws JsonMappingException {
        KeyDeserializer keyDeserializer = null;
        if (obj != null) {
            if (obj instanceof KeyDeserializer) {
                keyDeserializer = (KeyDeserializer) obj;
            } else if (obj instanceof Class) {
                Class cls = (Class) obj;
                if (!(cls == KeyDeserializer.None.class || ClassUtil.isBogusClass(cls))) {
                    if (KeyDeserializer.class.isAssignableFrom(cls)) {
                        HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                        if (handlerInstantiator != null) {
                            keyDeserializer = handlerInstantiator.keyDeserializerInstance(this._config, annotated, cls);
                        }
                        if (keyDeserializer == null) {
                            keyDeserializer = (KeyDeserializer) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
                        }
                    } else {
                        throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<KeyDeserializer>");
                    }
                }
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
            }
            if (keyDeserializer instanceof ResolvableDeserializer) {
                ((ResolvableDeserializer) keyDeserializer).resolve(this);
            }
        }
        return keyDeserializer;
    }

    protected boolean tryToResolveUnresolvedObjectId(ReadableObjectId readableObjectId) {
        return readableObjectId.tryToResolveUnresolved(this);
    }

    public abstract DefaultDeserializationContext with(DeserializerFactory deserializerFactory);
}
