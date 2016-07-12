package com.upsight.android.internal;

import com.upsight.android.internal.logger.LogWriter;
import dagger.internal.Factory;

public final class ContextModule_ProvideLogWriterFactory implements Factory<LogWriter> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ContextModule module;

    static {
        $assertionsDisabled = !ContextModule_ProvideLogWriterFactory.class.desiredAssertionStatus();
    }

    public ContextModule_ProvideLogWriterFactory(ContextModule contextModule) {
        if ($assertionsDisabled || contextModule != null) {
            this.module = contextModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<LogWriter> create(ContextModule contextModule) {
        return new ContextModule_ProvideLogWriterFactory(contextModule);
    }

    public LogWriter get() {
        LogWriter provideLogWriter = this.module.provideLogWriter();
        if (provideLogWriter != null) {
            return provideLogWriter;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
