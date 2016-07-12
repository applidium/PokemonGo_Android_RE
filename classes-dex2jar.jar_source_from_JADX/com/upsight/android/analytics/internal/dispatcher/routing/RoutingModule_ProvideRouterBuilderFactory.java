package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.dispatcher.delivery.QueueBuilder;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class RoutingModule_ProvideRouterBuilderFactory implements Factory<RouterBuilder> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final RoutingModule module;
    private final Provider<QueueBuilder> queueBuilderProvider;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !RoutingModule_ProvideRouterBuilderFactory.class.desiredAssertionStatus();
    }

    public RoutingModule_ProvideRouterBuilderFactory(RoutingModule routingModule, Provider<UpsightContext> provider, Provider<QueueBuilder> provider2) {
        if ($assertionsDisabled || routingModule != null) {
            this.module = routingModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.queueBuilderProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<RouterBuilder> create(RoutingModule routingModule, Provider<UpsightContext> provider, Provider<QueueBuilder> provider2) {
        return new RoutingModule_ProvideRouterBuilderFactory(routingModule, provider, provider2);
    }

    public RouterBuilder get() {
        RouterBuilder provideRouterBuilder = this.module.provideRouterBuilder((UpsightContext) this.upsightProvider.get(), (QueueBuilder) this.queueBuilderProvider.get());
        if (provideRouterBuilder != null) {
            return provideRouterBuilder;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
