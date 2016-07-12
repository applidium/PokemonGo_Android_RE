package com.upsight.android.analytics.internal.association;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.session.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class AssociationModule_ProvideAssociationManagerFactory implements Factory<AssociationManager> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Clock> clockProvider;
    private final AssociationModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !AssociationModule_ProvideAssociationManagerFactory.class.desiredAssertionStatus();
    }

    public AssociationModule_ProvideAssociationManagerFactory(AssociationModule associationModule, Provider<UpsightContext> provider, Provider<Clock> provider2) {
        if ($assertionsDisabled || associationModule != null) {
            this.module = associationModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.clockProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<AssociationManager> create(AssociationModule associationModule, Provider<UpsightContext> provider, Provider<Clock> provider2) {
        return new AssociationModule_ProvideAssociationManagerFactory(associationModule, provider, provider2);
    }

    public AssociationManager get() {
        AssociationManager provideAssociationManager = this.module.provideAssociationManager((UpsightContext) this.upsightProvider.get(), (Clock) this.clockProvider.get());
        if (provideAssociationManager != null) {
            return provideAssociationManager;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
