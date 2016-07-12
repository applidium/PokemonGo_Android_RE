package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.Module;
import com.fasterxml.jackson.databind.Module.SetupContext;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.deser.BeanDeserializerModifier;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.BeanSerializerModifier;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class SimpleModule extends Module implements Serializable {
    private static final long serialVersionUID = 1;
    protected SimpleAbstractTypeResolver _abstractTypes;
    protected BeanDeserializerModifier _deserializerModifier;
    protected SimpleDeserializers _deserializers;
    protected SimpleKeyDeserializers _keyDeserializers;
    protected SimpleSerializers _keySerializers;
    protected HashMap<Class<?>, Class<?>> _mixins;
    protected final String _name;
    protected PropertyNamingStrategy _namingStrategy;
    protected BeanSerializerModifier _serializerModifier;
    protected SimpleSerializers _serializers;
    protected LinkedHashSet<NamedType> _subtypes;
    protected SimpleValueInstantiators _valueInstantiators;
    protected final Version _version;

    public SimpleModule() {
        this._serializers = null;
        this._deserializers = null;
        this._keySerializers = null;
        this._keyDeserializers = null;
        this._abstractTypes = null;
        this._valueInstantiators = null;
        this._deserializerModifier = null;
        this._serializerModifier = null;
        this._mixins = null;
        this._subtypes = null;
        this._namingStrategy = null;
        this._name = getClass() == SimpleModule.class ? "SimpleModule-" + System.identityHashCode(this) : getClass().getName();
        this._version = Version.unknownVersion();
    }

    public SimpleModule(Version version) {
        this._serializers = null;
        this._deserializers = null;
        this._keySerializers = null;
        this._keyDeserializers = null;
        this._abstractTypes = null;
        this._valueInstantiators = null;
        this._deserializerModifier = null;
        this._serializerModifier = null;
        this._mixins = null;
        this._subtypes = null;
        this._namingStrategy = null;
        this._name = version.getArtifactId();
        this._version = version;
    }

    public SimpleModule(String str) {
        this(str, Version.unknownVersion());
    }

    public SimpleModule(String str, Version version) {
        this._serializers = null;
        this._deserializers = null;
        this._keySerializers = null;
        this._keyDeserializers = null;
        this._abstractTypes = null;
        this._valueInstantiators = null;
        this._deserializerModifier = null;
        this._serializerModifier = null;
        this._mixins = null;
        this._subtypes = null;
        this._namingStrategy = null;
        this._name = str;
        this._version = version;
    }

    public SimpleModule(String str, Version version, List<JsonSerializer<?>> list) {
        this(str, version, null, list);
    }

    public SimpleModule(String str, Version version, Map<Class<?>, JsonDeserializer<?>> map) {
        this(str, version, map, null);
    }

    public SimpleModule(String str, Version version, Map<Class<?>, JsonDeserializer<?>> map, List<JsonSerializer<?>> list) {
        this._serializers = null;
        this._deserializers = null;
        this._keySerializers = null;
        this._keyDeserializers = null;
        this._abstractTypes = null;
        this._valueInstantiators = null;
        this._deserializerModifier = null;
        this._serializerModifier = null;
        this._mixins = null;
        this._subtypes = null;
        this._namingStrategy = null;
        this._name = str;
        this._version = version;
        if (map != null) {
            this._deserializers = new SimpleDeserializers(map);
        }
        if (list != null) {
            this._serializers = new SimpleSerializers(list);
        }
    }

    public <T> SimpleModule addAbstractTypeMapping(Class<T> cls, Class<? extends T> cls2) {
        if (this._abstractTypes == null) {
            this._abstractTypes = new SimpleAbstractTypeResolver();
        }
        this._abstractTypes = this._abstractTypes.addMapping(cls, cls2);
        return this;
    }

    public <T> SimpleModule addDeserializer(Class<T> cls, JsonDeserializer<? extends T> jsonDeserializer) {
        if (this._deserializers == null) {
            this._deserializers = new SimpleDeserializers();
        }
        this._deserializers.addDeserializer(cls, jsonDeserializer);
        return this;
    }

    public SimpleModule addKeyDeserializer(Class<?> cls, KeyDeserializer keyDeserializer) {
        if (this._keyDeserializers == null) {
            this._keyDeserializers = new SimpleKeyDeserializers();
        }
        this._keyDeserializers.addDeserializer(cls, keyDeserializer);
        return this;
    }

    public <T> SimpleModule addKeySerializer(Class<? extends T> cls, JsonSerializer<T> jsonSerializer) {
        if (this._keySerializers == null) {
            this._keySerializers = new SimpleSerializers();
        }
        this._keySerializers.addSerializer(cls, jsonSerializer);
        return this;
    }

    public SimpleModule addSerializer(JsonSerializer<?> jsonSerializer) {
        if (this._serializers == null) {
            this._serializers = new SimpleSerializers();
        }
        this._serializers.addSerializer(jsonSerializer);
        return this;
    }

    public <T> SimpleModule addSerializer(Class<? extends T> cls, JsonSerializer<T> jsonSerializer) {
        if (this._serializers == null) {
            this._serializers = new SimpleSerializers();
        }
        this._serializers.addSerializer(cls, jsonSerializer);
        return this;
    }

    public SimpleModule addValueInstantiator(Class<?> cls, ValueInstantiator valueInstantiator) {
        if (this._valueInstantiators == null) {
            this._valueInstantiators = new SimpleValueInstantiators();
        }
        this._valueInstantiators = this._valueInstantiators.addValueInstantiator(cls, valueInstantiator);
        return this;
    }

    public String getModuleName() {
        return this._name;
    }

    public Object getTypeId() {
        return getClass() == SimpleModule.class ? null : super.getTypeId();
    }

    public SimpleModule registerSubtypes(NamedType... namedTypeArr) {
        if (this._subtypes == null) {
            this._subtypes = new LinkedHashSet(Math.max(16, namedTypeArr.length));
        }
        for (Object add : namedTypeArr) {
            this._subtypes.add(add);
        }
        return this;
    }

    public SimpleModule registerSubtypes(Class<?>... clsArr) {
        if (this._subtypes == null) {
            this._subtypes = new LinkedHashSet(Math.max(16, clsArr.length));
        }
        for (Class namedType : clsArr) {
            this._subtypes.add(new NamedType(namedType));
        }
        return this;
    }

    public void setAbstractTypes(SimpleAbstractTypeResolver simpleAbstractTypeResolver) {
        this._abstractTypes = simpleAbstractTypeResolver;
    }

    public SimpleModule setDeserializerModifier(BeanDeserializerModifier beanDeserializerModifier) {
        this._deserializerModifier = beanDeserializerModifier;
        return this;
    }

    public void setDeserializers(SimpleDeserializers simpleDeserializers) {
        this._deserializers = simpleDeserializers;
    }

    public void setKeyDeserializers(SimpleKeyDeserializers simpleKeyDeserializers) {
        this._keyDeserializers = simpleKeyDeserializers;
    }

    public void setKeySerializers(SimpleSerializers simpleSerializers) {
        this._keySerializers = simpleSerializers;
    }

    public SimpleModule setMixInAnnotation(Class<?> cls, Class<?> cls2) {
        if (this._mixins == null) {
            this._mixins = new HashMap();
        }
        this._mixins.put(cls, cls2);
        return this;
    }

    protected SimpleModule setNamingStrategy(PropertyNamingStrategy propertyNamingStrategy) {
        this._namingStrategy = propertyNamingStrategy;
        return this;
    }

    public SimpleModule setSerializerModifier(BeanSerializerModifier beanSerializerModifier) {
        this._serializerModifier = beanSerializerModifier;
        return this;
    }

    public void setSerializers(SimpleSerializers simpleSerializers) {
        this._serializers = simpleSerializers;
    }

    public void setValueInstantiators(SimpleValueInstantiators simpleValueInstantiators) {
        this._valueInstantiators = simpleValueInstantiators;
    }

    public void setupModule(SetupContext setupContext) {
        if (this._serializers != null) {
            setupContext.addSerializers(this._serializers);
        }
        if (this._deserializers != null) {
            setupContext.addDeserializers(this._deserializers);
        }
        if (this._keySerializers != null) {
            setupContext.addKeySerializers(this._keySerializers);
        }
        if (this._keyDeserializers != null) {
            setupContext.addKeyDeserializers(this._keyDeserializers);
        }
        if (this._abstractTypes != null) {
            setupContext.addAbstractTypeResolver(this._abstractTypes);
        }
        if (this._valueInstantiators != null) {
            setupContext.addValueInstantiators(this._valueInstantiators);
        }
        if (this._deserializerModifier != null) {
            setupContext.addBeanDeserializerModifier(this._deserializerModifier);
        }
        if (this._serializerModifier != null) {
            setupContext.addBeanSerializerModifier(this._serializerModifier);
        }
        if (this._subtypes != null && this._subtypes.size() > 0) {
            setupContext.registerSubtypes((NamedType[]) this._subtypes.toArray(new NamedType[this._subtypes.size()]));
        }
        if (this._namingStrategy != null) {
            setupContext.setNamingStrategy(this._namingStrategy);
        }
        if (this._mixins != null) {
            for (Entry entry : this._mixins.entrySet()) {
                setupContext.setMixInAnnotations((Class) entry.getKey(), (Class) entry.getValue());
            }
        }
    }

    public Version version() {
        return this._version;
    }
}
