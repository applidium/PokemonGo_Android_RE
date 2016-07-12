package com.upsight.android.internal.logger;

import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.persistence.UpsightDataStore;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class LoggerModule_ProvideUpsightLoggerFactory implements Factory<UpsightLogger> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<UpsightDataStore> dataStoreProvider;
    private final LoggerModule module;
    private final Provider<LogWriter> writerProvider;

    static {
        $assertionsDisabled = !LoggerModule_ProvideUpsightLoggerFactory.class.desiredAssertionStatus();
    }

    public LoggerModule_ProvideUpsightLoggerFactory(LoggerModule loggerModule, Provider<UpsightDataStore> provider, Provider<LogWriter> provider2) {
        if ($assertionsDisabled || loggerModule != null) {
            this.module = loggerModule;
            if ($assertionsDisabled || provider != null) {
                this.dataStoreProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.writerProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<UpsightLogger> create(LoggerModule loggerModule, Provider<UpsightDataStore> provider, Provider<LogWriter> provider2) {
        return new LoggerModule_ProvideUpsightLoggerFactory(loggerModule, provider, provider2);
    }

    public UpsightLogger get() {
        UpsightLogger provideUpsightLogger = this.module.provideUpsightLogger((UpsightDataStore) this.dataStoreProvider.get(), (LogWriter) this.writerProvider.get());
        if (provideUpsightLogger != null) {
            return provideUpsightLogger;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
