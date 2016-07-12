package com.upsight.android;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.analytics.dispatcher.EndpointResponse;
import com.upsight.android.analytics.internal.action.ActionMapResponse;
import com.upsight.android.analytics.provider.UpsightDataProvider;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.managedvariables.UpsightManagedVariablesApi;
import com.upsight.android.managedvariables.UpsightManagedVariablesComponent;
import com.upsight.android.managedvariables.internal.BaseManagedVariablesModule;
import com.upsight.android.managedvariables.internal.DaggerManagedVariablesComponent;
import com.upsight.android.managedvariables.internal.type.UxmBlockProvider;
import com.upsight.android.managedvariables.internal.type.UxmContent;
import com.upsight.android.managedvariables.internal.type.UxmContentActions.UxmContentActionFactory;
import com.upsight.android.managedvariables.internal.type.UxmContentFactory;
import com.upsight.android.marketing.internal.content.MarketingContent;
import com.upsight.android.persistence.annotation.Created;
import java.io.IOException;
import javax.inject.Inject;

public class UpsightManagedVariablesExtension extends UpsightExtension<UpsightManagedVariablesComponent, UpsightManagedVariablesApi> {
    public static final String EXTENSION_NAME = "com.upsight.extension.managedvariables";
    private static final String UPSIGHT_ACTION_MAP = "upsight.action_map";
    private UpsightLogger mLogger;
    @Inject
    UpsightManagedVariablesApi mManagedVariables;
    private ObjectMapper mMapper;
    @Inject
    UxmBlockProvider mUxmBlockProvider;
    @Inject
    UxmContentFactory mUxmContentFactory;

    UpsightManagedVariablesExtension() {
    }

    public UpsightManagedVariablesApi getApi() {
        return this.mManagedVariables;
    }

    protected void onCreate(UpsightContext upsightContext) {
        this.mMapper = upsightContext.getCoreComponent().objectMapper();
        this.mLogger = upsightContext.getLogger();
        UpsightDataProvider.register(upsightContext, this.mUxmBlockProvider);
        upsightContext.getDataStore().subscribe(this);
    }

    protected UpsightManagedVariablesComponent onResolve(UpsightContext upsightContext) {
        return DaggerManagedVariablesComponent.builder().baseManagedVariablesModule(new BaseManagedVariablesModule(upsightContext)).build();
    }

    @Created
    public void onResponse(EndpointResponse endpointResponse) {
        if (UPSIGHT_ACTION_MAP.equals(endpointResponse.getType())) {
            try {
                ActionMapResponse actionMapResponse = (ActionMapResponse) this.mMapper.treeToValue(this.mMapper.readTree(endpointResponse.getContent()), ActionMapResponse.class);
                if (UxmContentActionFactory.TYPE.equals(actionMapResponse.getActionFactory())) {
                    UxmContent create = this.mUxmContentFactory.create(actionMapResponse);
                    if (create != null) {
                        create.executeActions(MarketingContent.TRIGGER_CONTENT_RECEIVED);
                    }
                }
            } catch (IOException e) {
                this.mLogger.m205w(Upsight.LOG_TAG, "Unable to parse action map", e);
            }
        }
    }
}
