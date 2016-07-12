package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.session.Clock;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Provider;
import javax.inject.Singleton;
import rx.Scheduler;

@Module
public final class DeliveryModule {
    @Singleton
    @Provides
    public QueueBuilder provideQueueBuilder(UpsightContext upsightContext, Clock clock, @Named("dispatcher-threadpool") Scheduler scheduler, @Named("dispatcher-batching") Scheduler scheduler2, SignatureVerifier signatureVerifier, Provider<ResponseParser> provider) {
        return new QueueBuilder(upsightContext, upsightContext.getCoreComponent().objectMapper(), clock, upsightContext.getLogger(), scheduler, scheduler2, signatureVerifier, provider);
    }

    @Singleton
    @Provides
    public SignatureVerifier provideResponseVerifier(UpsightContext upsightContext) {
        return new BouncySignatureVerifier(upsightContext);
    }
}
