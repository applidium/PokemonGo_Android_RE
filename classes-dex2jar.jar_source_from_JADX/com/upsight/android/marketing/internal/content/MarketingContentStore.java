package com.upsight.android.marketing.internal.content;

import com.upsight.android.analytics.internal.action.ActionableStore;
import java.util.Set;

public interface MarketingContentStore extends ActionableStore<MarketingContent> {
    Set<String> getIdsForScope(String str);

    boolean presentScopedContent(String str, String[] strArr);

    boolean presentScopelessContent(String str, String str2);
}
