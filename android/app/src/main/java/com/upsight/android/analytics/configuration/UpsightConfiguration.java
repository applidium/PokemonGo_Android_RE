package com.upsight.android.analytics.configuration;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.configuration")
public final class UpsightConfiguration {
    @UpsightStorableIdentifier
    @JsonProperty("id")
    String id;
    @JsonProperty("scope")
    private String mScope;
    @JsonProperty("session_num_created")
    private int mSessionNumCreated;
    @JsonProperty("value")
    private String mValue;

    UpsightConfiguration() {
    }

    UpsightConfiguration(String str, String str2, int i) {
        this.mScope = str;
        this.mValue = str2;
        this.mSessionNumCreated = i;
    }

    public static UpsightConfiguration create(String str, String str2, int i) {
        return new UpsightConfiguration(str, str2, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UpsightConfiguration upsightConfiguration = (UpsightConfiguration) obj;
        return (this.id == null || upsightConfiguration.id == null || !this.id.equals(upsightConfiguration.id)) ? false : true;
    }

    public String getConfiguration() {
        return this.mValue;
    }

    public String getId() {
        return this.id;
    }

    public String getScope() {
        return this.mScope;
    }

    public int getSessionNumberCreated() {
        return this.mSessionNumCreated;
    }

    public int hashCode() {
        return this.id != null ? this.id.hashCode() : 0;
    }
}
