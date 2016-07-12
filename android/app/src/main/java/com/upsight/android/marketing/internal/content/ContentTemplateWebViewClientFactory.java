package com.upsight.android.marketing.internal.content;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.squareup.otto.Bus;
import com.upsight.android.logger.UpsightLogger;

public class ContentTemplateWebViewClientFactory {
    protected final Bus mBus;
    protected final UpsightLogger mLogger;
    protected final ObjectMapper mMapper;

    public ContentTemplateWebViewClientFactory(Bus bus, ObjectMapper objectMapper, UpsightLogger upsightLogger) {
        this.mBus = bus;
        this.mMapper = objectMapper;
        this.mLogger = upsightLogger;
    }

    public ContentTemplateWebViewClient create(MarketingContent marketingContent) {
        return new ContentTemplateWebViewClient(marketingContent, this.mBus, this.mMapper, this.mLogger);
    }
}
