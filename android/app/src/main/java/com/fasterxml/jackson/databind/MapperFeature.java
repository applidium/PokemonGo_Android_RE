package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.ConfigFeature;

public enum MapperFeature implements ConfigFeature {
    USE_ANNOTATIONS(true),
    AUTO_DETECT_CREATORS(true),
    AUTO_DETECT_FIELDS(true),
    AUTO_DETECT_GETTERS(true),
    AUTO_DETECT_IS_GETTERS(true),
    AUTO_DETECT_SETTERS(true),
    REQUIRE_SETTERS_FOR_GETTERS(false),
    USE_GETTERS_AS_SETTERS(true),
    CAN_OVERRIDE_ACCESS_MODIFIERS(true),
    INFER_PROPERTY_MUTATORS(true),
    ALLOW_FINAL_FIELDS_AS_MUTATORS(true),
    PROPAGATE_TRANSIENT_MARKER(false),
    USE_STATIC_TYPING(false),
    DEFAULT_VIEW_INCLUSION(true),
    SORT_PROPERTIES_ALPHABETICALLY(false),
    ACCEPT_CASE_INSENSITIVE_PROPERTIES(false),
    USE_WRAPPER_NAME_AS_PROPERTY_NAME(false),
    USE_STD_BEAN_NAMING(false),
    IGNORE_DUPLICATE_MODULE_REGISTRATIONS(true);
    
    private final boolean _defaultState;
    private final int _mask;

    private MapperFeature(boolean z) {
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
