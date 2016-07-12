package com.upsight.android.marketing.internal;

import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightMarketingExtension;
import com.upsight.android.UpsightMarketingExtension_MembersInjector;
import com.upsight.android.marketing.UpsightBillboardManager;
import com.upsight.android.marketing.UpsightMarketingApi;
import com.upsight.android.marketing.UpsightMarketingContentStore;
import com.upsight.android.marketing.internal.billboard.BillboardModule;
import com.upsight.android.marketing.internal.billboard.BillboardModule_ProvideBillboardManagerFactory;
import com.upsight.android.marketing.internal.content.ContentModule;
import com.upsight.android.marketing.internal.content.ContentModule_ProvideDefaultContentMediatorFactory;
import com.upsight.android.marketing.internal.content.ContentModule_ProvideMarketingContentFactoryFactory;
import com.upsight.android.marketing.internal.content.ContentModule_ProvideMarketingContentStoreFactory;
import com.upsight.android.marketing.internal.content.ContentModule_ProvideMarketingContentStoreImplFactory;
import com.upsight.android.marketing.internal.content.ContentModule_ProvideUpsightMarketingContentStoreFactory;
import com.upsight.android.marketing.internal.content.ContentTemplateWebViewClientFactory;
import com.upsight.android.marketing.internal.content.DaggerMarketingComponent_PackageProxy;
import com.upsight.android.marketing.internal.content.DefaultContentMediator;
import com.upsight.android.marketing.internal.content.MarketingContentFactory;
import com.upsight.android.marketing.internal.content.MarketingContentStore;
import com.upsight.android.marketing.internal.content.WebViewModule;
import com.upsight.android.marketing.internal.content.WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory;
import dagger.MembersInjector;
import dagger.internal.MembersInjectors;
import dagger.internal.ScopedProvider;
import javax.inject.Provider;
import rx.Scheduler;

public final class DaggerMarketingComponent implements MarketingComponent {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final DaggerMarketingComponent_PackageProxy com_upsight_android_marketing_internal_content_Proxy;
    private Provider<UpsightBillboardManager> provideBillboardManagerProvider;
    private Provider<ContentTemplateWebViewClientFactory> provideContentTemplateWebViewClientFactoryProvider;
    private Provider<DefaultContentMediator> provideDefaultContentMediatorProvider;
    private Provider<Scheduler> provideMainSchedulerProvider;
    private Provider<UpsightMarketingApi> provideMarketingApiProvider;
    private Provider<MarketingContentFactory> provideMarketingContentFactoryProvider;
    private Provider<MarketingContentStore> provideMarketingContentStoreProvider;
    private Provider<UpsightContext> provideUpsightContextProvider;
    private Provider<UpsightMarketingContentStore> provideUpsightMarketingContentStoreProvider;
    private MembersInjector<UpsightMarketingExtension> upsightMarketingExtensionMembersInjector;

    public static final class Builder {
        private BaseMarketingModule baseMarketingModule;
        private BillboardModule billboardModule;
        private ContentModule contentModule;
        private MarketingModule marketingModule;
        private WebViewModule webViewModule;

        private Builder() {
        }

        public Builder baseMarketingModule(BaseMarketingModule baseMarketingModule) {
            if (baseMarketingModule == null) {
                throw new NullPointerException("baseMarketingModule");
            }
            this.baseMarketingModule = baseMarketingModule;
            return this;
        }

        public Builder billboardModule(BillboardModule billboardModule) {
            if (billboardModule == null) {
                throw new NullPointerException("billboardModule");
            }
            this.billboardModule = billboardModule;
            return this;
        }

        public MarketingComponent build() {
            if (this.marketingModule == null) {
                this.marketingModule = new MarketingModule();
            }
            if (this.billboardModule == null) {
                this.billboardModule = new BillboardModule();
            }
            if (this.contentModule == null) {
                this.contentModule = new ContentModule();
            }
            if (this.webViewModule == null) {
                this.webViewModule = new WebViewModule();
            }
            if (this.baseMarketingModule != null) {
                return new DaggerMarketingComponent();
            }
            throw new IllegalStateException("baseMarketingModule must be set");
        }

        public Builder contentModule(ContentModule contentModule) {
            if (contentModule == null) {
                throw new NullPointerException("contentModule");
            }
            this.contentModule = contentModule;
            return this;
        }

        public Builder marketingModule(MarketingModule marketingModule) {
            if (marketingModule == null) {
                throw new NullPointerException("marketingModule");
            }
            this.marketingModule = marketingModule;
            return this;
        }

        public Builder webViewModule(WebViewModule webViewModule) {
            if (webViewModule == null) {
                throw new NullPointerException("webViewModule");
            }
            this.webViewModule = webViewModule;
            return this;
        }
    }

    static {
        $assertionsDisabled = !DaggerMarketingComponent.class.desiredAssertionStatus();
    }

    private DaggerMarketingComponent(Builder builder) {
        this.com_upsight_android_marketing_internal_content_Proxy = new DaggerMarketingComponent_PackageProxy();
        if ($assertionsDisabled || builder != null) {
            initialize(builder);
            return;
        }
        throw new AssertionError();
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(Builder builder) {
        this.provideUpsightContextProvider = ScopedProvider.create(BaseMarketingModule_ProvideUpsightContextFactory.create(builder.baseMarketingModule));
        this.com_upsight_android_marketing_internal_content_Proxy.provideMarketingContentStoreImplProvider = ScopedProvider.create(ContentModule_ProvideMarketingContentStoreImplFactory.create(builder.contentModule, this.provideUpsightContextProvider));
        this.provideMarketingContentStoreProvider = ScopedProvider.create(ContentModule_ProvideMarketingContentStoreFactory.create(builder.contentModule, this.com_upsight_android_marketing_internal_content_Proxy.provideMarketingContentStoreImplProvider));
        this.provideBillboardManagerProvider = ScopedProvider.create(BillboardModule_ProvideBillboardManagerFactory.create(builder.billboardModule, this.provideUpsightContextProvider, this.provideMarketingContentStoreProvider));
        this.provideUpsightMarketingContentStoreProvider = ScopedProvider.create(ContentModule_ProvideUpsightMarketingContentStoreFactory.create(builder.contentModule, this.com_upsight_android_marketing_internal_content_Proxy.provideMarketingContentStoreImplProvider));
        this.provideMarketingApiProvider = ScopedProvider.create(BaseMarketingModule_ProvideMarketingApiFactory.create(builder.baseMarketingModule, this.provideBillboardManagerProvider, this.provideUpsightMarketingContentStoreProvider));
        this.provideMainSchedulerProvider = ScopedProvider.create(BaseMarketingModule_ProvideMainSchedulerFactory.create(builder.baseMarketingModule));
        this.provideContentTemplateWebViewClientFactoryProvider = ScopedProvider.create(WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory.create(builder.webViewModule, this.provideUpsightContextProvider));
        this.provideMarketingContentFactoryProvider = ScopedProvider.create(ContentModule_ProvideMarketingContentFactoryFactory.create(builder.contentModule, this.provideUpsightContextProvider, this.provideMainSchedulerProvider, this.provideMarketingContentStoreProvider, this.provideContentTemplateWebViewClientFactoryProvider));
        this.provideDefaultContentMediatorProvider = ScopedProvider.create(ContentModule_ProvideDefaultContentMediatorFactory.create(builder.contentModule));
        this.upsightMarketingExtensionMembersInjector = UpsightMarketingExtension_MembersInjector.create(MembersInjectors.noOp(), this.provideMarketingApiProvider, this.provideMarketingContentFactoryProvider, this.provideBillboardManagerProvider, this.provideDefaultContentMediatorProvider);
    }

    public void inject(UpsightMarketingExtension upsightMarketingExtension) {
        this.upsightMarketingExtensionMembersInjector.injectMembers(upsightMarketingExtension);
    }
}
