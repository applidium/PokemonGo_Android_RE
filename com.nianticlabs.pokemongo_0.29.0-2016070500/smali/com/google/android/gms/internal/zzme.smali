.class public Lcom/google/android/gms/internal/zzme;
.super Lcom/google/android/gms/internal/zzmi;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzmi",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field zzagz:Lcom/google/android/gms/internal/zzmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmh",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmi;-><init>()V

    return-void
.end method

.method private zzpx()Lcom/google/android/gms/internal/zzmh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzmh",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme;->zzagz:Lcom/google/android/gms/internal/zzmh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzme$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzme$1;-><init>(Lcom/google/android/gms/internal/zzme;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzme;->zzagz:Lcom/google/android/gms/internal/zzmh;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme;->zzagz:Lcom/google/android/gms/internal/zzmh;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme;, "Lcom/google/android/gms/internal/zzme<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v0, p0, Lcom/google/android/gms/internal/zzme;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzme;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzme;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
