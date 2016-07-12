.class public Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;
.super Ljava/lang/Object;
.source "ActionableStore.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/action/ActionableStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/action/ActionableStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/action/Actionable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/upsight/android/analytics/internal/action/ActionableStore",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;, "Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;, "Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/action/Actionable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;, "Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl<TT;>;"
    .local p2, "content":Lcom/upsight/android/analytics/internal/action/Actionable;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 66
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;, "Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
