.class public Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;
.super Ljava/lang/Object;
.source "ByFilterSelector.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TD;>;"
        }
    .end annotation
.end field

.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private mFilters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TD;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector<TD;>;"
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mDefaultValue:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mData:Ljava/util/Map;

    .line 46
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mFilters:Ljava/util/Set;

    .line 48
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "filterString":Ljava/lang/String;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mFilters:Ljava/util/Set;

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;

    invoke-direct {v3, v0}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v0    # "filterString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector<TD;>;"
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TD;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TD;"
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;-><init>(Ljava/util/Map;)V

    .line 37
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mDefaultValue:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private getFilterFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 64
    .local p0, "this":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector<TD;>;"
    const/4 v2, 0x0

    .line 66
    .local v2, "selectedFilter":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mFilters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;

    .line 67
    .local v0, "entry":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;
    invoke-virtual {v0, p1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->getFilterIfBetter(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;)Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;

    move-result-object v2

    .line 68
    goto :goto_0

    .line 70
    .end local v0    # "entry":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;
    :cond_0
    if-nez v2, :cond_1

    .line 71
    const/4 v3, 0x0

    .line 74
    :goto_1
    return-object v3

    :cond_1
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector$Filter;->getFilter()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public select(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector<TD;>;"
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->getFilterFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "typeFilter":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mDefaultValue:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;->mData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
