.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerIfContentBuilt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONDITION_PARAMETERS:Ljava/lang/String; = "condition_parameters"

.field public static final CONTENT_MODEL:Ljava/lang/String; = "content_model"

.field public static final ELSE_TRIGGER:Ljava/lang/String; = "else_trigger"

.field public static final THEN_TRIGGER:Ljava/lang/String; = "then_trigger"


# direct methods
.method private constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 226
    check-cast p1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 14
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    const/4 v13, 0x0

    .line 242
    const/4 v5, 0x0

    .line 244
    .local v5, "isContentBuilt":Z
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    .line 247
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    const/4 v6, 0x0

    .line 249
    .local v6, "model":Lcom/fasterxml/jackson/databind/JsonNode;
    :try_start_0
    const-string v9, "condition_parameters"

    invoke-virtual {p0, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->optParamJsonObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v9

    const-string v10, "content_model"

    invoke-virtual {v9, v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 255
    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 258
    :try_start_1
    iget-object v9, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;->put(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)Z

    .line 261
    iget-object v9, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {v6, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->from(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    move-result-object v2

    .line 262
    .local v2, "contentModel":Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    iget-object v9, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lcom/upsight/android/marketing/R$layout;->upsight_marketing_content_view:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 263
    .local v3, "contentView":Landroid/view/View;
    invoke-virtual {p1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->setContentModel(Lcom/upsight/android/marketing/internal/content/MarketingContentModel;)V

    .line 264
    invoke-virtual {p1, v3}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->setContentView(Landroid/view/View;)V

    .line 267
    sget v9, Lcom/upsight/android/marketing/R$id;->upsight_marketing_content_view_web_view:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    .line 268
    .local v8, "webView":Landroid/webkit/WebView;
    sget v9, Lcom/upsight/android/marketing/R$id;->upsight_marketing_content_view_close_button:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 269
    .local v1, "closeButton":Landroid/widget/ImageView;
    new-instance v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt$1;

    invoke-direct {v9, p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt$1;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;Lcom/upsight/android/marketing/internal/content/MarketingContent;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 276
    iget-object v9, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentTemplateWebViewClientFactory:Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;

    invoke-virtual {v9, p1}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->create(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 277
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentModel()Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->getTemplateUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    const/4 v5, 0x1

    .line 288
    .end local v1    # "closeButton":Landroid/widget/ImageView;
    .end local v2    # "contentModel":Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    .end local v3    # "contentView":Landroid/view/View;
    .end local v8    # "webView":Landroid/webkit/WebView;
    :goto_1
    if-eqz v5, :cond_2

    .line 289
    const-string v9, "then_trigger"

    invoke-virtual {p0, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "trigger":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 291
    invoke-virtual {p1, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v9

    check-cast v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    iget-object v9, v9, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 302
    return-void

    .line 250
    .end local v7    # "trigger":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 251
    .local v4, "e":Ljava/lang/NullPointerException;
    iget-object v9, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Action execution failed actionType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " invalid CONDITION_PARAMETERS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-interface {v9, v10, v4, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 280
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 281
    .local v4, "e":Ljava/lang/Exception;
    iget-object v9, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Action execution failed actionType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " model="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-interface {v9, v10, v4, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 284
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v9, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Action execution failed actionType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " model="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 294
    :cond_2
    const-string v9, "else_trigger"

    invoke-virtual {p0, v9}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 295
    .restart local v7    # "trigger":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 296
    invoke-virtual {p1, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
