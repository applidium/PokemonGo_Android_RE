package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.databind.ObjectWriter.Prefetch;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;

public class SequenceWriter implements Versioned, Closeable, Flushable {
    protected final boolean _cfgCloseCloseable;
    protected final boolean _cfgFlush;
    protected final boolean _closeGenerator;
    protected boolean _closed;
    protected final SerializationConfig _config;
    protected PropertySerializerMap _dynamicSerializers;
    protected final JsonGenerator _generator;
    protected boolean _openArray;
    protected final DefaultSerializerProvider _provider;
    protected final JsonSerializer<Object> _rootSerializer;
    protected final TypeSerializer _typeSerializer;

    public SequenceWriter(DefaultSerializerProvider defaultSerializerProvider, JsonGenerator jsonGenerator, boolean z, Prefetch prefetch) throws IOException {
        this._provider = defaultSerializerProvider;
        this._generator = jsonGenerator;
        this._closeGenerator = z;
        this._rootSerializer = prefetch.getValueSerializer();
        this._typeSerializer = prefetch.getTypeSerializer();
        this._config = defaultSerializerProvider.getConfig();
        this._cfgFlush = this._config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE);
        this._cfgCloseCloseable = this._config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE);
        this._dynamicSerializers = PropertySerializerMap.emptyForRootValues();
    }

    private final JsonSerializer<Object> _findAndAddDynamic(JavaType javaType) throws JsonMappingException {
        SerializerAndMapResult findAndAddRootValueSerializer = this._typeSerializer == null ? this._dynamicSerializers.findAndAddRootValueSerializer(javaType, this._provider) : this._dynamicSerializers.addSerializer(javaType, new TypeWrappedSerializer(this._typeSerializer, this._provider.findValueSerializer(javaType, null)));
        this._dynamicSerializers = findAndAddRootValueSerializer.map;
        return findAndAddRootValueSerializer.serializer;
    }

    private final JsonSerializer<Object> _findAndAddDynamic(Class<?> cls) throws JsonMappingException {
        SerializerAndMapResult findAndAddRootValueSerializer = this._typeSerializer == null ? this._dynamicSerializers.findAndAddRootValueSerializer((Class) cls, this._provider) : this._dynamicSerializers.addSerializer((Class) cls, new TypeWrappedSerializer(this._typeSerializer, this._provider.findValueSerializer((Class) cls, null)));
        this._dynamicSerializers = findAndAddRootValueSerializer.map;
        return findAndAddRootValueSerializer.serializer;
    }

    protected SequenceWriter _writeCloseableValue(Object obj) throws IOException {
        Throwable th;
        Closeable closeable;
        Closeable closeable2 = (Closeable) obj;
        try {
            JsonSerializer jsonSerializer = this._rootSerializer;
            if (jsonSerializer == null) {
                Class cls = obj.getClass();
                jsonSerializer = this._dynamicSerializers.serializerFor(cls);
                if (jsonSerializer == null) {
                    jsonSerializer = _findAndAddDynamic(cls);
                }
            }
            this._provider.serializeValue(this._generator, obj, null, jsonSerializer);
            if (this._cfgFlush) {
                this._generator.flush();
            }
            try {
                closeable2.close();
                return this;
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException e) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            closeable = closeable2;
            th = th4;
            if (closeable != null) {
                closeable.close();
            }
            throw th;
        }
    }

    protected SequenceWriter _writeCloseableValue(Object obj, JavaType javaType) throws IOException {
        Closeable closeable;
        Throwable th;
        Closeable closeable2 = (Closeable) obj;
        try {
            JsonSerializer serializerFor = this._dynamicSerializers.serializerFor(javaType.getRawClass());
            if (serializerFor == null) {
                serializerFor = _findAndAddDynamic(javaType);
            }
            this._provider.serializeValue(this._generator, obj, javaType, serializerFor);
            if (this._cfgFlush) {
                this._generator.flush();
            }
            closeable = null;
            try {
                closeable2.close();
                return this;
            } catch (Throwable th2) {
                th = th2;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException e) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            closeable = closeable2;
            th = th4;
            if (closeable != null) {
                closeable.close();
            }
            throw th;
        }
    }

    public void close() throws IOException {
        if (!this._closed) {
            this._closed = true;
            if (this._openArray) {
                this._openArray = false;
                this._generator.writeEndArray();
            }
            if (this._closeGenerator) {
                this._generator.close();
            }
        }
    }

    public void flush() throws IOException {
        if (!this._closed) {
            this._generator.flush();
        }
    }

    public SequenceWriter init(boolean z) throws IOException {
        if (z) {
            this._generator.writeStartArray();
            this._openArray = true;
        }
        return this;
    }

    public Version version() {
        return PackageVersion.VERSION;
    }

    public SequenceWriter write(Object obj) throws IOException {
        if (obj == null) {
            this._provider.serializeValue(this._generator, null);
            return this;
        } else if (this._cfgCloseCloseable && (obj instanceof Closeable)) {
            return _writeCloseableValue(obj);
        } else {
            JsonSerializer jsonSerializer = this._rootSerializer;
            if (jsonSerializer == null) {
                Class cls = obj.getClass();
                jsonSerializer = this._dynamicSerializers.serializerFor(cls);
                if (jsonSerializer == null) {
                    jsonSerializer = _findAndAddDynamic(cls);
                }
            }
            this._provider.serializeValue(this._generator, obj, null, jsonSerializer);
            if (!this._cfgFlush) {
                return this;
            }
            this._generator.flush();
            return this;
        }
    }

    public SequenceWriter write(Object obj, JavaType javaType) throws IOException {
        if (obj == null) {
            this._provider.serializeValue(this._generator, null);
            return this;
        } else if (this._cfgCloseCloseable && (obj instanceof Closeable)) {
            return _writeCloseableValue(obj, javaType);
        } else {
            JsonSerializer serializerFor = this._dynamicSerializers.serializerFor(javaType.getRawClass());
            if (serializerFor == null) {
                serializerFor = _findAndAddDynamic(javaType);
            }
            this._provider.serializeValue(this._generator, obj, javaType, serializerFor);
            if (!this._cfgFlush) {
                return this;
            }
            this._generator.flush();
            return this;
        }
    }

    public <C extends Collection<?>> SequenceWriter writeAll(C c) throws IOException {
        for (Object write : c) {
            write(write);
        }
        return this;
    }

    public SequenceWriter writeAll(Object[] objArr) throws IOException {
        for (Object write : objArr) {
            write(write);
        }
        return this;
    }
}
