package com.upsight.android;

import android.content.Context;
import android.content.ContextWrapper;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Named;

public class UpsightContext extends ContextWrapper {
    private final String mAppToken;
    private UpsightCoreComponent mCoreComponent;
    private final UpsightDataStore mDataStore;
    private final Map<String, UpsightExtension> mExtensionsMap;
    private final UpsightLogger mLogger;
    private final String mPublicKey;
    private final String mSdkPlugin;
    private final String mSid;

    public UpsightContext(Context context, @Named("com.upsight.sdk_plugin") String str, @Named("com.upsight.app_token") String str2, @Named("com.upsight.public_key") String str3, String str4, UpsightDataStore upsightDataStore, UpsightLogger upsightLogger) {
        super(context);
        this.mExtensionsMap = new ConcurrentHashMap();
        this.mSdkPlugin = str;
        this.mAppToken = str2;
        this.mPublicKey = str3;
        this.mSid = str4;
        this.mDataStore = upsightDataStore;
        this.mLogger = upsightLogger;
    }

    public String getApplicationToken() {
        return this.mAppToken;
    }

    public UpsightCoreComponent getCoreComponent() {
        return this.mCoreComponent;
    }

    public UpsightDataStore getDataStore() {
        return this.mDataStore;
    }

    public UpsightLogger getLogger() {
        return this.mLogger;
    }

    public String getPublicKey() {
        return this.mPublicKey;
    }

    public String getSdkBuild() {
        return getString(C0870R.string.upsight_sdk_build);
    }

    public String getSdkPlugin() {
        return this.mSdkPlugin;
    }

    public String getSdkVersion() {
        return getString(C0870R.string.upsight_sdk_version);
    }

    public String getSid() {
        return this.mSid;
    }

    public UpsightExtension<?, ?> getUpsightExtension(String str) {
        return (UpsightExtension) this.mExtensionsMap.get(str);
    }

    void onCreate(UpsightCoreComponent upsightCoreComponent, Map<String, UpsightExtension> map) {
        this.mCoreComponent = upsightCoreComponent;
        for (Entry entry : map.entrySet()) {
            UpsightExtension upsightExtension = (UpsightExtension) entry.getValue();
            upsightExtension.setComponent(upsightExtension.onResolve(upsightCoreComponent.upsightContext()));
            this.mExtensionsMap.put(entry.getKey(), upsightExtension);
        }
        for (UpsightExtension upsightExtension2 : map.values()) {
            upsightExtension2.getComponent().inject(upsightExtension2);
        }
        for (UpsightExtension upsightExtension22 : map.values()) {
            upsightExtension22.onCreate(this);
        }
        for (UpsightExtension upsightExtension222 : map.values()) {
            upsightExtension222.onPostCreate(this);
        }
    }
}
