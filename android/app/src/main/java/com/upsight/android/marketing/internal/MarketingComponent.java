package com.upsight.android.marketing.internal;

import com.upsight.android.marketing.UpsightMarketingComponent;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {MarketingModule.class})
public interface MarketingComponent extends UpsightMarketingComponent {
}
