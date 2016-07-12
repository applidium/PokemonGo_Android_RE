package com.upsight.android.analytics.internal.dispatcher.util;

import java.util.Map;

public class ByNameSelector<D> implements Selector<D> {
    private Map<String, D> mData;
    private D mDefaultValue;

    public ByNameSelector(Map<String, D> map) {
        this.mDefaultValue = null;
        this.mData = map;
    }

    public ByNameSelector(Map<String, D> map, D d) {
        this(map);
        this.mDefaultValue = d;
    }

    public D select(String str) {
        D d = this.mData.get(str);
        return d != null ? d : this.mDefaultValue;
    }
}
