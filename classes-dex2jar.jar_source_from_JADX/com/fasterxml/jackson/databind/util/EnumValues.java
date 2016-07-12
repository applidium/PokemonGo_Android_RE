package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class EnumValues implements Serializable {
    private static final long serialVersionUID = 1;
    private transient EnumMap<?, SerializableString> _asMap;
    private final Class<Enum<?>> _enumClass;
    private final SerializableString[] _textual;
    private final Enum<?>[] _values;

    private EnumValues(Class<Enum<?>> cls, SerializableString[] serializableStringArr) {
        this._enumClass = cls;
        this._values = (Enum[]) cls.getEnumConstants();
        this._textual = serializableStringArr;
    }

    public static EnumValues construct(SerializationConfig serializationConfig, Class<Enum<?>> cls) {
        return serializationConfig.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING) ? constructFromToString(serializationConfig, cls) : constructFromName(serializationConfig, cls);
    }

    public static EnumValues constructFromName(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Enum[] enumArr = (Enum[]) ClassUtil.findEnumType((Class) cls).getEnumConstants();
        if (enumArr != null) {
            SerializableString[] serializableStringArr = new SerializableString[enumArr.length];
            for (Enum enumR : enumArr) {
                serializableStringArr[enumR.ordinal()] = mapperConfig.compileString(mapperConfig.getAnnotationIntrospector().findEnumValue(enumR));
            }
            return new EnumValues(cls, serializableStringArr);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + cls.getName());
    }

    public static EnumValues constructFromToString(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Enum[] enumArr = (Enum[]) ClassUtil.findEnumType((Class) cls).getEnumConstants();
        if (enumArr != null) {
            SerializableString[] serializableStringArr = new SerializableString[enumArr.length];
            for (Enum enumR : enumArr) {
                serializableStringArr[enumR.ordinal()] = mapperConfig.compileString(enumR.toString());
            }
            return new EnumValues(cls, serializableStringArr);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + cls.getName());
    }

    public List<Enum<?>> enums() {
        return Arrays.asList(this._values);
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public EnumMap<?, SerializableString> internalMap() {
        EnumMap<?, SerializableString> enumMap = this._asMap;
        if (enumMap != null) {
            return enumMap;
        }
        Map linkedHashMap = new LinkedHashMap();
        for (Enum enumR : this._values) {
            linkedHashMap.put(enumR, this._textual[enumR.ordinal()]);
        }
        return new EnumMap(linkedHashMap);
    }

    public SerializableString serializedValueFor(Enum<?> enumR) {
        return this._textual[enumR.ordinal()];
    }

    public Collection<SerializableString> values() {
        return Arrays.asList(this._textual);
    }
}
