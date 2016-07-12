package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.upsight.android.analytics.internal.dispatcher.delivery.BatchSender.Config;
import java.net.MalformedURLException;
import java.net.URL;

public class QueueConfig {
    private Config mBatchSenderConfig;
    private Batcher.Config mBatcherConfig;
    private String mEndpointAddress;

    public static class Builder {
        private Config mBatchSenderConfig;
        private Batcher.Config mBatcherConfig;
        private String mEndpointAddress;

        public QueueConfig build() {
            return new QueueConfig();
        }

        public Builder setBatchSenderConfig(Config config) {
            this.mBatchSenderConfig = config;
            return this;
        }

        public Builder setBatcherConfig(Batcher.Config config) {
            this.mBatcherConfig = config;
            return this;
        }

        public Builder setEndpointAddress(String str) {
            this.mEndpointAddress = str;
            return this;
        }
    }

    private QueueConfig(Builder builder) {
        this.mEndpointAddress = builder.mEndpointAddress;
        this.mBatchSenderConfig = builder.mBatchSenderConfig;
        this.mBatcherConfig = builder.mBatcherConfig;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            QueueConfig queueConfig = (QueueConfig) obj;
            if (this.mBatchSenderConfig != null) {
                if (!this.mBatchSenderConfig.equals(queueConfig.mBatchSenderConfig)) {
                    return false;
                }
            } else if (queueConfig.mBatchSenderConfig != null) {
                return false;
            }
            if (this.mBatcherConfig != null) {
                if (!this.mBatcherConfig.equals(queueConfig.mBatcherConfig)) {
                    return false;
                }
            } else if (queueConfig.mBatcherConfig != null) {
                return false;
            }
            if (this.mEndpointAddress != null) {
                if (!this.mEndpointAddress.equals(queueConfig.mEndpointAddress)) {
                    return false;
                }
            } else if (queueConfig.mEndpointAddress != null) {
                return false;
            }
        }
        return true;
    }

    public Config getBatchSenderConfig() {
        return this.mBatchSenderConfig;
    }

    public Batcher.Config getBatcherConfig() {
        return this.mBatcherConfig;
    }

    public String getEndpointAddress() {
        return this.mEndpointAddress;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.mEndpointAddress != null ? this.mEndpointAddress.hashCode() : 0;
        int hashCode2 = this.mBatchSenderConfig != null ? this.mBatchSenderConfig.hashCode() : 0;
        if (this.mBatcherConfig != null) {
            i = this.mBatcherConfig.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public boolean isValid() {
        try {
            URL url = new URL(this.mEndpointAddress);
            return this.mBatcherConfig != null && this.mBatcherConfig.isValid() && this.mBatchSenderConfig != null && this.mBatchSenderConfig.isValid();
        } catch (MalformedURLException e) {
            return false;
        }
    }
}
