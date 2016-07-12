package com.upsight.android.analytics.internal.dispatcher.schema;

import com.upsight.android.UpsightContext;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class SchemaModule {
    @Singleton
    @Provides
    public SchemaSelectorBuilder provideSchemaSelectorBuilder(UpsightContext upsightContext) {
        return new SchemaSelectorBuilder(upsightContext);
    }
}
