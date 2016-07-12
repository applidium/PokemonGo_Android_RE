package com.upsight.android.analytics.internal.configuration;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.analytics.internal.configuration.ConfigurationManager.Config;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;

@Singleton
public class ManagerConfigParser {
    private ObjectMapper mMapper;

    public static class ConfigJson {
        @JsonProperty("requestInterval")
        public int requestInterval;
    }

    @Inject
    ManagerConfigParser(@Named("config-mapper") ObjectMapper objectMapper) {
        this.mMapper = objectMapper;
    }

    public Config parse(String str) throws IOException {
        return new Config(TimeUnit.SECONDS.toMillis((long) ((ConfigJson) this.mMapper.readValue(str, ConfigJson.class)).requestInterval));
    }
}
