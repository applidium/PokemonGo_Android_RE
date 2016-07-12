.class Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;
.super Ljava/lang/Object;
.source "OperatorDeserialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lcom/upsight/android/internal/persistence/Storable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize<TT;>;"
    .local p1, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StorableInfo can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;, "Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    invoke-direct {v0, v1, p1}, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize$DeserializeSubscriber;-><init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lrx/Subscriber;)V

    return-object v0
.end method
