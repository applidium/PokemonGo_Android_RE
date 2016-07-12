package com.upsight.android.analytics.internal.session;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.application.status")
public class ApplicationStatus {
    @UpsightStorableIdentifier
    String id;
    @JsonProperty
    State state;

    public enum State {
        BACKGROUND,
        FOREGROUND
    }

    ApplicationStatus() {
    }

    public ApplicationStatus(State state) {
        this.state = state;
    }

    public State getState() {
        return this.state;
    }
}
