package com.upsight.android.analytics.internal.provider;

import com.upsight.android.analytics.provider.UpsightOptOutStatus;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class ProviderModule_ProvidesOptOutStatusFactory implements Factory<UpsightOptOutStatus> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ProviderModule module;
    private final Provider<OptOutStatus> optOutStatusProvider;

    static {
        $assertionsDisabled = !ProviderModule_ProvidesOptOutStatusFactory.class.desiredAssertionStatus();
    }

    public ProviderModule_ProvidesOptOutStatusFactory(ProviderModule providerModule, Provider<OptOutStatus> provider) {
        if ($assertionsDisabled || providerModule != null) {
            this.module = providerModule;
            if ($assertionsDisabled || provider != null) {
                this.optOutStatusProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightOptOutStatus> create(ProviderModule providerModule, Provider<OptOutStatus> provider) {
        return new ProviderModule_ProvidesOptOutStatusFactory(providerModule, provider);
    }

    public UpsightOptOutStatus get() {
        UpsightOptOutStatus providesOptOutStatus = this.module.providesOptOutStatus((OptOutStatus) this.optOutStatusProvider.get());
        if (providesOptOutStatus != null) {
            return providesOptOutStatus;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
