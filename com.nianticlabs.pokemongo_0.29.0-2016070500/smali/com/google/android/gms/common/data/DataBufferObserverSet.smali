.class public final Lcom/google/android/gms/common/data/DataBufferObserverSet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBufferObserver$Observable;
.implements Lcom/google/android/gms/common/data/DataBufferObserver;


# instance fields
.field private zzadk:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/common/data/DataBufferObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/google/android/gms/common/data/DataBufferObserver;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public hasObservers()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBufferObserver;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeChanged(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBufferObserver;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeInserted(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBufferObserver;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeInserted(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "count"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBufferObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeMoved(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeRemoved(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataBufferObserver;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeRemoved(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/google/android/gms/common/data/DataBufferObserver;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zzadk:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
