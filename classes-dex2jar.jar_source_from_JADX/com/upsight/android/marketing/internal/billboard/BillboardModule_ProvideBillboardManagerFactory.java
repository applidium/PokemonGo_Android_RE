package com.upsight.android.marketing.internal.billboard;

import com.upsight.android.UpsightContext;
import com.upsight.android.marketing.UpsightBillboardManager;
import com.upsight.android.marketing.internal.content.MarketingContentStore;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class BillboardModule_ProvideBillboardManagerFactory implements Factory<UpsightBillboardManager> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<MarketingContentStore> contentStoreProvider;
    private final BillboardModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !BillboardModule_ProvideBillboardManagerFactory.class.desiredAssertionStatus();
    }

    public BillboardModule_ProvideBillboardManagerFactory(BillboardModule billboardModule, Provider<UpsightContext> provider, Provider<MarketingContentStore> provider2) {
        if ($assertionsDisabled || billboardModule != null) {
            this.module = billboardModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.contentStoreProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightBillboardManager> create(BillboardModule billboardModule, Provider<UpsightContext> provider, Provider<MarketingContentStore> provider2) {
        return new BillboardModule_ProvideBillboardManagerFactory(billboardModule, provider, provider2);
    }

    public UpsightBillboardManager get() {
        UpsightBillboardManager provideBillboardManager = this.module.provideBillboardManager((UpsightContext) this.upsightProvider.get(), (MarketingContentStore) this.contentStoreProvider.get());
        if (provideBillboardManager != null) {
            return provideBillboardManager;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
