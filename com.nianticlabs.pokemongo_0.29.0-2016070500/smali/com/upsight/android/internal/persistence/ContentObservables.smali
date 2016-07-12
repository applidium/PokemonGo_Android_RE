.class final Lcom/upsight/android/internal/persistence/ContentObservables;
.super Ljava/lang/Object;
.source "ContentObservables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static fetch(Landroid/content/Context;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static fetch(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storable"    # Lcom/upsight/android/internal/persistence/Storable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;-><init>(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storable"    # Lcom/upsight/android/internal/persistence/Storable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;-><init>(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static update(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)Lrx/Observable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storable"    # Lcom/upsight/android/internal/persistence/Storable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;-><init>(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
