package com.upsight.android.managedvariables.internal.type;

import com.upsight.android.analytics.internal.action.ActionMap;
import com.upsight.android.analytics.internal.action.Actionable;
import com.upsight.android.managedvariables.internal.type.UxmContentActions.UxmContentActionContext;

public class UxmContent extends Actionable {
    public static final String PREFERENCES_KEY_UXM_BUNDLE_ID = "uxmBundleId";
    public static final String TRIGGER_CONTENT_RECEIVED = "content_received";
    private boolean mShouldApplyBundle;

    private UxmContent(String str, ActionMap<UxmContent, UxmContentActionContext> actionMap, boolean z) {
        super(str, actionMap);
        this.mShouldApplyBundle = z;
    }

    public static UxmContent create(String str, ActionMap<UxmContent, UxmContentActionContext> actionMap, boolean z) {
        return new UxmContent(str, actionMap, z);
    }

    public boolean shouldApplyBundle() {
        return this.mShouldApplyBundle;
    }
}
