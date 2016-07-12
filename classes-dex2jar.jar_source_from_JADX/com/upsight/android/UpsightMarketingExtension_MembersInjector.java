package com.upsight.android;

import com.upsight.android.marketing.UpsightBillboardManager;
import com.upsight.android.marketing.UpsightMarketingApi;
import com.upsight.android.marketing.UpsightMarketingComponent;
import com.upsight.android.marketing.internal.content.DefaultContentMediator;
import com.upsight.android.marketing.internal.content.MarketingContentFactory;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class UpsightMarketingExtension_MembersInjector implements MembersInjector<UpsightMarketingExtension> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<UpsightBillboardManager> mBillboardManagerProvider;
    private final Provider<DefaultContentMediator> mDefaultContentMediatorProvider;
    private final Provider<MarketingContentFactory> mMarketingContentFactoryProvider;
    private final Provider<UpsightMarketingApi> mMarketingProvider;
    private final MembersInjector<UpsightExtension<UpsightMarketingComponent, UpsightMarketingApi>> supertypeInjector;

    static {
        $assertionsDisabled = !UpsightMarketingExtension_MembersInjector.class.desiredAssertionStatus();
    }

    public UpsightMarketingExtension_MembersInjector(MembersInjector<UpsightExtension<UpsightMarketingComponent, UpsightMarketingApi>> membersInjector, Provider<UpsightMarketingApi> provider, Provider<MarketingContentFactory> provider2, Provider<UpsightBillboardManager> provider3, Provider<DefaultContentMediator> provider4) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mMarketingProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.mMarketingContentFactoryProvider = provider2;
                    if ($assertionsDisabled || provider3 != null) {
                        this.mBillboardManagerProvider = provider3;
                        if ($assertionsDisabled || provider4 != null) {
                            this.mDefaultContentMediatorProvider = provider4;
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

    public static MembersInjector<UpsightMarketingExtension> create(MembersInjector<UpsightExtension<UpsightMarketingComponent, UpsightMarketingApi>> membersInjector, Provider<UpsightMarketingApi> provider, Provider<MarketingContentFactory> provider2, Provider<UpsightBillboardManager> provider3, Provider<DefaultContentMediator> provider4) {
        return new UpsightMarketingExtension_MembersInjector(membersInjector, provider, provider2, provider3, provider4);
    }

    public void injectMembers(UpsightMarketingExtension upsightMarketingExtension) {
        if (upsightMarketingExtension == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(upsightMarketingExtension);
        upsightMarketingExtension.mMarketing = (UpsightMarketingApi) this.mMarketingProvider.get();
        upsightMarketingExtension.mMarketingContentFactory = (MarketingContentFactory) this.mMarketingContentFactoryProvider.get();
        upsightMarketingExtension.mBillboardManager = (UpsightBillboardManager) this.mBillboardManagerProvider.get();
        upsightMarketingExtension.mDefaultContentMediator = (DefaultContentMediator) this.mDefaultContentMediatorProvider.get();
    }
}
