package com.upsight.android.analytics.internal.action;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

public abstract class Action<T extends Actionable, U extends ActionContext> {
    private U mActionContext;
    private JsonNode mParams;
    private String mType;

    protected Action(U u, String str, JsonNode jsonNode) {
        this.mActionContext = u;
        this.mType = str;
        this.mParams = jsonNode;
    }

    public abstract void execute(T t);

    public U getActionContext() {
        return this.mActionContext;
    }

    public String getType() {
        return this.mType;
    }

    protected int optParamInt(String str) {
        if (this.mParams != null) {
            JsonNode jsonNode = this.mParams.get(str);
            if (jsonNode != null && jsonNode.isInt()) {
                return jsonNode.asInt();
            }
        }
        return 0;
    }

    protected ArrayNode optParamJsonArray(String str) {
        if (this.mParams != null) {
            JsonNode jsonNode = this.mParams.get(str);
            if (jsonNode != null && jsonNode.isArray()) {
                return (ArrayNode) jsonNode;
            }
        }
        return null;
    }

    protected ObjectNode optParamJsonObject(String str) {
        if (this.mParams != null) {
            JsonNode jsonNode = this.mParams.get(str);
            if (jsonNode != null && jsonNode.isObject()) {
                return (ObjectNode) jsonNode;
            }
        }
        return null;
    }

    protected String optParamString(String str) {
        if (this.mParams != null) {
            JsonNode jsonNode = this.mParams.get(str);
            if (jsonNode != null && jsonNode.isTextual()) {
                return jsonNode.asText();
            }
        }
        return null;
    }
}
