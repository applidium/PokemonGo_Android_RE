package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class BeanPropertyMap implements Iterable<SettableBeanProperty>, Serializable {
    private static final long serialVersionUID = 2;
    protected final boolean _caseInsensitive;
    private Object[] _hashArea;
    private int _hashMask;
    private SettableBeanProperty[] _propsInOrder;
    private int _size;
    private int _spillCount;

    public BeanPropertyMap(boolean z, Collection<SettableBeanProperty> collection) {
        this._caseInsensitive = z;
        this._propsInOrder = (SettableBeanProperty[]) collection.toArray(new SettableBeanProperty[collection.size()]);
        init(collection);
    }

    private final SettableBeanProperty _find2(String str, int i, Object obj) {
        if (obj == null) {
            return null;
        }
        int i2 = this._hashMask + 1;
        int i3 = ((i >> 1) + i2) << 1;
        Object obj2 = this._hashArea[i3];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i3 + 1];
        }
        if (obj2 == null) {
            return null;
        }
        i3 = (i2 + (i2 >> 1)) << 1;
        int i4 = this._spillCount;
        for (i2 = i3; i2 < i3 + i4; i2 += 2) {
            String str2 = this._hashArea[i2];
            if (str2 == str || str.equals(str2)) {
                return (SettableBeanProperty) this._hashArea[i2 + 1];
            }
        }
        return null;
    }

    private int _findFromOrdered(SettableBeanProperty settableBeanProperty) {
        int length = this._propsInOrder.length;
        for (int i = 0; i < length; i++) {
            if (this._propsInOrder[i] == settableBeanProperty) {
                return i;
            }
        }
        throw new IllegalStateException("Illegal state: property '" + settableBeanProperty.getName() + "' missing from _propsInOrder");
    }

    private final int _hashCode(String str) {
        return str.hashCode() & this._hashMask;
    }

    public static BeanPropertyMap construct(Collection<SettableBeanProperty> collection, boolean z) {
        return new BeanPropertyMap(z, collection);
    }

    private static final int findSize(int i) {
        if (i <= 5) {
            return 8;
        }
        if (i <= 12) {
            return 16;
        }
        int i2 = 32;
        while (i2 < (i >> 2) + i) {
            i2 += i2;
        }
        return i2;
    }

    private List<SettableBeanProperty> properties() {
        List arrayList = new ArrayList(this._size);
        int length = this._hashArea.length;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty != null) {
                arrayList.add(settableBeanProperty);
            }
        }
        return arrayList;
    }

    protected SettableBeanProperty _rename(SettableBeanProperty settableBeanProperty, NameTransformer nameTransformer) {
        if (settableBeanProperty == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
        JsonDeserializer valueDeserializer = withSimpleName.getValueDeserializer();
        if (valueDeserializer == null) {
            return withSimpleName;
        }
        JsonDeserializer unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer);
        return unwrappingDeserializer != valueDeserializer ? withSimpleName.withValueDeserializer(unwrappingDeserializer) : withSimpleName;
    }

    public BeanPropertyMap assignIndexes() {
        int length = this._hashArea.length;
        int i = 0;
        int i2 = 1;
        while (i2 < length) {
            int i3;
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty != null) {
                int i4 = i + 1;
                settableBeanProperty.assignIndex(i);
                i3 = i4;
            } else {
                i3 = i;
            }
            i2 += 2;
            i = i3;
        }
        return this;
    }

    public SettableBeanProperty find(int i) {
        int length = this._hashArea.length;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty != null && i == settableBeanProperty.getPropertyIndex()) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public SettableBeanProperty find(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Can not pass null property name");
        }
        if (this._caseInsensitive) {
            str = str.toLowerCase();
        }
        int hashCode = str.hashCode() & this._hashMask;
        int i = hashCode << 1;
        String str2 = this._hashArea[i];
        return (str2 == str || str.equals(str2)) ? (SettableBeanProperty) this._hashArea[i + 1] : _find2(str, hashCode, str2);
    }

    public boolean findDeserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        SettableBeanProperty find = find(str);
        if (find == null) {
            return false;
        }
        try {
            find.deserializeAndSet(jsonParser, deserializationContext, obj);
        } catch (Throwable e) {
            wrapAndThrow(e, obj, str, deserializationContext);
        }
        return true;
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return this._propsInOrder;
    }

    protected final String getPropertyName(SettableBeanProperty settableBeanProperty) {
        return this._caseInsensitive ? settableBeanProperty.getName().toLowerCase() : settableBeanProperty.getName();
    }

    protected void init(Collection<SettableBeanProperty> collection) {
        this._size = collection.size();
        int findSize = findSize(this._size);
        this._hashMask = findSize - 1;
        Object[] objArr = new Object[(((findSize >> 1) + findSize) * 2)];
        int i = 0;
        for (SettableBeanProperty settableBeanProperty : collection) {
            if (settableBeanProperty != null) {
                String propertyName = getPropertyName(settableBeanProperty);
                int _hashCode = _hashCode(propertyName);
                int i2 = _hashCode << 1;
                if (objArr[i2] != null) {
                    i2 = ((_hashCode >> 1) + findSize) << 1;
                    if (objArr[i2] != null) {
                        i2 = (((findSize >> 1) + findSize) << 1) + i;
                        i += 2;
                        if (i2 >= objArr.length) {
                            objArr = Arrays.copyOf(objArr, objArr.length + 4);
                        }
                    }
                }
                objArr[i2] = propertyName;
                objArr[i2 + 1] = settableBeanProperty;
            }
        }
        this._hashArea = objArr;
        this._spillCount = i;
    }

    public Iterator<SettableBeanProperty> iterator() {
        return properties().iterator();
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        Collection arrayList = new ArrayList(this._size);
        String propertyName = getPropertyName(settableBeanProperty);
        boolean z = false;
        int length = this._hashArea.length;
        int i = 1;
        while (i < length) {
            boolean z2;
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty2 == null) {
                z2 = z;
            } else {
                if (!z) {
                    z = propertyName.equals(settableBeanProperty2.getName());
                    if (z) {
                        this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = null;
                        z2 = z;
                    }
                }
                arrayList.add(settableBeanProperty2);
                z2 = z;
            }
            i += 2;
            z = z2;
        }
        if (z) {
            init(arrayList);
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't remove");
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        if (nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return this;
        }
        Collection arrayList = new ArrayList(r1);
        for (SettableBeanProperty settableBeanProperty : this._propsInOrder) {
            if (settableBeanProperty == null) {
                arrayList.add(settableBeanProperty);
            } else {
                arrayList.add(_rename(settableBeanProperty, nameTransformer));
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList);
    }

    public void replace(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        int i = 1;
        while (i < length) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty2 == null || !settableBeanProperty2.getName().equals(propertyName)) {
                i += 2;
            } else {
                this._hashArea[i] = settableBeanProperty;
                this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = settableBeanProperty;
                return;
            }
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't replace");
    }

    public int size() {
        return this._size;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Properties=[");
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) it.next();
            if (i > 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(settableBeanProperty.getName());
            stringBuilder.append('(');
            stringBuilder.append(settableBeanProperty.getType());
            stringBuilder.append(')');
            i++;
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        int i;
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        for (i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty2 != null && settableBeanProperty2.getName().equals(propertyName)) {
                this._hashArea[i] = settableBeanProperty;
                this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = settableBeanProperty;
                break;
            }
        }
        i = _hashCode(propertyName);
        length = this._hashMask + 1;
        int i2 = i << 1;
        if (this._hashArea[i2] != null) {
            i2 = ((i >> 1) + length) << 1;
            if (this._hashArea[i2] != null) {
                i2 = (((length >> 1) + length) << 1) + this._spillCount;
                this._spillCount += 2;
                if (i2 >= this._hashArea.length) {
                    this._hashArea = Arrays.copyOf(this._hashArea, this._hashArea.length + 4);
                }
            }
        }
        this._hashArea[i2] = propertyName;
        this._hashArea[i2 + 1] = settableBeanProperty;
        i = this._propsInOrder.length;
        this._propsInOrder = (SettableBeanProperty[]) Arrays.copyOf(this._propsInOrder, i + 1);
        this._propsInOrder[i] = settableBeanProperty;
        return this;
    }

    protected void wrapAndThrow(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        Object obj2 = (deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) ? 1 : null;
        if (th2 instanceof IOException) {
            if (obj2 == null || !(th2 instanceof JsonProcessingException)) {
                throw ((IOException) th2);
            }
        } else if (obj2 == null && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        throw JsonMappingException.wrapWithPath(th2, obj, str);
    }
}
