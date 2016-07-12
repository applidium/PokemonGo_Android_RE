.class Lcom/upsight/android/internal/persistence/OnSubscribeRemove;
.super Ljava/lang/Object;
.source "OnSubscribeRemove.java"

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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    if-nez p2, :cond_1

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided UpsightStorable can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 33
    iget-object v2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/Storable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/android/internal/persistence/Content;->getContentTypeUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/Storable;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 36
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 37
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 38
    iget-object v2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeRemove;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Object could not be removed. Already removed?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
