package com.upsight.android.analytics.internal.dispatcher.schema;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.dispatcher.schema.Schema.Default;
import com.upsight.android.analytics.internal.dispatcher.util.ByFilterSelector;
import com.upsight.android.analytics.internal.dispatcher.util.ByNameSelector;
import com.upsight.android.analytics.internal.dispatcher.util.Selector;
import com.upsight.android.analytics.provider.UpsightDataProvider;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class SchemaSelectorBuilder {
    private final Map<String, UpsightDataProvider> mDataProviders;
    private final Schema mDefaultSchema;

    SchemaSelectorBuilder(UpsightContext upsightContext) {
        this.mDataProviders = new ConcurrentHashMap();
        registerDefaultDataProviders(upsightContext);
        this.mDefaultSchema = new Default(this.mDataProviders);
    }

    private void registerDefaultDataProviders(UpsightContext upsightContext) {
        registerDataProvider(new AppBlockProvider(upsightContext));
        registerDataProvider(new DeviceBlockProvider(upsightContext));
        registerDataProvider(new AndroidIDBlockProvider(upsightContext));
        registerDataProvider(new ScreenBlockProvider(upsightContext));
        registerDataProvider(new SdkBlockProvider(upsightContext));
        registerDataProvider(new SidProvider(upsightContext));
        registerDataProvider(new LocationBlockProvider(upsightContext));
    }

    public Selector<Schema> buildSelectorByName(IdentifierConfig identifierConfig) {
        Map identifiers = identifierConfig.getIdentifiers();
        Map hashMap = new HashMap(identifiers.size());
        for (String str : identifiers.keySet()) {
            Set set = (Set) identifierConfig.getIdentifiers().get(str);
            if (set != null) {
                hashMap.put(str, Schema.from(str, this.mDefaultSchema, set));
            }
        }
        return new ByNameSelector(hashMap);
    }

    public Selector<Schema> buildSelectorByType(IdentifierConfig identifierConfig) {
        Map hashMap = new HashMap(identifierConfig.getIdentifiers().size());
        for (Entry entry : identifierConfig.getIdentifierFilters().entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            Set set = (Set) identifierConfig.getIdentifiers().get(str2);
            if (set != null) {
                hashMap.put(str, Schema.from(str2, this.mDefaultSchema, set));
            }
        }
        return new ByFilterSelector(hashMap, this.mDefaultSchema);
    }

    public void registerDataProvider(UpsightDataProvider upsightDataProvider) {
        for (String put : upsightDataProvider.availableKeys()) {
            if (((UpsightDataProvider) this.mDataProviders.put(put, upsightDataProvider)) != null) {
                throw new IllegalStateException(String.format("Both %s and %s provide values for key.", new Object[]{upsightDataProvider.getClass().getName(), ((UpsightDataProvider) this.mDataProviders.put(put, upsightDataProvider)).getClass().getName()}));
            }
        }
    }
}
