package com.upsight.android.marketing;

import android.view.ViewGroup;
import com.upsight.android.marketing.internal.content.MarketingContent;

public interface UpsightContentMediator {
    void displayContent(MarketingContent marketingContent, ViewGroup viewGroup);

    String getContentProvider();

    void hideContent(MarketingContent marketingContent, ViewGroup viewGroup);

    boolean isAvailable();
}
