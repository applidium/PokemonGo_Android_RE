package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.dispatcher.delivery.QueueBuilder;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public class RoutingModule {
    @Singleton
    @Provides
    public RouterBuilder provideRouterBuilder(UpsightContext upsightContext, QueueBuilder queueBuilder) {
        return new RouterBuilder(upsightContext.getCoreComponent().observeOnScheduler(), queueBuilder);
    }
}
