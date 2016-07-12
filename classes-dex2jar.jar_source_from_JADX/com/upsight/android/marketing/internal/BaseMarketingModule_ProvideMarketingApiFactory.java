package com.upsight.android.marketing.internal;

import com.upsight.android.marketing.UpsightBillboardManager;
import com.upsight.android.marketing.UpsightMarketingApi;
import com.upsight.android.marketing.UpsightMarketingContentStore;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class BaseMarketingModule_ProvideMarketingApiFactory implements Factory<UpsightMarketingApi> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<UpsightBillboardManager> billboardManagerProvider;
    private final Provider<UpsightMarketingContentStore> marketingContentStoreProvider;
    private final BaseMarketingModule module;

    static {
        $assertionsDisabled = !BaseMarketingModule_ProvideMarketingApiFactory.class.desiredAssertionStatus();
    }

    public BaseMarketingModule_ProvideMarketingApiFactory(BaseMarketingModule baseMarketingModule, Provider<UpsightBillboardManager> provider, Provider<UpsightMarketingContentStore> provider2) {
        if ($assertionsDisabled || baseMarketingModule != null) {
            this.module = baseMarketingModule;
            if ($assertionsDisabled || provider != null) {
                this.billboardManagerProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.marketingContentStoreProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightMarketingApi> create(BaseMarketingModule baseMarketingModule, Provider<UpsightBillboardManager> provider, Provider<UpsightMarketingContentStore> provider2) {
        return new BaseMarketingModule_ProvideMarketingApiFactory(baseMarketingModule, provider, provider2);
    }

    public UpsightMarketingApi get() {
        UpsightMarketingApi provideMarketingApi = this.module.provideMarketingApi((UpsightBillboardManager) this.billboardManagerProvider.get(), (UpsightMarketingContentStore) this.marketingContentStoreProvider.get());
        if (provideMarketingApi != null) {
            return provideMarketingApi;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
