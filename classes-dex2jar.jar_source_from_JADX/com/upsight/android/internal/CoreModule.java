package com.upsight.android.internal;

import com.upsight.android.internal.logger.LoggerModule;
import com.upsight.android.internal.persistence.PersistenceModule;
import com.upsight.android.internal.persistence.storable.StorableModule;
import dagger.Module;

@Module(includes = {UpsightContextModule.class, ContextModule.class, PropertiesModule.class, ObjectMapperModule.class, SchedulersModule.class, StorableModule.class, PersistenceModule.class, LoggerModule.class})
public final class CoreModule {
}
