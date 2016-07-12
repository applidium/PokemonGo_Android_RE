package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.analytics.internal.dispatcher.delivery.Queue.Trash;
import com.upsight.android.analytics.internal.dispatcher.delivery.QueueConfig;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

public class RoutingConfig {
    private Map<String, QueueConfig> mQueuesConfigs;
    private Map<String, List<String>> mRoutes;

    public static class Builder {
        private Map<String, QueueConfig> mQueueConfigs;
        private Map<String, List<String>> mRoutes;

        public Builder() {
            this.mQueueConfigs = new HashMap();
            this.mRoutes = new HashMap();
        }

        public Builder addQueueConfig(String str, QueueConfig queueConfig) {
            if (this.mQueueConfigs.containsKey(str)) {
                throw new IllegalArgumentException("Queue with name " + str + " already exists");
            }
            this.mQueueConfigs.put(str, queueConfig);
            return this;
        }

        public Builder addRoute(String str, List<String> list) {
            if (this.mRoutes.containsKey(str)) {
                throw new IllegalArgumentException("Filter with name " + str + " already exists");
            }
            this.mRoutes.put(str, list);
            return this;
        }

        public RoutingConfig build() {
            return new RoutingConfig();
        }
    }

    private RoutingConfig(Builder builder) {
        this.mQueuesConfigs = builder.mQueueConfigs;
        this.mRoutes = builder.mRoutes;
    }

    private boolean areQueueConfigsValid() {
        for (QueueConfig queueConfig : this.mQueuesConfigs.values()) {
            if (queueConfig != null) {
                if (!queueConfig.isValid()) {
                }
            }
            return false;
        }
        return true;
    }

    private boolean areRoutesValid() {
        for (List<String> list : this.mRoutes.values()) {
            if (list == null) {
                return false;
            }
            for (String str : list) {
                if (!this.mQueuesConfigs.containsKey(str) && !Trash.NAME.equals(str)) {
                    return false;
                }
            }
            if (new HashSet(list).size() != list.size()) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RoutingConfig routingConfig = (RoutingConfig) obj;
        return routingConfig.mQueuesConfigs.equals(this.mQueuesConfigs) && routingConfig.mRoutes.equals(this.mRoutes);
    }

    public Map<String, QueueConfig> getQueueConfigs() {
        return Collections.unmodifiableMap(this.mQueuesConfigs);
    }

    public Map<String, List<String>> getRouters() {
        return Collections.unmodifiableMap(this.mRoutes);
    }

    public boolean isValid() {
        return areQueueConfigsValid() && areRoutesValid();
    }
}
