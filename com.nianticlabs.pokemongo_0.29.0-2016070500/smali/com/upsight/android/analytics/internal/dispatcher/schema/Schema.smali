.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$1;,
        Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default;
    }
.end annotation


# instance fields
.field private final mAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/provider/UpsightDataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/provider/UpsightDataProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "dataProviders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/analytics/provider/UpsightDataProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mName:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mAttributes:Ljava/util/Set;

    .line 86
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mDataProviders:Ljava/util/Map;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Set;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$1;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method static from(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Ljava/util/Set;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "schema"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v0, "toAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v1, p1, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mAttributes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 101
    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    iget-object v2, p1, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mDataProviders:Ljava/util/Map;

    invoke-direct {v1, p0, v0, v2}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 1
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
    .line 115
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mAttributes:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueFor(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mAttributes:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->mDataProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightDataProvider;

    .line 126
    .local v0, "provider":Lcom/upsight/android/analytics/provider/UpsightDataProvider;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    .end local v0    # "provider":Lcom/upsight/android/analytics/provider/UpsightDataProvider;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method
