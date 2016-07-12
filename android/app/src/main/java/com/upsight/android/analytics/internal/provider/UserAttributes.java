package com.upsight.android.analytics.internal.provider;

import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.provider.UpsightUserAttributes;
import com.upsight.android.analytics.provider.UpsightUserAttributes.Entry;
import com.upsight.android.internal.util.PreferencesHelper;
import com.upsight.android.logger.UpsightLogger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
final class UserAttributes extends UpsightUserAttributes {
    private UpsightLogger mLogger;
    private UpsightContext mUpsight;
    private Map<String, Entry> mUserAttributes;
    private Set<Entry> mUserAttributesSet;

    @Inject
    UserAttributes(UpsightContext upsightContext) {
        this.mUserAttributes = new HashMap();
        this.mUserAttributesSet = new HashSet();
        this.mUpsight = upsightContext;
        this.mLogger = upsightContext.getLogger();
        loadDefaultAttributes();
    }

    private void loadDefaultAttributes() {
        try {
            Bundle bundle = this.mUpsight.getPackageManager().getApplicationInfo(this.mUpsight.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
            if (bundle != null) {
                for (String str : bundle.keySet()) {
                    if (!TextUtils.isEmpty(str) && str.startsWith(UpsightUserAttributes.USER_ATTRIBUTES_PREFIX)) {
                        String substring = str.substring(str.lastIndexOf(46) + 1);
                        Entry entry = new Entry(substring, bundle.get(str));
                        this.mUserAttributes.put(substring, entry);
                        this.mUserAttributesSet.add(entry);
                    }
                }
            }
        } catch (NameNotFoundException e) {
            this.mLogger.m199e(Upsight.LOG_TAG, "Unexpected error: Package name missing!?", e);
        }
    }

    public Boolean getBoolean(String str) {
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (Boolean.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            return Boolean.valueOf(PreferencesHelper.getBoolean(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, ((Boolean) ((Entry) this.mUserAttributes.get(str)).getDefaultValue()).booleanValue()));
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }

    public Set<Entry> getDefault() {
        return this.mUserAttributesSet;
    }

    public Float getFloat(String str) {
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (Float.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            return Float.valueOf(PreferencesHelper.getFloat(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, ((Float) ((Entry) this.mUserAttributes.get(str)).getDefaultValue()).floatValue()));
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }

    public Integer getInt(String str) {
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (Integer.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            return Integer.valueOf(PreferencesHelper.getInt(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, ((Integer) ((Entry) this.mUserAttributes.get(str)).getDefaultValue()).intValue()));
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }

    public String getString(String str) {
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (String.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            return PreferencesHelper.getString(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, (String) ((Entry) this.mUserAttributes.get(str)).getDefaultValue());
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }

    public void put(String str, Boolean bool) {
        if (bool == null) {
            PreferencesHelper.clear(this.mUpsight, str);
        }
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (Boolean.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            PreferencesHelper.putBoolean(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, bool.booleanValue());
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }

    public void put(String str, Float f) {
        if (f == null) {
            PreferencesHelper.clear(this.mUpsight, str);
        }
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (Float.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            PreferencesHelper.putFloat(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, f.floatValue());
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }

    public void put(String str, Integer num) {
        if (num == null) {
            PreferencesHelper.clear(this.mUpsight, str);
        }
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (Integer.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            PreferencesHelper.putInt(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, num.intValue());
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }

    public void put(String str, String str2) throws IllegalArgumentException {
        if (str2 == null) {
            PreferencesHelper.clear(this.mUpsight, str);
        }
        if (!this.mUserAttributes.containsKey(str)) {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}), new Object[0]);
            throw new IllegalArgumentException(String.format("No metadata found with android:name %s%s in the Android Manifest", new Object[]{UpsightUserAttributes.USER_ATTRIBUTES_PREFIX, str}));
        } else if (String.class.equals(((Entry) this.mUserAttributes.get(str)).getType())) {
            PreferencesHelper.putString(this.mUpsight, UpsightUserAttributes.USER_ATTRIBUTES_PREFIX + str, str2);
        } else {
            this.mLogger.m205w(Upsight.LOG_TAG, String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}), new Object[0]);
            throw new IllegalArgumentException(String.format("The user attribute %s must be of type: %s", new Object[]{str, ((Entry) this.mUserAttributes.get(str)).getType()}));
        }
    }
}
