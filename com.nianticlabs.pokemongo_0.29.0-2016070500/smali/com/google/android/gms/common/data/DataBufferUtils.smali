.class public final Lcom/google/android/gms/common/data/DataBufferUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freezeAndClose(Lcom/google/android/gms/common/data/DataBuffer;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/android/gms/common/data/Freezable",
            "<TT;>;>(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "buffer":Lcom/google/android/gms/common/data/DataBuffer;, "Lcom/google/android/gms/common/data/DataBuffer<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/common/data/DataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/Freezable;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/Freezable;->freeze()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    throw v0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/common/data/DataBuffer;->close()V

    return-object v1
.end method

.method public static hasData(Lcom/google/android/gms/common/data/DataBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "buffer":Lcom/google/android/gms/common/data/DataBuffer;, "Lcom/google/android/gms/common/data/DataBuffer<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNextPage(Lcom/google/android/gms/common/data/DataBuffer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "buffer":Lcom/google/android/gms/common/data/DataBuffer;, "Lcom/google/android/gms/common/data/DataBuffer<*>;"
    invoke-interface {p0}, Lcom/google/android/gms/common/data/DataBuffer;->zzor()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "next_page_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPrevPage(Lcom/google/android/gms/common/data/DataBuffer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "buffer":Lcom/google/android/gms/common/data/DataBuffer;, "Lcom/google/android/gms/common/data/DataBuffer<*>;"
    invoke-interface {p0}, Lcom/google/android/gms/common/data/DataBuffer;->zzor()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "prev_page_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
