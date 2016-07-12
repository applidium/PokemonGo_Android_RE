.class Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;
.super Ljava/lang/Object;
.source "OperatorSerialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lcom/upsight/android/internal/persistence/Storable;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mIDFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

.field private final mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;)V
    .locals 2
    .param p2, "idFactory"    # Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;, "Lcom/upsight/android/internal/persistence/storable/OperatorSerialize<TT;>;"
    .local p1, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StorableInfo can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .line 25
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;->mIDFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;, "Lcom/upsight/android/internal/persistence/storable/OperatorSerialize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;, "Lcom/upsight/android/internal/persistence/storable/OperatorSerialize<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/Storable;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;->mStorableInfo:Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;->mIDFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    invoke-direct {v0, v1, v2, p1}, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize$DeserializeSubscriber;-><init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Subscriber;)V

    return-object v0
.end method
