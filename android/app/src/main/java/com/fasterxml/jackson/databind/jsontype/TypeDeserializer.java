package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.IOException;
import spacemadness.com.lunarconsole.C1401R;

public abstract class TypeDeserializer {

    /* renamed from: com.fasterxml.jackson.databind.jsontype.TypeDeserializer.1 */
    static /* synthetic */ class C01561 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken;

        static {
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[JsonToken.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public static Object deserializeIfNatural(JsonParser jsonParser, DeserializationContext deserializationContext, JavaType javaType) throws IOException {
        return deserializeIfNatural(jsonParser, deserializationContext, javaType.getRawClass());
    }

    public static Object deserializeIfNatural(JsonParser jsonParser, DeserializationContext deserializationContext, Class<?> cls) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == null) {
            return null;
        }
        switch (C01561.$SwitchMap$com$fasterxml$jackson$core$JsonToken[currentToken.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return cls.isAssignableFrom(String.class) ? jsonParser.getText() : null;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return cls.isAssignableFrom(Integer.class) ? Integer.valueOf(jsonParser.getIntValue()) : null;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return cls.isAssignableFrom(Double.class) ? Double.valueOf(jsonParser.getDoubleValue()) : null;
            case Place.TYPE_AQUARIUM /*4*/:
                return cls.isAssignableFrom(Boolean.class) ? Boolean.TRUE : null;
            case Place.TYPE_ART_GALLERY /*5*/:
                return cls.isAssignableFrom(Boolean.class) ? Boolean.FALSE : null;
            default:
                return null;
        }
    }

    public abstract Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract Object deserializeTypedFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract Object deserializeTypedFromScalar(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    public abstract TypeDeserializer forProperty(BeanProperty beanProperty);

    public abstract Class<?> getDefaultImpl();

    public abstract String getPropertyName();

    public abstract TypeIdResolver getTypeIdResolver();

    public abstract As getTypeInclusion();
}
