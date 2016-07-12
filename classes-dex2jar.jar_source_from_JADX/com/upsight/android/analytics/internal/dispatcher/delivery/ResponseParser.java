package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.analytics.dispatcher.EndpointResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;

class ResponseParser {
    private ObjectMapper mMapper;

    public static class Response {
        public final String error;
        public final Collection<EndpointResponse> responses;

        public Response(Collection<EndpointResponse> collection, String str) {
            this.responses = collection;
            this.error = str;
        }
    }

    public static class ResponseElementJson {
        @JsonProperty("content")
        public JsonNode content;
        @JsonProperty("type")
        public String type;
    }

    public static class ResponseJson {
        @JsonProperty("error")
        public String error;
        @JsonProperty("response")
        public List<ResponseElementJson> response;
    }

    @Inject
    public ResponseParser(@Named("config-mapper") ObjectMapper objectMapper) {
        this.mMapper = objectMapper;
    }

    public Response parse(String str) throws IOException {
        Response response;
        synchronized (this) {
            ResponseJson responseJson = (ResponseJson) this.mMapper.readValue(str, ResponseJson.class);
            Collection linkedList = new LinkedList();
            if (responseJson.response != null) {
                for (ResponseElementJson responseElementJson : responseJson.response) {
                    linkedList.add(EndpointResponse.create(responseElementJson.type, this.mMapper.writeValueAsString(responseElementJson.content)));
                }
            }
            response = new Response(linkedList, responseJson.error);
        }
        return response;
    }
}
