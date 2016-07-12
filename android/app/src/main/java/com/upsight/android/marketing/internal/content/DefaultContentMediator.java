package com.upsight.android.marketing.internal.content;

import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.upsight.android.marketing.UpsightContentMediator;

public final class DefaultContentMediator implements UpsightContentMediator {
    DefaultContentMediator() {
    }

    public void displayContent(MarketingContent marketingContent, ViewGroup viewGroup) {
        viewGroup.addView(marketingContent.getContentView(), new LayoutParams(-1, -1));
    }

    public String getContentProvider() {
        return MarketingContent.UPSIGHT_CONTENT_PROVIDER;
    }

    public void hideContent(MarketingContent marketingContent, ViewGroup viewGroup) {
        viewGroup.removeAllViews();
    }

    public boolean isAvailable() {
        return true;
    }
}
