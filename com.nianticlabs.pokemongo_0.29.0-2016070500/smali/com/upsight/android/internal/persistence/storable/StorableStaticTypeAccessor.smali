.class Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;
.super Ljava/lang/Object;
.source "StorableStaticTypeAccessor.java"

# interfaces
.implements Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 19
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;->mType:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
