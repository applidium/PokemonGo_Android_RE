.class public final Lcom/upsight/android/internal/persistence/storable/StorableInfo;
.super Ljava/lang/Object;
.source "StorableInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mIdentifierAccessor:Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

.field private final mSerializer:Lcom/upsight/android/persistence/UpsightStorableSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mStorableType:Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;Lcom/upsight/android/persistence/UpsightStorableSerializer;Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;)V
    .locals 2
    .param p3, "identifierAccessor"    # Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    .local p1, "typeAccessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    .local p2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StorableTypeAccessor type can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-nez p2, :cond_1

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UpsightStorableSerializer can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    if-nez p3, :cond_2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StorableIdentifierAccessor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->mStorableType:Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    .line 46
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->mSerializer:Lcom/upsight/android/persistence/UpsightStorableSerializer;

    .line 47
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->mIdentifierAccessor:Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    .line 48
    return-void
.end method

.method public static final create(Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;Lcom/upsight/android/persistence/UpsightStorableSerializer;Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;
    .locals 1
    .param p2, "identifierAccessor"    # Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;",
            ")",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "typeAccessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    .local p1, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;-><init>(Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;Lcom/upsight/android/persistence/UpsightStorableSerializer;Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;)V

    return-object v0
.end method


# virtual methods
.method public getDeserializer()Lcom/upsight/android/persistence/UpsightStorableSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->mSerializer:Lcom/upsight/android/persistence/UpsightStorableSerializer;

    return-object v0
.end method

.method public getIdentifierAccessor()Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->mIdentifierAccessor:Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    return-object v0
.end method

.method public getStorableTypeAccessor()Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->mStorableType:Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    return-object v0
.end method
