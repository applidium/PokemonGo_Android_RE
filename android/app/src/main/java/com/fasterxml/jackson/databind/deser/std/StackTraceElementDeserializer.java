package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.io.IOException;
import spacemadness.com.lunarconsole.BuildConfig;

public class StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement> {
    private static final long serialVersionUID = 1;

    public StackTraceElementDeserializer() {
        super(StackTraceElement.class);
    }

    public StackTraceElement deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            JsonToken nextValue;
            String str = BuildConfig.FLAVOR;
            String str2 = BuildConfig.FLAVOR;
            String str3 = BuildConfig.FLAVOR;
            int i = -1;
            while (true) {
                nextValue = jsonParser.nextValue();
                if (nextValue == JsonToken.END_OBJECT) {
                    return new StackTraceElement(str, str2, str3, i);
                }
                String currentName = jsonParser.getCurrentName();
                if ("className".equals(currentName)) {
                    str = jsonParser.getText();
                } else if ("fileName".equals(currentName)) {
                    str3 = jsonParser.getText();
                } else if ("lineNumber".equals(currentName)) {
                    if (!nextValue.isNumeric()) {
                        break;
                    }
                    i = jsonParser.getIntValue();
                } else if ("methodName".equals(currentName)) {
                    str2 = jsonParser.getText();
                } else if (!"nativeMethod".equals(currentName)) {
                    handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
                }
            }
            throw JsonMappingException.from(jsonParser, "Non-numeric token (" + nextValue + ") for property 'lineNumber'");
        } else if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            StackTraceElement deserialize = deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                return deserialize;
            }
            throw deserializationContext.wrongTokenException(jsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'java.lang.StackTraceElement' value but there was more than a single value in the array");
        } else {
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        }
    }
}
