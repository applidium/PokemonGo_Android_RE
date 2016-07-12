package com.upsight.android.marketing.internal.content;

import com.upsight.android.marketing.UpsightMarketingContentStore;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ContentModule_ProvideUpsightMarketingContentStoreFactory implements Factory<UpsightMarketingContentStore> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<MarketingContentStoreImpl> implProvider;
    private final ContentModule module;

    static {
        $assertionsDisabled = !ContentModule_ProvideUpsightMarketingContentStoreFactory.class.desiredAssertionStatus();
    }

    public ContentModule_ProvideUpsightMarketingContentStoreFactory(ContentModule contentModule, Provider<MarketingContentStoreImpl> provider) {
        if ($assertionsDisabled || contentModule != null) {
            this.module = contentModule;
            if ($assertionsDisabled || provider != null) {
                this.implProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightMarketingContentStore> create(ContentModule contentModule, Provider<MarketingContentStoreImpl> provider) {
        return new ContentModule_ProvideUpsightMarketingContentStoreFactory(contentModule, provider);
    }

    public UpsightMarketingContentStore get() {
        UpsightMarketingContentStore provideUpsightMarketingContentStore = this.module.provideUpsightMarketingContentStore((MarketingContentStoreImpl) this.implProvider.get());
        if (provideUpsightMarketingContentStore != null) {
            return provideUpsightMarketingContentStore;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
