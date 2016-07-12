.class Lcom/upsight/android/internal/persistence/OnSubscribeInsert;
.super Ljava/lang/Object;
.source "OnSubscribeInsert.java"

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided UpsightStorable can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->call(Lrx/Subscriber;)V

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
    .line 34
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/Storable;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 35
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "_id"

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v3, "type"

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v3, "data"

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/upsight/android/internal/persistence/Content;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v4}, Lcom/upsight/android/internal/persistence/Storable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 41
    .local v2, "typeUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 42
    .local v1, "newUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 43
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to persist model!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/OnSubscribeInsert;->mStorable:Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 47
    return-void
.end method
