package com.upsight.android.marketing.internal.content;

import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightCoreComponent;
import com.upsight.android.analytics.UpsightAnalyticsComponent;
import com.upsight.android.marketing.UpsightMarketingContentStore;
import com.upsight.android.marketing.internal.content.MarketingContentActions.MarketingContentActionContext;
import dagger.Module;
import dagger.Provides;
import javax.inject.Named;
import javax.inject.Singleton;
import rx.Scheduler;

@Module
public final class ContentModule {
    @Singleton
    @Provides
    DefaultContentMediator provideDefaultContentMediator() {
        return new DefaultContentMediator();
    }

    @Singleton
    @Provides
    MarketingContentFactory provideMarketingContentFactory(UpsightContext upsightContext, @Named("main") Scheduler scheduler, MarketingContentStore marketingContentStore, ContentTemplateWebViewClientFactory contentTemplateWebViewClientFactory) {
        UpsightCoreComponent coreComponent = upsightContext.getCoreComponent();
        return new MarketingContentFactory(new MarketingContentActionContext(upsightContext, coreComponent.bus(), coreComponent.objectMapper(), ((UpsightAnalyticsComponent) ((UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME)).getComponent()).clock(), scheduler.createWorker(), upsightContext.getLogger(), marketingContentStore, contentTemplateWebViewClientFactory));
    }

    @Singleton
    @Provides
    MarketingContentStore provideMarketingContentStore(MarketingContentStoreImpl marketingContentStoreImpl) {
        return marketingContentStoreImpl;
    }

    @Singleton
    @Provides
    MarketingContentStoreImpl provideMarketingContentStoreImpl(UpsightContext upsightContext) {
        return new MarketingContentStoreImpl(upsightContext.getCoreComponent().bus(), ((UpsightAnalyticsComponent) ((UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME)).getComponent()).clock());
    }

    @Singleton
    @Provides
    UpsightMarketingContentStore provideUpsightMarketingContentStore(MarketingContentStoreImpl marketingContentStoreImpl) {
        return marketingContentStoreImpl;
    }
}
