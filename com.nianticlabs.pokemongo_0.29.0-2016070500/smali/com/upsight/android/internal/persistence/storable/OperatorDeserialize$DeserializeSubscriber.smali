.class Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;
.super Lrx/Subscriber;
.source "OperatorDeserialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;
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
        "<",
        "Lcom/upsight/android/internal/persistence/Storable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChildSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber<TT;>;"
    .local p1, "storableInfo":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 39
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .line 40
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    .line 41
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 46
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public onNext(Lcom/upsight/android/internal/persistence/Storable;)V
    .locals 5
    .param p1, "storable"    # Lcom/upsight/android/internal/persistence/Storable;

    .prologue
    .line 55
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber<TT;>;"
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getDeserializer()Lcom/upsight/android/persistence/UpsightStorableSerializer;

    move-result-object v2

    .line 57
    .local v2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/upsight/android/internal/persistence/Storable;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/upsight/android/persistence/UpsightStorableSerializer;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "object":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getIdentifierAccessor()Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    move-result-object v3

    invoke-virtual {p1}, Lcom/upsight/android/internal/persistence/Storable;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;->setId(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v3, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "object":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/upsight/android/UpsightException;
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->mChildSubscriber:Lrx/Subscriber;

    invoke-virtual {v3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber<TT;>;"
    check-cast p1, Lcom/upsight/android/internal/persistence/Storable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;->onNext(Lcom/upsight/android/internal/persistence/Storable;)V

    return-void
.end method
