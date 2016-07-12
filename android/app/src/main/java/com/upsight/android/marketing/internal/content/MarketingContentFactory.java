package com.upsight.android.marketing.internal.content;

import android.text.TextUtils;
import com.upsight.android.analytics.internal.action.ActionMap;
import com.upsight.android.analytics.internal.action.ActionMapResponse;
import com.upsight.android.marketing.internal.content.MarketingContentActions.MarketingContentActionContext;
import com.upsight.android.marketing.internal.content.MarketingContentActions.MarketingContentActionFactory;

public final class MarketingContentFactory {
    private static final MarketingContentActionFactory sMarketingContentActionFactory;
    private MarketingContentActionContext mActionContext;

    static {
        sMarketingContentActionFactory = new MarketingContentActionFactory();
    }

    public MarketingContentFactory(MarketingContentActionContext marketingContentActionContext) {
        this.mActionContext = marketingContentActionContext;
    }

    public MarketingContent create(ActionMapResponse actionMapResponse) {
        Object actionMapId = actionMapResponse.getActionMapId();
        return (TextUtils.isEmpty(actionMapId) || !MarketingContentActionFactory.TYPE.equals(actionMapResponse.getActionFactory())) ? null : MarketingContent.create(actionMapId, new ActionMap(sMarketingContentActionFactory, this.mActionContext, actionMapResponse.getActionMap()));
    }
}
