package com.fasterxml.jackson.databind;

import java.io.Serializable;

public class PropertyMetadata implements Serializable {
    public static final PropertyMetadata STD_OPTIONAL;
    public static final PropertyMetadata STD_REQUIRED;
    public static final PropertyMetadata STD_REQUIRED_OR_OPTIONAL;
    private static final long serialVersionUID = -1;
    protected final String _defaultValue;
    protected final String _description;
    protected final Integer _index;
    protected final Boolean _required;

    static {
        STD_REQUIRED = new PropertyMetadata(Boolean.TRUE, null, null, null);
        STD_OPTIONAL = new PropertyMetadata(Boolean.FALSE, null, null, null);
        STD_REQUIRED_OR_OPTIONAL = new PropertyMetadata(null, null, null, null);
    }

    @Deprecated
    protected PropertyMetadata(Boolean bool, String str) {
        this(bool, str, null, null);
    }

    protected PropertyMetadata(Boolean bool, String str, Integer num, String str2) {
        this._required = bool;
        this._description = str;
        this._index = num;
        if (str2 == null || str2.isEmpty()) {
            str2 = null;
        }
        this._defaultValue = str2;
    }

    @Deprecated
    public static PropertyMetadata construct(boolean z, String str) {
        return construct(z, str, null, null);
    }

    public static PropertyMetadata construct(boolean z, String str, Integer num, String str2) {
        return (str == null && num == null && str2 == null) ? z ? STD_REQUIRED : STD_OPTIONAL : new PropertyMetadata(Boolean.valueOf(z), str, num, str2);
    }

    public String getDefaultValue() {
        return this._defaultValue;
    }

    public String getDescription() {
        return this._description;
    }

    public Integer getIndex() {
        return this._index;
    }

    public Boolean getRequired() {
        return this._required;
    }

    public boolean hasDefaultValue() {
        return this._defaultValue != null;
    }

    @Deprecated
    public boolean hasDefuaultValue() {
        return hasDefaultValue();
    }

    public boolean hasIndex() {
        return this._index != null;
    }

    public boolean isRequired() {
        return this._required != null && this._required.booleanValue();
    }

    protected Object readResolve() {
        return (this._description == null && this._index == null && this._defaultValue == null) ? this._required == null ? STD_REQUIRED_OR_OPTIONAL : this._required.booleanValue() ? STD_REQUIRED : STD_OPTIONAL : this;
    }

    public PropertyMetadata withDefaultValue(String str) {
        if (str == null || str.isEmpty()) {
            if (this._defaultValue == null) {
                return this;
            }
            str = null;
        } else if (this._defaultValue.equals(str)) {
            return this;
        }
        return new PropertyMetadata(this._required, this._description, this._index, str);
    }

    public PropertyMetadata withDescription(String str) {
        return new PropertyMetadata(this._required, str, this._index, this._defaultValue);
    }

    public PropertyMetadata withIndex(Integer num) {
        return new PropertyMetadata(this._required, this._description, num, this._defaultValue);
    }

    public PropertyMetadata withRequired(Boolean bool) {
        if (bool == null) {
            if (this._required == null) {
                return this;
            }
        } else if (this._required != null && this._required.booleanValue() == bool.booleanValue()) {
            return this;
        }
        return new PropertyMetadata(bool, this._description, this._index, this._defaultValue);
    }
}
