package com.upsight.android.analytics.internal.configuration;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.analytics.configuration.UpsightConfiguration;
import com.upsight.android.analytics.internal.session.SessionManager;
import java.io.IOException;
import java.util.Collection;
import java.util.LinkedList;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;

@Singleton
public class ConfigurationResponseParser {
    private ObjectMapper mMapper;
    private SessionManager mSessionManager;

    public static class ConfigJson {
        @JsonProperty("configuration")
        public JsonNode configuration;
        @JsonProperty("type")
        public String type;
    }

    public static class ConfigResponseJson {
        @JsonProperty("configurationList")
        public ConfigJson[] configs;
    }

    @Inject
    ConfigurationResponseParser(@Named("config-mapper") ObjectMapper objectMapper, SessionManager sessionManager) {
        this.mMapper = objectMapper;
        this.mSessionManager = sessionManager;
    }

    public Collection<UpsightConfiguration> parse(String str) throws IOException {
        ConfigResponseJson configResponseJson = (ConfigResponseJson) this.mMapper.readValue(str, ConfigResponseJson.class);
        Collection<UpsightConfiguration> linkedList = new LinkedList();
        for (ConfigJson configJson : configResponseJson.configs) {
            linkedList.add(UpsightConfiguration.create(configJson.type, this.mMapper.writeValueAsString(configJson.configuration), this.mSessionManager.getCurrentSession().getSessionNumber()));
        }
        return linkedList;
    }
}
