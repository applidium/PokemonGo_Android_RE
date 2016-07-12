package com.upsight.android.marketing.internal;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;

public final class BaseMarketingModule_ProvideUpsightContextFactory implements Factory<UpsightContext> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final BaseMarketingModule module;

    static {
        $assertionsDisabled = !BaseMarketingModule_ProvideUpsightContextFactory.class.desiredAssertionStatus();
    }

    public BaseMarketingModule_ProvideUpsightContextFactory(BaseMarketingModule baseMarketingModule) {
        if ($assertionsDisabled || baseMarketingModule != null) {
            this.module = baseMarketingModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<UpsightContext> create(BaseMarketingModule baseMarketingModule) {
        return new BaseMarketingModule_ProvideUpsightContextFactory(baseMarketingModule);
    }

    public UpsightContext get() {
        UpsightContext provideUpsightContext = this.module.provideUpsightContext();
        if (provideUpsightContext != null) {
            return provideUpsightContext;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
