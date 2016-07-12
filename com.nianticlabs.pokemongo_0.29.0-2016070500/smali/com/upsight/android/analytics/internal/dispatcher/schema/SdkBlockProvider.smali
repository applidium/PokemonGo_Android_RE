.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/SdkBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "SdkBlockProvider.java"


# static fields
.field public static final BUILD_KEY:Ljava/lang/String; = "sdk.build"

.field public static final PLUGIN_KEY:Ljava/lang/String; = "sdk.plugin"

.field public static final VERSION_KEY:Ljava/lang/String; = "sdk.version"


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 40
    const-string v0, "sdk.version"

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SdkBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    const-string v0, "sdk.build"

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getSdkBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SdkBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    const-string v0, "sdk.plugin"

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getSdkPlugin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SdkBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
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
    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sdk.version"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "sdk.build"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sdk.plugin"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
