.class public final Ldagger/internal/MapFactory;
.super Ljava/lang/Object;
.source "MapFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final contributingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Ldagger/internal/MapFactory;, "Ldagger/internal/MapFactory<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/inject/Provider<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/MapFactory;->contributingMap:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/MapFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;>;)",
            "Ldagger/internal/MapFactory",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "mapProviderFactory":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Map<TK;Ljavax/inject/Provider<TV;>;>;>;"
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 45
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/inject/Provider<TV;>;>;"
    new-instance v1, Ldagger/internal/MapFactory;

    invoke-direct {v1, v0}, Ldagger/internal/MapFactory;-><init>(Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Ldagger/internal/MapFactory;, "Ldagger/internal/MapFactory<TK;TV;>;"
    invoke-virtual {p0}, Ldagger/internal/MapFactory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Ldagger/internal/MapFactory;, "Ldagger/internal/MapFactory<TK;TV;>;"
    iget-object v3, p0, Ldagger/internal/MapFactory;->contributingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ldagger/internal/Collections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 55
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v3, p0, Ldagger/internal/MapFactory;->contributingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavax/inject/Provider<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavax/inject/Provider<TV;>;>;"
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method
