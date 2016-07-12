.class public final Lcom/upsight/android/internal/persistence/storable/Storables;
.super Ljava/lang/Object;
.source "Storables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Lcom/upsight/android/internal/persistence/storable/StorableInfo;)Lrx/Observable$Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;)",
            "Lrx/Observable$Operator",
            "<TT;",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/persistence/storable/OperatorDeserialize;-><init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;)V

    return-object v0
.end method

.method public static serialize(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;)Lrx/Observable$Operator;
    .locals 1
    .param p1, "idFactory"    # Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ")",
            "Lrx/Observable$Operator",
            "<",
            "Lcom/upsight/android/internal/persistence/Storable;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/storable/OperatorSerialize;-><init>(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;)V

    return-object v0
.end method
