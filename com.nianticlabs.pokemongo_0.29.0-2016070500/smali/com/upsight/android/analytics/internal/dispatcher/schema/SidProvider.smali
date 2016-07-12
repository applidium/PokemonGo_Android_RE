.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/SidProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "SidProvider.java"


# static fields
.field public static final SID_KEY:Ljava/lang/String; = "sid"


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 30
    const-string v0, "sid"

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SidProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
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
    .line 35
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sid"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
