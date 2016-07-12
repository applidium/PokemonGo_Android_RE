package com.upsight.android.analytics.internal.dispatcher.schema;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class SchemaModule_ProvideSchemaSelectorBuilderFactory implements Factory<SchemaSelectorBuilder> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final SchemaModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !SchemaModule_ProvideSchemaSelectorBuilderFactory.class.desiredAssertionStatus();
    }

    public SchemaModule_ProvideSchemaSelectorBuilderFactory(SchemaModule schemaModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || schemaModule != null) {
            this.module = schemaModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<SchemaSelectorBuilder> create(SchemaModule schemaModule, Provider<UpsightContext> provider) {
        return new SchemaModule_ProvideSchemaSelectorBuilderFactory(schemaModule, provider);
    }

    public SchemaSelectorBuilder get() {
        SchemaSelectorBuilder provideSchemaSelectorBuilder = this.module.provideSchemaSelectorBuilder((UpsightContext) this.upsightProvider.get());
        if (provideSchemaSelectorBuilder != null) {
            return provideSchemaSelectorBuilder;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
