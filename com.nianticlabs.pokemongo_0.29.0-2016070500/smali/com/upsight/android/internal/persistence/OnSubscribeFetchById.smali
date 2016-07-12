.class Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;
.super Ljava/lang/Object;
.source "OnSubscribeFetchById.java"

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
.field private final mContext:Landroid/content/Context;

.field private final mIds:[Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "ids"    # [Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided type can not be empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_3

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object identifiers can not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_3
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mType:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mIds:[Ljava/lang/String;

    .line 42
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
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 13
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
    .line 46
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/Storable;>;"
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v12, "where":Ljava/lang/StringBuffer;
    const-string v0, "_id"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mIds:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 49
    const-string v0, "?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mIds:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 51
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const/4 v6, 0x0

    .line 58
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/upsight/android/internal/persistence/Content;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mIds:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    if-nez v6, :cond_3

    .line 61
    new-instance v0, Lcom/upsight/android/UpsightException;

    const-string v1, "Unable to retrieve stored objects."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v6, :cond_2

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_2
    :goto_1
    return-void

    .line 65
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/OnSubscribeFetchById;->mIds:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_4

    .line 66
    new-instance v0, Lcom/upsight/android/UpsightException;

    const-string v1, "Unable to retrieve stored objects. Some ID(s) were not found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v6, :cond_2

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 71
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "id":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "type":Ljava/lang/String;
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "value":Ljava/lang/String;
    invoke-static {v8, v10, v11}, Lcom/upsight/android/internal/persistence/Storable;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/internal/persistence/Storable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 78
    .end local v8    # "id":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 79
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {p1, v9}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    if-eqz v6, :cond_2

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 77
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    if-eqz v6, :cond_2

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method
