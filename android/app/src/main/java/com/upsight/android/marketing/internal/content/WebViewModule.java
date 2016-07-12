package com.upsight.android.marketing.internal.content;

import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightCoreComponent;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class WebViewModule {
    @Singleton
    @Provides
    ContentTemplateWebViewClientFactory provideContentTemplateWebViewClientFactory(UpsightContext upsightContext) {
        UpsightCoreComponent coreComponent = upsightContext.getCoreComponent();
        return new ContentTemplateWebViewClientFactory(coreComponent.bus(), coreComponent.objectMapper(), upsightContext.getLogger());
    }
}
