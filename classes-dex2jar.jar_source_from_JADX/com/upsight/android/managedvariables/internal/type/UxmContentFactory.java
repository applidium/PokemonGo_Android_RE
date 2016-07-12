package com.upsight.android.managedvariables.internal.type;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.upsight.android.analytics.internal.action.ActionMap;
import com.upsight.android.analytics.internal.action.ActionMapResponse;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.internal.type.UxmContentActions.UxmContentActionContext;
import com.upsight.android.managedvariables.internal.type.UxmContentActions.UxmContentActionFactory;
import java.util.Iterator;

public final class UxmContentFactory {
    private static final String ACTION_MODIFY_VALUE = "action_modify_value";
    private static final String ACTION_SET_BUNDLE_ID = "action_set_bundle_id";
    private static final String KEY_ACTIONS = "actions";
    private static final String KEY_ACTION_TYPE = "action_type";
    private static final UxmContentActionFactory sUxmContentActionFactory;
    private UxmContentActionContext mActionContext;
    private UpsightUserExperience mUserExperience;

    static {
        sUxmContentActionFactory = new UxmContentActionFactory();
    }

    public UxmContentFactory(UxmContentActionContext uxmContentActionContext, UpsightUserExperience upsightUserExperience) {
        this.mActionContext = uxmContentActionContext;
        this.mUserExperience = upsightUserExperience;
    }

    public UxmContent create(ActionMapResponse actionMapResponse) {
        boolean z = false;
        Object actionMapId = actionMapResponse.getActionMapId();
        if (TextUtils.isEmpty(actionMapId) || !UxmContentActionFactory.TYPE.equals(actionMapResponse.getActionFactory())) {
            return null;
        }
        JsonNode actionMap = actionMapResponse.getActionMap();
        if (actionMap != null && actionMap.isArray()) {
            Iterator it = actionMap.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                JsonNode findPath = ((JsonNode) it.next()).findPath(KEY_ACTIONS);
                if (findPath != null && findPath.isArray()) {
                    Iterator it2 = findPath.iterator();
                    while (it2.hasNext()) {
                        findPath = ((JsonNode) it2.next()).findPath(KEY_ACTION_TYPE);
                        if (!ACTION_SET_BUNDLE_ID.equals(findPath.asText())) {
                            if (ACTION_MODIFY_VALUE.equals(findPath.asText())) {
                            }
                        }
                        z = this.mUserExperience.getHandler().onReceive();
                        break;
                    }
                }
                z = z2;
                if (z) {
                    break;
                }
                z2 = z;
            }
            z = z2;
        }
        return UxmContent.create(actionMapId, new ActionMap(sUxmContentActionFactory, this.mActionContext, actionMap), z);
    }
}
