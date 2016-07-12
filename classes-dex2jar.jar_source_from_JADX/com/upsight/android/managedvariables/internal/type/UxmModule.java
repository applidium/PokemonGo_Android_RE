package com.upsight.android.managedvariables.internal.type;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightCoreComponent;
import com.upsight.android.analytics.UpsightAnalyticsComponent;
import com.upsight.android.logger.UpsightLogger;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.internal.type.UxmContentActions.UxmContentActionContext;
import dagger.Module;
import dagger.Provides;
import java.io.InputStream;
import javax.inject.Named;
import javax.inject.Singleton;
import org.apache.commons.io.IOUtils;
import rx.Scheduler;
import spacemadness.com.lunarconsole.BuildConfig;

@Module
public class UxmModule {
    public static final String MAPPER_UXM_SCHEMA = "mapperUxmSchema";
    public static final String STRING_RAW_UXM_SCHEMA = "stringRawUxmSchema";

    @Singleton
    @Provides
    ManagedVariableManager provideManagedVariableManager(UpsightContext upsightContext, @Named("main") Scheduler scheduler, UxmSchema uxmSchema) {
        return new ManagedVariableManager(scheduler, upsightContext.getDataStore(), uxmSchema);
    }

    @Singleton
    @Provides
    UxmBlockProvider provideUxmBlockProvider(UpsightContext upsightContext, @Named("stringRawUxmSchema") String str, UxmSchema uxmSchema) {
        return new UxmBlockProvider(upsightContext, str, uxmSchema);
    }

    @Singleton
    @Provides
    UxmContentFactory provideUxmContentFactory(UpsightContext upsightContext, @Named("main") Scheduler scheduler, UpsightUserExperience upsightUserExperience) {
        UpsightCoreComponent coreComponent = upsightContext.getCoreComponent();
        return new UxmContentFactory(new UxmContentActionContext(upsightContext, coreComponent.bus(), coreComponent.objectMapper(), ((UpsightAnalyticsComponent) ((UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME)).getComponent()).clock(), scheduler.createWorker(), upsightContext.getLogger()), upsightUserExperience);
    }

    @Singleton
    @Provides
    UxmSchema provideUxmSchema(UpsightContext upsightContext, @Named("mapperUxmSchema") ObjectMapper objectMapper, @Named("stringRawUxmSchema") String str) {
        UpsightLogger logger = upsightContext.getLogger();
        UxmSchema uxmSchema = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                uxmSchema = UxmSchema.create(str, objectMapper, logger);
            } catch (Throwable e) {
                logger.m200e(Upsight.LOG_TAG, e, "Failed to parse UXM schema", new Object[0]);
            }
        }
        if (uxmSchema != null) {
            return uxmSchema;
        }
        uxmSchema = new UxmSchema(logger);
        logger.m197d(Upsight.LOG_TAG, "Empty UXM schema used", new Object[0]);
        return uxmSchema;
    }

    @Singleton
    @Provides
    @Named("mapperUxmSchema")
    ObjectMapper provideUxmSchemaMapper(UpsightContext upsightContext) {
        return upsightContext.getCoreComponent().objectMapper().copy().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, true);
    }

    @Singleton
    @Provides
    @Named("stringRawUxmSchema")
    String provideUxmSchemaRawString(UpsightContext upsightContext, @Named("resUxmSchema") Integer num) {
        UpsightLogger logger = upsightContext.getLogger();
        String str = BuildConfig.FLAVOR;
        try {
            InputStream openRawResource = upsightContext.getResources().openRawResource(num.intValue());
            if (openRawResource != null) {
                return IOUtils.toString(openRawResource);
            }
            logger.m199e(Upsight.LOG_TAG, "Failed to find UXM schema file", new Object[0]);
            return str;
        } catch (Throwable e) {
            logger.m200e(Upsight.LOG_TAG, e, "Failed to read UXM schema file", new Object[0]);
            return str;
        }
    }
}
