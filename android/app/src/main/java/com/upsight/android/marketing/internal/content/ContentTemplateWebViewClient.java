package com.upsight.android.marketing.internal.content;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.squareup.otto.Bus;
import com.upsight.android.logger.UpsightLogger;
import java.util.Iterator;

class ContentTemplateWebViewClient extends WebViewClient {
    private static final String DISPATCH_CALLBACK = "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s, %s)";
    private static final String DISPATCH_CALLBACK_PROTOCOL = "javascript:window.PlayHavenDispatchProtocolVersion=7";
    private static final String DISPATCH_LOAD_CONTEXT = "ph://loadContext";
    private static final String DISPATCH_PARAM_KEY_CALLBACK_ID = "callback";
    private static final String DISPATCH_PARAM_KEY_CONTEXT = "context";
    private static final String DISPATCH_PARAM_KEY_TRIGGER = "trigger";
    private static final String DISPATCH_PARAM_KEY_VIEW_DATA = "view_data";
    private static final String DISPATCH_SCHEME = "ph://";
    private final Bus mBus;
    private boolean mIsTemplateLoaded;
    private final UpsightLogger mLogger;
    private final ObjectMapper mMapper;
    private final MarketingContent mMarketingContent;

    public ContentTemplateWebViewClient(MarketingContent marketingContent, Bus bus, ObjectMapper objectMapper, UpsightLogger upsightLogger) {
        this.mIsTemplateLoaded = false;
        this.mMarketingContent = marketingContent;
        this.mBus = bus;
        this.mMapper = objectMapper;
        this.mLogger = upsightLogger;
    }

    private boolean handleActionDispatch(String str) {
        if (str == null || !str.startsWith(DISPATCH_SCHEME)) {
            return false;
        }
        String queryParameter = Uri.parse(str).getQueryParameter(DISPATCH_PARAM_KEY_CONTEXT);
        if (!TextUtils.isEmpty(queryParameter)) {
            try {
                JsonNode readTree = this.mMapper.readTree(queryParameter);
                if (readTree.hasNonNull(DISPATCH_PARAM_KEY_TRIGGER)) {
                    JsonNode path = readTree.path(DISPATCH_PARAM_KEY_TRIGGER);
                    if (path.isTextual()) {
                        this.mMarketingContent.executeActions(path.asText());
                        return true;
                    }
                } else if (readTree.hasNonNull(DISPATCH_PARAM_KEY_VIEW_DATA)) {
                    JsonNode path2 = readTree.path(DISPATCH_PARAM_KEY_VIEW_DATA);
                    Iterator fieldNames = path2.fieldNames();
                    while (fieldNames.hasNext()) {
                        queryParameter = (String) fieldNames.next();
                        this.mMarketingContent.putExtra(queryParameter, path2.path(queryParameter).toString());
                    }
                }
            } catch (Throwable e) {
                this.mLogger.m200e(getClass().getSimpleName(), e, "Failed to parse contextNode=" + null, new Object[0]);
                return true;
            }
        }
        return true;
    }

    @TargetApi(19)
    private boolean handleLoadContextDispatch(WebView webView, String str) {
        if (str == null || !str.startsWith(DISPATCH_LOAD_CONTEXT)) {
            return false;
        }
        String format = String.format(DISPATCH_CALLBACK, new Object[]{Uri.parse(str).getQueryParameter(DISPATCH_PARAM_KEY_CALLBACK_ID), this.mMarketingContent.getContentModel().getContext(), null, null});
        webView.loadUrl(DISPATCH_CALLBACK_PROTOCOL);
        if (VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript(format, null);
            return true;
        }
        webView.loadUrl(format);
        return true;
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (!this.mIsTemplateLoaded) {
            this.mIsTemplateLoaded = true;
            this.mMarketingContent.markLoaded(this.mBus);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return handleLoadContextDispatch(webView, str) || handleActionDispatch(str) || super.shouldOverrideUrlLoading(webView, str);
    }
}
