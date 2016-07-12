.class Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;
.super Lrx/Subscriber;
.source "OperatorSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeserializeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mChildSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

.field private final mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Subscriber;)V
    .locals 0
    .param p2, "idFactory"    # Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            "Lrx/Subscriber",
            "<-",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber<TT;>;"
    .local p1, "storableInfo":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/Storable;>;"
    invoke-direct {p0, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 44
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .line 45
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    .line 46
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mIdFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    .line 47
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber<TT;>;"
    .local p1, "upsightStorable":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    invoke-virtual {v5}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getDeserializer()Lcom/upsight/android/persistence/UpsightStorableSerializer;

    move-result-object v2

    .line 63
    .local v2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    :try_start_0
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    invoke-virtual {v5}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getIdentifierAccessor()Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    invoke-virtual {v5}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getStorableTypeAccessor()Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/upsight/android/persistence/UpsightStorableSerializer;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-static {v1, v3, v4}, Lcom/upsight/android/internal/persistence/Storable;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/internal/persistence/Storable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lcom/upsight/android/UpsightException;
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
