package com.upsight.android.analytics.provider;

import com.upsight.android.Upsight;
import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import java.util.HashSet;
import java.util.Set;

public abstract class UpsightUserAttributes {
    public static final String USER_ATTRIBUTES_PREFIX = "com.upsight.user_attribute.";

    public static class Entry {
        private Object mDefaultValue;
        private String mKey;

        public Entry(String str, Object obj) {
            this.mKey = str;
            this.mDefaultValue = obj;
        }

        public Object getDefaultValue() {
            return this.mDefaultValue;
        }

        public String getKey() {
            return this.mKey;
        }

        public Class getType() {
            return this.mDefaultValue.getClass();
        }
    }

    public static Boolean getBoolean(UpsightContext upsightContext, String str) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            return upsightAnalyticsExtension.getApi().getBooleanUserAttribute(str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        return null;
    }

    public static Set<Entry> getDefault(UpsightContext upsightContext) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            return upsightAnalyticsExtension.getApi().getDefaultUserAttributes();
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        return new HashSet();
    }

    public static Float getFloat(UpsightContext upsightContext, String str) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            return upsightAnalyticsExtension.getApi().getFloatUserAttribute(str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        return null;
    }

    public static Integer getInteger(UpsightContext upsightContext, String str) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            return upsightAnalyticsExtension.getApi().getIntUserAttribute(str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        return null;
    }

    public static String getString(UpsightContext upsightContext, String str) {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            return upsightAnalyticsExtension.getApi().getStringUserAttribute(str);
        }
        upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        return null;
    }

    public static void put(UpsightContext upsightContext, String str, Boolean bool) throws IllegalArgumentException {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().putUserAttribute(str, bool);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public static void put(UpsightContext upsightContext, String str, Float f) throws IllegalArgumentException {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().putUserAttribute(str, f);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public static void put(UpsightContext upsightContext, String str, Integer num) throws IllegalArgumentException {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().putUserAttribute(str, num);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public static void put(UpsightContext upsightContext, String str, String str2) throws IllegalArgumentException {
        UpsightAnalyticsExtension upsightAnalyticsExtension = (UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME);
        if (upsightAnalyticsExtension != null) {
            upsightAnalyticsExtension.getApi().putUserAttribute(str, str2);
        } else {
            upsightContext.getLogger().m199e(Upsight.LOG_TAG, "com.upsight.extension.analytics must be registered in your Android Manifest", new Object[0]);
        }
    }

    public abstract Boolean getBoolean(String str);

    public abstract Set<Entry> getDefault();

    public abstract Float getFloat(String str);

    public abstract Integer getInt(String str);

    public abstract String getString(String str);

    public abstract void put(String str, Boolean bool);

    public abstract void put(String str, Float f);

    public abstract void put(String str, Integer num);

    public abstract void put(String str, String str2);
}
