package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
import spacemadness.com.lunarconsole.BuildConfig;

public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T> {

    public static class Std extends FromStringDeserializer<Object> {
        public static final int STD_CHARSET = 9;
        public static final int STD_CLASS = 4;
        public static final int STD_CURRENCY = 6;
        public static final int STD_FILE = 1;
        public static final int STD_INET_ADDRESS = 11;
        public static final int STD_INET_SOCKET_ADDRESS = 12;
        public static final int STD_JAVA_TYPE = 5;
        public static final int STD_LOCALE = 8;
        public static final int STD_PATTERN = 7;
        public static final int STD_TIME_ZONE = 10;
        public static final int STD_URI = 3;
        public static final int STD_URL = 2;
        private static final long serialVersionUID = 1;
        protected final int _kind;

        protected Std(Class<?> cls, int i) {
            super(cls);
            this._kind = i;
        }

        protected Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            int indexOf;
            switch (this._kind) {
                case STD_FILE /*1*/:
                    return new File(str);
                case STD_URL /*2*/:
                    return new URL(str);
                case STD_URI /*3*/:
                    return URI.create(str);
                case STD_CLASS /*4*/:
                    try {
                        return deserializationContext.findClass(str);
                    } catch (Throwable e) {
                        throw deserializationContext.instantiationException(this._valueClass, ClassUtil.getRootCause(e));
                    }
                case STD_JAVA_TYPE /*5*/:
                    return deserializationContext.getTypeFactory().constructFromCanonical(str);
                case STD_CURRENCY /*6*/:
                    return Currency.getInstance(str);
                case STD_PATTERN /*7*/:
                    return Pattern.compile(str);
                case STD_LOCALE /*8*/:
                    indexOf = str.indexOf(95);
                    if (indexOf < 0) {
                        return new Locale(str);
                    }
                    String substring = str.substring(0, indexOf);
                    String substring2 = str.substring(indexOf + STD_FILE);
                    int indexOf2 = substring2.indexOf(95);
                    return indexOf2 < 0 ? new Locale(substring, substring2) : new Locale(substring, substring2.substring(0, indexOf2), substring2.substring(indexOf2 + STD_FILE));
                case STD_CHARSET /*9*/:
                    return Charset.forName(str);
                case STD_TIME_ZONE /*10*/:
                    return TimeZone.getTimeZone(str);
                case STD_INET_ADDRESS /*11*/:
                    return InetAddress.getByName(str);
                case STD_INET_SOCKET_ADDRESS /*12*/:
                    if (str.startsWith("[")) {
                        int lastIndexOf = str.lastIndexOf(93);
                        if (lastIndexOf == -1) {
                            throw new InvalidFormatException("Bracketed IPv6 address must contain closing bracket", str, InetSocketAddress.class);
                        }
                        indexOf = str.indexOf(58, lastIndexOf);
                        return new InetSocketAddress(str.substring(0, lastIndexOf + STD_FILE), indexOf > -1 ? Integer.parseInt(str.substring(indexOf + STD_FILE)) : 0);
                    }
                    int indexOf3 = str.indexOf(58);
                    if (indexOf3 < 0 || str.indexOf(58, indexOf3 + STD_FILE) >= 0) {
                        return new InetSocketAddress(str, 0);
                    }
                    return new InetSocketAddress(str.substring(0, indexOf3), Integer.parseInt(str.substring(indexOf3 + STD_FILE)));
                default:
                    throw new IllegalArgumentException();
            }
        }

        protected Object _deserializeFromEmptyString() throws IOException {
            return this._kind == STD_URI ? URI.create(BuildConfig.FLAVOR) : super._deserializeFromEmptyString();
        }
    }

    protected FromStringDeserializer(Class<?> cls) {
        super((Class) cls);
    }

    public static Std findDeserializer(Class<?> cls) {
        int i;
        if (cls == File.class) {
            i = 1;
        } else if (cls == URL.class) {
            i = 2;
        } else if (cls == URI.class) {
            i = 3;
        } else if (cls == Class.class) {
            i = 4;
        } else if (cls == JavaType.class) {
            i = 5;
        } else if (cls == Currency.class) {
            i = 6;
        } else if (cls == Pattern.class) {
            i = 7;
        } else if (cls == Locale.class) {
            i = 8;
        } else if (cls == Charset.class) {
            i = 9;
        } else if (cls == TimeZone.class) {
            i = 10;
        } else if (cls == InetAddress.class) {
            i = 11;
        } else if (cls != InetSocketAddress.class) {
            return null;
        } else {
            i = 12;
        }
        return new Std(cls, i);
    }

    public static Class<?>[] types() {
        return new Class[]{File.class, URL.class, URI.class, Class.class, JavaType.class, Currency.class, Pattern.class, Locale.class, Charset.class, TimeZone.class, InetAddress.class, InetSocketAddress.class};
    }

    protected abstract T _deserialize(String str, DeserializationContext deserializationContext) throws IOException;

    protected T _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        throw deserializationContext.mappingException("Don't know how to convert embedded Object of type %s into %s", obj.getClass().getName(), this._valueClass.getName());
    }

    protected T _deserializeFromEmptyString() throws IOException {
        return null;
    }

    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Throwable th = null;
        T deserialize;
        if (jsonParser.getCurrentToken() == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            deserialize = deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                return deserialize;
            }
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single '" + this._valueClass.getName() + "' value but there was more than a single value in the array");
        }
        String valueAsString = jsonParser.getValueAsString();
        if (valueAsString != null) {
            if (valueAsString.length() != 0) {
                String trim = valueAsString.trim();
                if (trim.length() != 0) {
                    try {
                        deserialize = _deserialize(trim, deserializationContext);
                        if (deserialize != null) {
                            return deserialize;
                        }
                    } catch (IllegalArgumentException e) {
                        th = e;
                    }
                    valueAsString = "not a valid textual representation";
                    if (th != null) {
                        String message = th.getMessage();
                        if (message != null) {
                            valueAsString = "not a valid textual representation" + ", problem: " + message;
                        }
                    }
                    JsonMappingException weirdStringException = deserializationContext.weirdStringException(trim, this._valueClass, valueAsString);
                    if (th != null) {
                        weirdStringException.initCause(th);
                    }
                    throw weirdStringException;
                }
            }
            return _deserializeFromEmptyString();
        } else if (jsonParser.getCurrentToken() == JsonToken.VALUE_EMBEDDED_OBJECT) {
            deserialize = jsonParser.getEmbeddedObject();
            return deserialize == null ? null : !this._valueClass.isAssignableFrom(deserialize.getClass()) ? _deserializeEmbedded(deserialize, deserializationContext) : deserialize;
        } else {
            throw deserializationContext.mappingException(this._valueClass);
        }
    }
}
