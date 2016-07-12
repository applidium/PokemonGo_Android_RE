.class public abstract Lcom/upsight/android/marketing/UpsightMarketingContentStore;
.super Ljava/lang/Object;
.source "UpsightMarketingContentStore.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static isContentReady(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Z
    .locals 6
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v2, "com.upsight.extension.marketing"

    invoke-virtual {p0, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightMarketingExtension;

    .line 30
    .local v0, "extension":Lcom/upsight/android/UpsightMarketingExtension;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/upsight/android/UpsightMarketingExtension;->getApi()Lcom/upsight/android/marketing/UpsightMarketingApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/marketing/UpsightMarketingApi;->isContentReady(Ljava/lang/String;)Z

    move-result v1

    .line 36
    :goto_0
    return v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    const-string v4, "com.upsight.extension.marketing must be registered in your Android Manifest"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract isContentReady(Ljava/lang/String;)Z
.end method
