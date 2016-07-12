.class public final Ldagger/internal/SetFactory;
.super Ljava/lang/Object;
.source "SetFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Ljava/util/Set",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ARGUMENTS_MUST_BE_NON_NULL:Ljava/lang/String; = "SetFactory.create() requires its arguments to be non-null"


# instance fields
.field private final contributingProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Ldagger/internal/SetFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    .local p1, "contributingProviders":Ljava/util/List;, "Ljava/util/List<Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    .line 83
    return-void
.end method

.method public static create(Ldagger/internal/Factory;)Ldagger/internal/Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "factory":Ldagger/internal/Factory;, "Ldagger/internal/Factory<Ljava/util/Set<TT;>;>;"
    sget-boolean v0, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "SetFactory.create() requires its arguments to be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 49
    :cond_0
    return-object p0
.end method

.method public static varargs create([Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "providers":[Ljavax/inject/Provider;, "[Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;"
    sget-boolean v1, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "SetFactory.create() requires its arguments to be non-null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 61
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "contributingProviders":Ljava/util/List;, "Ljava/util/List<Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;>;"
    sget-boolean v1, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Codegen error?  Null within provider list."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 66
    :cond_1
    sget-boolean v1, Ldagger/internal/SetFactory;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Ldagger/internal/SetFactory;->hasDuplicates(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Codegen error?  Duplicates in the provider list"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 68
    :cond_2
    new-instance v1, Ldagger/internal/SetFactory;

    invoke-direct {v1, v0}, Ldagger/internal/SetFactory;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private static hasDuplicates(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "original":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    .local v0, "asSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/SetFactory;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Ldagger/internal/SetFactory;, "Ldagger/internal/SetFactory<TT;>;"
    const/4 v8, 0x0

    .line 100
    .local v8, "size":I
    new-instance v5, Ljava/util/ArrayList;

    iget-object v9, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v5, "providedSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<TT;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v9, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 102
    iget-object v9, p0, Ldagger/internal/SetFactory;->contributingProviders:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/inject/Provider;

    .line 103
    .local v6, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;"
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 104
    .local v4, "providedSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez v4, :cond_0

    .line 105
    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 107
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    add-int/2addr v8, v9

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v4    # "providedSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .end local v6    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Set<TT;>;>;"
    :cond_1
    invoke-static {v8}, Ldagger/internal/Collections;->newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;

    move-result-object v7

    .line 112
    .local v7, "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 113
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "element":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_2

    .line 115
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "a null element was provided"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 117
    :cond_2
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    .end local v1    # "element":Ljava/lang/Object;, "TT;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    return-object v9
.end method
