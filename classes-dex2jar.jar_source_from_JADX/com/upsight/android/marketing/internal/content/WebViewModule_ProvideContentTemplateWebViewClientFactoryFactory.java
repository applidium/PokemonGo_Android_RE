package com.upsight.android.marketing.internal.content;

import com.upsight.android.UpsightContext;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory implements Factory<ContentTemplateWebViewClientFactory> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final WebViewModule module;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory.class.desiredAssertionStatus();
    }

    public WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory(WebViewModule webViewModule, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || webViewModule != null) {
            this.module = webViewModule;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<ContentTemplateWebViewClientFactory> create(WebViewModule webViewModule, Provider<UpsightContext> provider) {
        return new WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory(webViewModule, provider);
    }

    public ContentTemplateWebViewClientFactory get() {
        ContentTemplateWebViewClientFactory provideContentTemplateWebViewClientFactory = this.module.provideContentTemplateWebViewClientFactory((UpsightContext) this.upsightProvider.get());
        if (provideContentTemplateWebViewClientFactory != null) {
            return provideContentTemplateWebViewClientFactory;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
