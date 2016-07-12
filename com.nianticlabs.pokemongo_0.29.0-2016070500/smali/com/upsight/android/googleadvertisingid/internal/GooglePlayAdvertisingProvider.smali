.class public final Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "GooglePlayAdvertisingProvider.java"


# static fields
.field public static final AID_KEY:Ljava/lang/String; = "ids.aid"

.field public static final LIMITED_AD_TRACKING_KEY:Ljava/lang/String; = "device.limit_ad_tracking"

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 42
    return-void
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ids.aid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "device.limit_ad_tracking"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 46
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v2

    .line 46
    :sswitch_0
    :try_start_1
    const-string v5, "ids.aid"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v3, "device.limit_ad_tracking"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    .line 48
    :pswitch_0
    const/4 v1, 0x0

    .line 50
    .local v1, "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_2
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 54
    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to resolve Google Advertising ID"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 57
    :pswitch_1
    const/4 v1, 0x0

    .line 59
    .restart local v1    # "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_4
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 63
    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to resolve Google limited ad tracking status"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x637ddd06 -> :sswitch_0
        0x76373b37 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
