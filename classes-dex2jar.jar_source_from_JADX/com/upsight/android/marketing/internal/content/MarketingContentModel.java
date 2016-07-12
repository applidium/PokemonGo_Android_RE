package com.upsight.android.marketing.internal.content;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;

public final class MarketingContentModel {
    @JsonProperty("content_id")
    String contentId;
    @JsonProperty("context")
    JsonNode context;
    @JsonProperty("presentation")
    Presentation presentation;
    @JsonProperty("url")
    String templateUrl;

    public static class Presentation {
        public static final String STYLE_DIALOG = "dialog";
        public static final String STYLE_FULLSCREEN = "fullscreen";
        @JsonProperty("layout")
        DialogLayout layout;
        @JsonProperty("style")
        String style;

        public static class DialogLayout {
            @JsonProperty("landscape")
            public Dimensions landscape;
            @JsonProperty("portrait")
            public Dimensions portrait;

            public static class Dimensions {
                @JsonProperty("h")
                public int f272h;
                @JsonProperty("w")
                public int f273w;
                @JsonProperty("x")
                public int f274x;
                @JsonProperty("y")
                public int f275y;
            }
        }
    }

    MarketingContentModel() {
    }

    static MarketingContentModel from(JsonNode jsonNode, ObjectMapper objectMapper) throws IOException {
        return (MarketingContentModel) objectMapper.treeToValue(jsonNode, MarketingContentModel.class);
    }

    public String getContentID() {
        return this.contentId;
    }

    public JsonNode getContext() {
        return this.context;
    }

    public DialogLayout getDialogLayouts() {
        return this.presentation.layout;
    }

    public String getPresentationStyle() {
        return this.presentation.style;
    }

    public String getTemplateUrl() {
        return this.templateUrl;
    }
}
