package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.ConfigFeature;

public enum DeserializationFeature implements ConfigFeature {
    USE_BIG_DECIMAL_FOR_FLOATS(false),
    USE_BIG_INTEGER_FOR_INTS(false),
    USE_LONG_FOR_INTS(false),
    USE_JAVA_ARRAY_FOR_JSON_ARRAY(false),
    READ_ENUMS_USING_TO_STRING(false),
    FAIL_ON_UNKNOWN_PROPERTIES(true),
    FAIL_ON_NULL_FOR_PRIMITIVES(false),
    FAIL_ON_NUMBERS_FOR_ENUMS(false),
    FAIL_ON_INVALID_SUBTYPE(true),
    FAIL_ON_READING_DUP_TREE_KEY(false),
    FAIL_ON_IGNORED_PROPERTIES(false),
    FAIL_ON_UNRESOLVED_OBJECT_IDS(true),
    FAIL_ON_MISSING_CREATOR_PROPERTIES(false),
    WRAP_EXCEPTIONS(true),
    ACCEPT_SINGLE_VALUE_AS_ARRAY(false),
    UNWRAP_SINGLE_VALUE_ARRAYS(false),
    UNWRAP_ROOT_VALUE(false),
    ACCEPT_EMPTY_STRING_AS_NULL_OBJECT(false),
    ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT(false),
    ACCEPT_FLOAT_AS_INT(true),
    READ_UNKNOWN_ENUM_VALUES_AS_NULL(false),
    READ_DATE_TIMESTAMPS_AS_NANOSECONDS(true),
    ADJUST_DATES_TO_CONTEXT_TIME_ZONE(true),
    EAGER_DESERIALIZER_FETCH(true);
    
    private final boolean _defaultState;
    private final int _mask;

    private DeserializationFeature(boolean z) {
        this._defaultState = z;
        this._mask = 1 << ordinal();
    }

    public boolean enabledByDefault() {
        return this._defaultState;
    }

    public boolean enabledIn(int i) {
        return (this._mask & i) != 0;
    }

    public int getMask() {
        return this._mask;
    }
}
