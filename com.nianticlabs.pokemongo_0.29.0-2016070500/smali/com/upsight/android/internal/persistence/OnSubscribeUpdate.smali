.class Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;
.super Ljava/lang/Object;
.source "OnSubscribeUpdate.java"

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

.field private final mStorable:Lcom/upsight/android/internal/persistence/Storable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storable"    # Lcom/upsight/android/internal/persistence/Storable;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    if-nez p2, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided UpsightStorable can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
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
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/Storable;>;"
    const/4 v5, 0x0

    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "_id"

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "data"

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upsight/android/internal/persistence/Content;->getContentTypeUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 42
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 44
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeUpdate;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v4, "Update failed. Storable exists?"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
