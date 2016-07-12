package com.upsight.android.analytics.internal.dispatcher.schema;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class IdentifierConfig {
    private Map<String, String> mIdentifierFilters;
    private Map<String, Set<String>> mIdentifiers;

    public static class Builder {
        private Map<String, String> identifierFilters;
        private Map<String, Set<String>> identifiers;

        public Builder() {
            this.identifiers = new HashMap();
            this.identifierFilters = new HashMap();
        }

        public Builder addIdentifierFilter(String str, String str2) {
            if (this.identifierFilters.containsKey(str)) {
                throw new IllegalArgumentException("Identifier filter " + str + " already exists");
            }
            this.identifierFilters.put(str, str2);
            return this;
        }

        public Builder addIdentifiers(String str, Set<String> set) {
            if (this.identifiers.containsKey(str)) {
                throw new IllegalArgumentException("Identifiers name " + str + " already exists");
            }
            this.identifiers.put(str, set);
            return this;
        }

        public IdentifierConfig build() {
            return new IdentifierConfig();
        }
    }

    private IdentifierConfig(Builder builder) {
        this.mIdentifiers = builder.identifiers;
        this.mIdentifierFilters = builder.identifierFilters;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            IdentifierConfig identifierConfig = (IdentifierConfig) obj;
            if (this.mIdentifierFilters != null) {
                if (!this.mIdentifierFilters.equals(identifierConfig.mIdentifierFilters)) {
                    return false;
                }
            } else if (identifierConfig.mIdentifierFilters != null) {
                return false;
            }
            if (this.mIdentifiers != null) {
                if (!this.mIdentifiers.equals(identifierConfig.mIdentifiers)) {
                    return false;
                }
            } else if (identifierConfig.mIdentifiers != null) {
                return false;
            }
        }
        return true;
    }

    public Map<String, String> getIdentifierFilters() {
        return Collections.unmodifiableMap(this.mIdentifierFilters);
    }

    public Map<String, Set<String>> getIdentifiers() {
        return Collections.unmodifiableMap(this.mIdentifiers);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.mIdentifiers != null ? this.mIdentifiers.hashCode() : 0;
        if (this.mIdentifierFilters != null) {
            i = this.mIdentifierFilters.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
