.class public final Ldagger/internal/MapProviderFactory;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/MapProviderFactory$1;,
        Ldagger/internal/MapProviderFactory$Builder;
    }
.end annotation

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
        "<TK;",
        "Ljavax/inject/Provider",
        "<TV;>;>;>;"
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
.method private constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    .local p1, "contributingMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;Ljavax/inject/Provider<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedHashMap;Ldagger/internal/MapProviderFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/LinkedHashMap;
    .param p2, "x1"    # Ldagger/internal/MapProviderFactory$1;

    .prologue
    .line 33
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    invoke-direct {p0, p1}, Ldagger/internal/MapProviderFactory;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public static builder(I)Ldagger/internal/MapProviderFactory$Builder;
    .locals 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ldagger/internal/MapProviderFactory$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ldagger/internal/MapProviderFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/MapProviderFactory$Builder;-><init>(ILdagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    invoke-virtual {p0}, Ldagger/internal/MapProviderFactory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Ldagger/internal/MapProviderFactory;, "Ldagger/internal/MapProviderFactory<TK;TV;>;"
    iget-object v0, p0, Ldagger/internal/MapProviderFactory;->contributingMap:Ljava/util/Map;

    return-object v0
.end method
