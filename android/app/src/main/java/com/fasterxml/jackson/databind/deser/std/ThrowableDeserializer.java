package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.BeanDeserializer;
import com.fasterxml.jackson.databind.deser.BeanDeserializerBase;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;

public class ThrowableDeserializer extends BeanDeserializer {
    protected static final String PROP_NAME_MESSAGE = "message";
    private static final long serialVersionUID = 1;

    public ThrowableDeserializer(BeanDeserializer beanDeserializer) {
        super(beanDeserializer);
        this._vanillaProcessing = false;
    }

    protected ThrowableDeserializer(BeanDeserializer beanDeserializer, NameTransformer nameTransformer) {
        super((BeanDeserializerBase) beanDeserializer, nameTransformer);
    }

    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i = 0;
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        if (this._delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._beanType.isAbstract()) {
            throw JsonMappingException.from(jsonParser, "Can not instantiate abstract type " + this._beanType + " (need to add/enable type information?)");
        }
        boolean canCreateFromString = this._valueInstantiator.canCreateFromString();
        boolean canCreateUsingDefault = this._valueInstantiator.canCreateUsingDefault();
        if (canCreateFromString || canCreateUsingDefault) {
            Object obj = null;
            Object[] objArr = null;
            int i2 = 0;
            while (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                Object[] objArr2;
                Object obj2;
                int i3;
                String currentName = jsonParser.getCurrentName();
                SettableBeanProperty find = this._beanProperties.find(currentName);
                jsonParser.nextToken();
                if (find != null) {
                    if (obj != null) {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                        objArr2 = objArr;
                        obj2 = obj;
                        i3 = i2;
                    } else {
                        if (objArr == null) {
                            int size = this._beanProperties.size();
                            objArr2 = new Object[(size + size)];
                        } else {
                            objArr2 = objArr;
                        }
                        int i4 = i2 + 1;
                        objArr2[i2] = find;
                        int i5 = i4 + 1;
                        objArr2[i4] = find.deserialize(jsonParser, deserializationContext);
                        Object obj3 = obj;
                        i3 = i5;
                        obj2 = obj3;
                    }
                } else if (PROP_NAME_MESSAGE.equals(currentName) && canCreateFromString) {
                    obj = this._valueInstantiator.createFromString(deserializationContext, jsonParser.getText());
                    if (objArr != null) {
                        for (int i6 = 0; i6 < i2; i6 += 2) {
                            ((SettableBeanProperty) objArr[i6]).set(obj, objArr[i6 + 1]);
                        }
                        objArr2 = null;
                        obj2 = obj;
                        i3 = i2;
                    } else {
                        objArr2 = objArr;
                        obj2 = obj;
                        i3 = i2;
                    }
                } else if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                    jsonParser.skipChildren();
                    objArr2 = objArr;
                    obj2 = obj;
                    i3 = i2;
                } else if (this._anySetter != null) {
                    this._anySetter.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                    objArr2 = objArr;
                    obj2 = obj;
                    i3 = i2;
                } else {
                    handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                    objArr2 = objArr;
                    obj2 = obj;
                    i3 = i2;
                }
                jsonParser.nextToken();
                i2 = i3;
                obj = obj2;
                objArr = objArr2;
            }
            if (obj != null) {
                return obj;
            }
            obj = canCreateFromString ? this._valueInstantiator.createFromString(deserializationContext, null) : this._valueInstantiator.createUsingDefault(deserializationContext);
            if (objArr == null) {
                return obj;
            }
            while (i < i2) {
                ((SettableBeanProperty) objArr[i]).set(obj, objArr[i + 1]);
                i += 2;
            }
            return obj;
        }
        throw new JsonMappingException("Can not deserialize Throwable of type " + this._beanType + " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator");
    }

    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return getClass() != ThrowableDeserializer.class ? this : new ThrowableDeserializer(this, nameTransformer);
    }
}
