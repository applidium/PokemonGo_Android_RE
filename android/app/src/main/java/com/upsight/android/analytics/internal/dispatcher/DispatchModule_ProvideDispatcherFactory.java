package com.upsight.android.analytics.internal.dispatcher;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.AnalyticsContext;
import com.upsight.android.analytics.internal.dispatcher.routing.RouterBuilder;
import com.upsight.android.analytics.internal.dispatcher.schema.SchemaSelectorBuilder;
import com.upsight.android.analytics.internal.session.SessionManager;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class DispatchModule_ProvideDispatcherFactory implements Factory<Dispatcher> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ConfigParser> configParserProvider;
    private final Provider<AnalyticsContext> contextProvider;
    private final DispatchModule module;
    private final Provider<RouterBuilder> routerBuilderProvider;
    private final Provider<SchemaSelectorBuilder> schemaSelectorBuilderProvider;
    private final Provider<SessionManager> sessionManagerProvider;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !DispatchModule_ProvideDispatcherFactory.class.desiredAssertionStatus();
    }

    public DispatchModule_ProvideDispatcherFactory(DispatchModule dispatchModule, Provider<UpsightContext> provider, Provider<SessionManager> provider2, Provider<AnalyticsContext> provider3, Provider<ConfigParser> provider4, Provider<RouterBuilder> provider5, Provider<SchemaSelectorBuilder> provider6) {
        if ($assertionsDisabled || dispatchModule != null) {
            this.module = dispatchModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.sessionManagerProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.contextProvider = provider3;
                        if ($assertionsDisabled || provider4 != null) {
                            this.configParserProvider = provider4;
                            if ($assertionsDisabled || provider5 != null) {
                                this.routerBuilderProvider = provider5;
                                if ($assertionsDisabled || provider6 != null) {
                                    this.schemaSelectorBuilderProvider = provider6;
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

    public static Factory<Dispatcher> create(DispatchModule dispatchModule, Provider<UpsightContext> provider, Provider<SessionManager> provider2, Provider<AnalyticsContext> provider3, Provider<ConfigParser> provider4, Provider<RouterBuilder> provider5, Provider<SchemaSelectorBuilder> provider6) {
        return new DispatchModule_ProvideDispatcherFactory(dispatchModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public Dispatcher get() {
        Dispatcher provideDispatcher = this.module.provideDispatcher((UpsightContext) this.upsightProvider.get(), (SessionManager) this.sessionManagerProvider.get(), (AnalyticsContext) this.contextProvider.get(), (ConfigParser) this.configParserProvider.get(), (RouterBuilder) this.routerBuilderProvider.get(), (SchemaSelectorBuilder) this.schemaSelectorBuilderProvider.get());
        if (provideDispatcher != null) {
            return provideDispatcher;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
