.class Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;
.super Ljava/lang/Object;
.source "OnSubscribeFetchByType.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/upsight/android/internal/persistence/Storable;",
        ">;"
    }
.end annotation


# instance fields
.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided type can not be empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;->reference:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;->type:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/Storable;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 41
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Context has been reclaimed by Android."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v7, 0x0

    .line 48
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchByType;->type:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/upsight/android/internal/persistence/Content;->getContentTypeUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    if-nez v7, :cond_2

    .line 52
    new-instance v0, Lcom/upsight/android/UpsightException;

    const-string v2, "Unable to retrieve stored objects."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v7, :cond_0

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "id":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "type":Ljava/lang/String;
    const-string v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, "value":Ljava/lang/String;
    invoke-static {v8, v10, v11}, Lcom/upsight/android/internal/persistence/Storable;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/internal/persistence/Storable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 63
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "id":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 64
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p1, v9}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    if-eqz v7, :cond_0

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 62
    .end local v9    # "t":Ljava/lang/Throwable;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    if-eqz v7, :cond_0

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 66
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
