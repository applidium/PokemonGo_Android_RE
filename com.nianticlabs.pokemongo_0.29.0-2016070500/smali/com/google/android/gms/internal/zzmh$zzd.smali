.class final Lcom/google/android/gms/internal/zzmh$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic zzagL:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmh;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmh$zzd;, "Lcom/google/android/gms/internal/zzmh<TK;TV;>.zzd;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v4, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzmf;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v4, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzmf;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v2, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v3, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh$zzd;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmh;->colRemoveAt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEnd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmh$zzd;, "Lcom/google/android/gms/internal/zzmh<TK;TV;>.zzd;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mEntryValid:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zzd;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zzd;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzmh;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh$zzd;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh$zzd;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
