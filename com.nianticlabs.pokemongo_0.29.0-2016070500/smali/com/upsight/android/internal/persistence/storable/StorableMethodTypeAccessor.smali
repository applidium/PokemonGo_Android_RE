.class Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;
.super Ljava/lang/Object;
.source "StorableMethodTypeAccessor.java"

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
.field private final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 21
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;->mMethod:Ljava/lang/reflect/Method;

    .line 23
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
    .line 36
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
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
    .line 28
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Lcom/upsight/android/UpsightException;

    invoke-direct {v1, v0}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 29
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
