.class Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ContentTemplateWebViewClient.java"


# static fields
.field private static final DISPATCH_CALLBACK:Ljava/lang/String; = "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s, %s)"

.field private static final DISPATCH_CALLBACK_PROTOCOL:Ljava/lang/String; = "javascript:window.PlayHavenDispatchProtocolVersion=7"

.field private static final DISPATCH_LOAD_CONTEXT:Ljava/lang/String; = "ph://loadContext"

.field private static final DISPATCH_PARAM_KEY_CALLBACK_ID:Ljava/lang/String; = "callback"

.field private static final DISPATCH_PARAM_KEY_CONTEXT:Ljava/lang/String; = "context"

.field private static final DISPATCH_PARAM_KEY_TRIGGER:Ljava/lang/String; = "trigger"

.field private static final DISPATCH_PARAM_KEY_VIEW_DATA:Ljava/lang/String; = "view_data"

.field private static final DISPATCH_SCHEME:Ljava/lang/String; = "ph://"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private mIsTemplateLoaded:Z

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;


# direct methods
.method public constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 1
    .param p1, "marketingContent"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;
    .param p3, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p4, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mIsTemplateLoaded:Z

    .line 91
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 92
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mBus:Lcom/squareup/otto/Bus;

    .line 93
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 94
    iput-object p4, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 95
    return-void
.end method

.method private handleActionDispatch(Ljava/lang/String;)Z
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "isHandled":Z
    if-eqz p1, :cond_0

    const-string v9, "ph://"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 123
    const/4 v4, 0x1

    .line 125
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 128
    .local v7, "uri":Landroid/net/Uri;
    const-string v9, "context"

    invoke-virtual {v7, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "context":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "contextNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :try_start_0
    iget-object v9, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 133
    const-string v9, "trigger"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->hasNonNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    const-string v9, "trigger"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    .line 135
    .local v6, "triggerNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 136
    iget-object v9, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 151
    .end local v0    # "context":Ljava/lang/String;
    .end local v1    # "contextNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v6    # "triggerNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    .line 138
    .restart local v0    # "context":Ljava/lang/String;
    .restart local v1    # "contextNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v9, "view_data"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->hasNonNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 139
    const-string v9, "view_data"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    .line 140
    .local v8, "viewDataNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonNode;->fieldNames()Ljava/util/Iterator;

    move-result-object v5

    .line 141
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "dataKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v8, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->putExtra(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    .end local v2    # "dataKey":Ljava/lang/String;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "viewDataNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse contextNode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v3, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleLoadContextDispatch(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, "isHandled":Z
    if-eqz p2, :cond_0

    const-string v5, "ph://loadContext"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    const/4 v3, 0x1

    .line 167
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 169
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "callback"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "callbackId":Ljava/lang/String;
    iget-object v5, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v5}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getContext()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 171
    .local v1, "context":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v5, "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s, %s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "dispatchCallback":Ljava/lang/String;
    const-string v5, "javascript:window.PlayHavenDispatchProtocolVersion=7"

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 175
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 176
    invoke-virtual {p1, v2, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 181
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v1    # "context":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v2    # "dispatchCallback":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v3

    .line 178
    .restart local v0    # "callbackId":Ljava/lang/String;
    .restart local v1    # "context":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v2    # "dispatchCallback":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mIsTemplateLoaded:Z

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mIsTemplateLoaded:Z

    .line 110
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mMarketingContent:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markLoaded(Lcom/squareup/otto/Bus;)V

    .line 112
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->handleLoadContextDispatch(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;->handleActionDispatch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
