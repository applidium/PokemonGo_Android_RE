package com.upsight.android.internal;

import android.content.Context;
import dagger.internal.Factory;

public final class ContextModule_ProvideApplicationContextFactory implements Factory<Context> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ContextModule module;

    static {
        $assertionsDisabled = !ContextModule_ProvideApplicationContextFactory.class.desiredAssertionStatus();
    }

    public ContextModule_ProvideApplicationContextFactory(ContextModule contextModule) {
        if ($assertionsDisabled || contextModule != null) {
            this.module = contextModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<Context> create(ContextModule contextModule) {
        return new ContextModule_ProvideApplicationContextFactory(contextModule);
    }

    public Context get() {
        Context provideApplicationContext = this.module.provideApplicationContext();
        if (provideApplicationContext != null) {
            return provideApplicationContext;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
