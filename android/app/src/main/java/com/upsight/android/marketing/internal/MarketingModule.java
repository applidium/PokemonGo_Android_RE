package com.upsight.android.marketing.internal;

import com.upsight.android.marketing.internal.billboard.BillboardModule;
import com.upsight.android.marketing.internal.content.ContentModule;
import com.upsight.android.marketing.internal.content.WebViewModule;
import dagger.Module;

@Module(includes = {BillboardModule.class, ContentModule.class, WebViewModule.class, BaseMarketingModule.class})
public class MarketingModule {
}
