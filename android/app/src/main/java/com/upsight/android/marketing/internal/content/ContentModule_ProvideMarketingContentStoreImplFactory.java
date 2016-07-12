package com.upsight.android.marketing.internal.content;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ContentModule_ProvideMarketingContentStoreImplFactory implements Factory<MarketingContentStoreImpl> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ContentModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !ContentModule_ProvideMarketingContentStoreImplFactory.class.desiredAssertionStatus();
    }

    public ContentModule_ProvideMarketingContentStoreImplFactory(ContentModule contentModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || contentModule != null) {
            this.module = contentModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<MarketingContentStoreImpl> create(ContentModule contentModule, Provider<UpsightContext> provider) {
        return new ContentModule_ProvideMarketingContentStoreImplFactory(contentModule, provider);
    }

    public MarketingContentStoreImpl get() {
        MarketingContentStoreImpl provideMarketingContentStoreImpl = this.module.provideMarketingContentStoreImpl((UpsightContext) this.upsightProvider.get());
        if (provideMarketingContentStoreImpl != null) {
            return provideMarketingContentStoreImpl;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
