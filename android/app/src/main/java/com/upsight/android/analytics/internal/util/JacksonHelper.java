package com.upsight.android.analytics.internal.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public interface JacksonHelper {

    public static class JSONArraySerializer {
        private static ObjectMapper sMapper;

        static {
            sMapper = new ObjectMapper();
        }

        public static JSONArray fromArrayNode(ArrayNode arrayNode) {
            if (arrayNode == null) {
                return null;
            }
            try {
                return new JSONArray(arrayNode.toString());
            } catch (JSONException e) {
                return null;
            }
        }

        public static ArrayNode toArrayNode(JSONArray jSONArray) {
            try {
                return (ArrayNode) sMapper.readTree(jSONArray.toString());
            } catch (IOException e) {
                return null;
            }
        }
    }

    public static class JSONObjectSerializer {
        private static ObjectMapper sMapper;

        static {
            sMapper = new ObjectMapper();
        }

        public static JSONObject fromObjectNode(ObjectNode objectNode) {
            if (objectNode == null) {
                return null;
            }
            try {
                return new JSONObject(objectNode.toString());
            } catch (JSONException e) {
                return null;
            }
        }

        public static ObjectNode toObjectNode(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                return (ObjectNode) sMapper.readTree(jSONObject.toString());
            } catch (IOException e) {
                return null;
            }
        }
    }
}
