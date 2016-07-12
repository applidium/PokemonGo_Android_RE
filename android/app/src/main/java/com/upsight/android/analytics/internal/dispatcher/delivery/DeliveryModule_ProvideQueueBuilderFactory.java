package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.session.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;
import rx.Scheduler;

public final class DeliveryModule_ProvideQueueBuilderFactory implements Factory<QueueBuilder> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<Clock> clockProvider;
    private final DeliveryModule module;
    private final Provider<ResponseParser> responseParserProvider;
    private final Provider<Scheduler> retryExecutorProvider;
    private final Provider<Scheduler> sendExecutorProvider;
    private final Provider<SignatureVerifier> signatureVerifierProvider;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !DeliveryModule_ProvideQueueBuilderFactory.class.desiredAssertionStatus();
    }

    public DeliveryModule_ProvideQueueBuilderFactory(DeliveryModule deliveryModule, Provider<UpsightContext> provider, Provider<Clock> provider2, Provider<Scheduler> provider3, Provider<Scheduler> provider4, Provider<SignatureVerifier> provider5, Provider<ResponseParser> provider6) {
        if ($assertionsDisabled || deliveryModule != null) {
            this.module = deliveryModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.clockProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.retryExecutorProvider = provider3;
                        if ($assertionsDisabled || provider4 != null) {
                            this.sendExecutorProvider = provider4;
                            if ($assertionsDisabled || provider5 != null) {
                                this.signatureVerifierProvider = provider5;
                                if ($assertionsDisabled || provider6 != null) {
                                    this.responseParserProvider = provider6;
                                    return;
                                }
                                throw new AssertionError();
                            }
                            throw new AssertionError();
                        }
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<QueueBuilder> create(DeliveryModule deliveryModule, Provider<UpsightContext> provider, Provider<Clock> provider2, Provider<Scheduler> provider3, Provider<Scheduler> provider4, Provider<SignatureVerifier> provider5, Provider<ResponseParser> provider6) {
        return new DeliveryModule_ProvideQueueBuilderFactory(deliveryModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public QueueBuilder get() {
        QueueBuilder provideQueueBuilder = this.module.provideQueueBuilder((UpsightContext) this.upsightProvider.get(), (Clock) this.clockProvider.get(), (Scheduler) this.retryExecutorProvider.get(), (Scheduler) this.sendExecutorProvider.get(), (SignatureVerifier) this.signatureVerifierProvider.get(), this.responseParserProvider);
        if (provideQueueBuilder != null) {
            return provideQueueBuilder;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
