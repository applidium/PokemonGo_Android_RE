.class Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;
.super Ljava/lang/Object;
.source "StorableFieldIdentifierAccessor.java"

# interfaces
.implements Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;


# instance fields
.field private final mField:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified Field can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    .line 20
    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v2, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lcom/upsight/android/UpsightException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v1
.end method

.method public setId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lcom/upsight/android/UpsightException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v1
.end method
