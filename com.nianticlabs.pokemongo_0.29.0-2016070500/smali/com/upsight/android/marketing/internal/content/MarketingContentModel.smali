.class public final Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
.super Ljava/lang/Object;
.source "MarketingContentModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;
    }
.end annotation


# instance fields
.field contentId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation
.end field

.field context:Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "context"
    .end annotation
.end field

.field presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "presentation"
    .end annotation
.end field

.field templateUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method static from(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/upsight/android/marketing/internal/content/MarketingContentModel;
    .locals 1
    .param p0, "json"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;

    return-object v0
.end method


# virtual methods
.method public getContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->context:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public getDialogLayouts()Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;->layout:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;

    return-object v0
.end method

.method public getPresentationStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->presentation:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;

    iget-object v0, v0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentModel;->templateUrl:Ljava/lang/String;

    return-object v0
.end method
