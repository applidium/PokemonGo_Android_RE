.class final Lcom/google/gson/internal/LinkedTreeMap$Node;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 450
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 452
    iput-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 453
    return-void
.end method

.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;TK;",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p1, "parent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p4, "prev":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 458
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 459
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 460
    iput-object p3, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 461
    iput-object p4, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 462
    iput-object p0, p4, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 463
    iput-object p0, p3, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 464
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 482
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 483
    check-cast v0, Ljava/util/Map$Entry;

    .line 484
    .local v0, "other":Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_1
    const/4 v1, 0x1

    .line 487
    .end local v0    # "other":Ljava/util/Map$Entry;
    :cond_0
    return v1

    .line 484
    .restart local v0    # "other":Ljava/util/Map$Entry;
    :cond_1
    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public first()Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .line 504
    .local v1, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 505
    .local v0, "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 506
    move-object v1, v0

    .line 507
    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    .line 509
    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 491
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public last()Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .line 517
    .local v1, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 518
    .local v0, "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 519
    move-object v1, v0

    .line 520
    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    .line 522
    :cond_0
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 476
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 477
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
