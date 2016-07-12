package com.upsight.android.analytics.dispatcher;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.dispatcher.response")
public final class EndpointResponse {
    @UpsightStorableIdentifier
    @JsonProperty("id")
    String id;
    @JsonProperty("content")
    private String mContent;
    @JsonProperty("type")
    private String mType;

    EndpointResponse() {
    }

    EndpointResponse(String str, String str2) {
        this.mType = str;
        this.mContent = str2;
    }

    public static EndpointResponse create(String str, String str2) {
        return new EndpointResponse(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EndpointResponse endpointResponse = (EndpointResponse) obj;
        return (this.id == null || endpointResponse.id == null || !this.id.equals(endpointResponse.id)) ? false : true;
    }

    public String getContent() {
        return this.mContent;
    }

    public String getType() {
        return this.mType;
    }

    public int hashCode() {
        return this.id != null ? this.id.hashCode() : 0;
    }
}
