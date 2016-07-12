package com.upsight.android.analytics.internal.dispatcher.schema;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.provider.UpsightDataProvider;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class SidProvider extends UpsightDataProvider {
    public static final String SID_KEY = "sid";

    SidProvider(UpsightContext upsightContext) {
        put(SID_KEY, upsightContext.getSid());
    }

    public Set<String> availableKeys() {
        return new HashSet(Arrays.asList(new String[]{SID_KEY}));
    }
}
