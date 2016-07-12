.class public final Ldagger/internal/MapProviderFactory$Builder;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/MapProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mapBuilder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;",
            "Ljavax/inject/Provider",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ldagger/internal/Collections;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/MapProviderFactory$Builder;->mapBuilder:Ljava/util/LinkedHashMap;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(ILdagger/internal/MapProviderFactory$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ldagger/internal/MapProviderFactory$1;

    .prologue
    .line 60
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Ldagger/internal/MapProviderFactory$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Ldagger/internal/MapProviderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/MapProviderFactory",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    new-instance v0, Ldagger/internal/MapProviderFactory;

    iget-object v1, p0, Ldagger/internal/MapProviderFactory$Builder;->mapBuilder:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldagger/internal/MapProviderFactory;-><init>(Ljava/util/LinkedHashMap;Ldagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljavax/inject/Provider",
            "<TV;>;)",
            "Ldagger/internal/MapProviderFactory$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Ldagger/internal/MapProviderFactory$Builder;, "Ldagger/internal/MapProviderFactory$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "providerOfValue":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TV;>;"
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The provider of the value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iget-object v0, p0, Ldagger/internal/MapProviderFactory$Builder;->mapBuilder:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object p0
.end method
