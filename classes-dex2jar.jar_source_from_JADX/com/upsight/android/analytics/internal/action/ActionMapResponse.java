package com.upsight.android.analytics.internal.action;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.action_map")
public final class ActionMapResponse {
    @JsonProperty("action_factory")
    String actionFactory;
    @JsonProperty("action_map")
    JsonNode actionMap;
    @JsonProperty("id")
    String actionMapId;
    @UpsightStorableIdentifier
    String id;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActionMapResponse actionMapResponse = (ActionMapResponse) obj;
        if (this.id != null) {
            if (this.id.equals(actionMapResponse.id)) {
                return true;
            }
        } else if (actionMapResponse.id == null) {
            return true;
        }
        return false;
    }

    public String getActionFactory() {
        return this.actionFactory;
    }

    public JsonNode getActionMap() {
        return this.actionMap;
    }

    public String getActionMapId() {
        return this.actionMapId;
    }

    public int hashCode() {
        return this.id != null ? this.id.hashCode() : 0;
    }
}
