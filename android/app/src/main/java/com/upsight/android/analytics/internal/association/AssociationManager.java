package com.upsight.android.analytics.internal.association;

import com.fasterxml.jackson.databind.node.ObjectNode;

public interface AssociationManager {
    void associate(String str, ObjectNode objectNode);

    void launch();
}
