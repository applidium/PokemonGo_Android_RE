package com.upsight.android.analytics.internal.dispatcher.schema;

import com.upsight.android.analytics.provider.UpsightDataProvider;
import com.upsight.android.googleadvertisingid.internal.GooglePlayAdvertisingProvider;
import com.upsight.android.internal.util.SidHelper;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class Schema {
    private final Set<String> mAttributes;
    private final Map<String, UpsightDataProvider> mDataProviders;
    private final String mName;

    public static class Default extends Schema {
        static final Set<String> DEFAULT_REQUEST_ATTRIBUTES;

        /* renamed from: com.upsight.android.analytics.internal.dispatcher.schema.Schema.Default.1 */
        static final class C09011 extends HashSet<String> {
            C09011() {
                add(SidHelper.PREFERENCE_KEY_SID);
                add(AppBlockProvider.TOKEN_KEY);
                add(AppBlockProvider.VERSION_KEY);
                add(AppBlockProvider.BUNDLEID_KEY);
                add(DeviceBlockProvider.OS_KEY);
                add(DeviceBlockProvider.OS_VERSION_KEY);
                add(DeviceBlockProvider.TYPE_KEY);
                add(DeviceBlockProvider.HARDWARE_KEY);
                add(DeviceBlockProvider.MANUFACTURER_KEY);
                add(DeviceBlockProvider.CARRIER_KEY);
                add(DeviceBlockProvider.CONNECTION_KEY);
                add(DeviceBlockProvider.JAILBROKEN_KEY);
                add(GooglePlayAdvertisingProvider.LIMITED_AD_TRACKING_KEY);
                add(ScreenBlockProvider.WIDTH_KEY);
                add(ScreenBlockProvider.HEIGHT_KEY);
                add(ScreenBlockProvider.SCALE_KEY);
                add(ScreenBlockProvider.DPI_KEY);
                add(SdkBlockProvider.VERSION_KEY);
                add(SdkBlockProvider.BUILD_KEY);
                add(SdkBlockProvider.PLUGIN_KEY);
                add(LocationBlockProvider.TIME_ZONE_KEY);
                add(LocationBlockProvider.LATITUDE_KEY);
                add(LocationBlockProvider.LONGITUDE_KEY);
                add(AbstractUxmBlockProvider.BUNDLE_SCHEMA_HASH);
                add(AbstractUxmBlockProvider.BUNDLE_ID);
                add(AbstractUxmBlockProvider.BUNDLE_HASH);
            }
        }

        static {
            DEFAULT_REQUEST_ATTRIBUTES = new C09011();
        }

        Default(Map<String, UpsightDataProvider> map) {
            super(DEFAULT_REQUEST_ATTRIBUTES, map, null);
        }
    }

    private Schema(String str, Set<String> set, Map<String, UpsightDataProvider> map) {
        this.mName = str;
        this.mAttributes = set;
        this.mDataProviders = map;
    }

    static Schema from(String str, Schema schema, Set<String> set) {
        Set hashSet = new HashSet();
        hashSet.addAll(set);
        hashSet.addAll(schema.mAttributes);
        return new Schema(str, hashSet, schema.mDataProviders);
    }

    public Set<String> availableKeys() {
        return this.mAttributes;
    }

    public String getName() {
        return this.mName;
    }

    public Object getValueFor(String str) {
        if (this.mAttributes.contains(str)) {
            UpsightDataProvider upsightDataProvider = (UpsightDataProvider) this.mDataProviders.get(str);
            if (upsightDataProvider != null) {
                return upsightDataProvider.get(str);
            }
        }
        return null;
    }
}
