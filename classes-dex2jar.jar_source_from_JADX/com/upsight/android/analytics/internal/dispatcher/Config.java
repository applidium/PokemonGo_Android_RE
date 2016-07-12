package com.upsight.android.analytics.internal.dispatcher;

import com.upsight.android.analytics.internal.dispatcher.routing.RoutingConfig;
import com.upsight.android.analytics.internal.dispatcher.schema.IdentifierConfig;

class Config {
    private IdentifierConfig mIdentifierConfig;
    private RoutingConfig mRoutingConfig;

    public static class Builder {
        private IdentifierConfig mIdentifierConfig;
        private RoutingConfig mRoutingConfig;

        public Config build() {
            return new Config();
        }

        public Builder setIdentifierConfig(IdentifierConfig identifierConfig) {
            this.mIdentifierConfig = identifierConfig;
            return this;
        }

        public Builder setRoutingConfig(RoutingConfig routingConfig) {
            this.mRoutingConfig = routingConfig;
            return this;
        }
    }

    private Config(Builder builder) {
        this.mRoutingConfig = builder.mRoutingConfig;
        this.mIdentifierConfig = builder.mIdentifierConfig;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Config config = (Config) obj;
            if (this.mIdentifierConfig != null) {
                if (!this.mIdentifierConfig.equals(config.mIdentifierConfig)) {
                    return false;
                }
            } else if (config.mIdentifierConfig != null) {
                return false;
            }
            if (this.mRoutingConfig != null) {
                if (!this.mRoutingConfig.equals(config.mRoutingConfig)) {
                    return false;
                }
            } else if (config.mRoutingConfig != null) {
                return false;
            }
        }
        return true;
    }

    public IdentifierConfig getIdentifierConfig() {
        return this.mIdentifierConfig;
    }

    public RoutingConfig getRoutingConfig() {
        return this.mRoutingConfig;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.mRoutingConfig != null ? this.mRoutingConfig.hashCode() : 0;
        if (this.mIdentifierConfig != null) {
            i = this.mIdentifierConfig.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public boolean isValid() {
        return this.mRoutingConfig != null && this.mRoutingConfig.isValid();
    }
}
