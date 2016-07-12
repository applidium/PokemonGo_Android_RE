.class public Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;
.super Ljava/lang/Object;
.source "ByNameSelector.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;


# annotations
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


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
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
    .line 36
    .local p0, "this":Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector<TD;>;"
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;->mDefaultValue:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;->mData:Ljava/util/Map;

    .line 38
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
    .line 29
    .local p0, "this":Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector<TD;>;"
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TD;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TD;"
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;-><init>(Ljava/util/Map;)V

    .line 30
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;->mDefaultValue:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public select(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "by"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector<TD;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;->mData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "selected":Ljava/lang/Object;, "TD;"
    if-eqz v0, :cond_0

    .end local v0    # "selected":Ljava/lang/Object;, "TD;"
    :goto_0
    return-object v0

    .restart local v0    # "selected":Ljava/lang/Object;, "TD;"
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0
.end method
