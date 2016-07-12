.class public Lcom/upsight/android/analytics/internal/AnalyticsContext;
.super Landroid/content/ContextWrapper;
.source "AnalyticsContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/upsight/android/analytics/internal/AnalyticsContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/AnalyticsContext;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/AnalyticsContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 31
    return-void
.end method


# virtual methods
.method public getDefaultDispatcherConfiguration()Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/AnalyticsContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/upsight/android/analytics/R$raw;->dispatcher_config:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/AnalyticsContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    sget-object v2, Lcom/upsight/android/analytics/internal/AnalyticsContext;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not read default configuration."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method
