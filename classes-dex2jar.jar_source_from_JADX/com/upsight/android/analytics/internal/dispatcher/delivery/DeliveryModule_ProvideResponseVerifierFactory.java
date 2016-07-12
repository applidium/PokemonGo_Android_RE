package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class DeliveryModule_ProvideResponseVerifierFactory implements Factory<SignatureVerifier> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final DeliveryModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !DeliveryModule_ProvideResponseVerifierFactory.class.desiredAssertionStatus();
    }

    public DeliveryModule_ProvideResponseVerifierFactory(DeliveryModule deliveryModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || deliveryModule != null) {
            this.module = deliveryModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<SignatureVerifier> create(DeliveryModule deliveryModule, Provider<UpsightContext> provider) {
        return new DeliveryModule_ProvideResponseVerifierFactory(deliveryModule, provider);
    }

    public SignatureVerifier get() {
        SignatureVerifier provideResponseVerifier = this.module.provideResponseVerifier((UpsightContext) this.upsightProvider.get());
        if (provideResponseVerifier != null) {
            return provideResponseVerifier;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
