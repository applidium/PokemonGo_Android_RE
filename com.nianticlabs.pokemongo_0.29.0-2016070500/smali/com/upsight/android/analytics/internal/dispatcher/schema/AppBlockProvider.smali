.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "AppBlockProvider.java"


# static fields
.field public static final BUNDLEID_KEY:Ljava/lang/String; = "app.bundleid"

.field public static final TOKEN_KEY:Ljava/lang/String; = "app.token"

.field public static final VERSION_KEY:Ljava/lang/String; = "app.version"


# instance fields
.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 47
    const-string v1, "app.token"

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 50
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 51
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "app.version"

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v1, "app.bundleid"

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method private getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "AppBlock"

    const-string v4, "Could not get package info"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
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
    .line 75
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "app.token"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "app.version"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "app.bundleid"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
