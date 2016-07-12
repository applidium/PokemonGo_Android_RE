.class public Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final _caseInsensitive:Z

.field private _hashArea:[Ljava/lang/Object;

.field private _hashMask:I

.field private _propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field private _size:I

.field private _spillCount:I


# direct methods
.method public constructor <init>(ZLjava/util/Collection;)V
    .locals 1
    .param p1, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 61
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 62
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 63
    return-void
.end method

.method private final _find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "match"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 332
    if-nez p3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-object v4

    .line 336
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v1, v5, 0x1

    .line 337
    .local v1, "hashSize":I
    shr-int/lit8 v5, p2, 0x1

    add-int/2addr v5, v1

    shl-int/lit8 v3, v5, 0x1

    .line 338
    .local v3, "ix":I
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v5, v3

    .line 339
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 340
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    .line 342
    :cond_2
    if-eqz p3, :cond_0

    .line 343
    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v5, v1

    shl-int/lit8 v2, v5, 0x1

    .line 344
    .local v2, "i":I
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int v0, v2, v5

    .local v0, "end":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 345
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v5, v2

    .line 346
    if-eq p3, p1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    .line 344
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private _findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I
    .locals 5
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 490
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v0, v2

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 491
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 492
    return v1

    .line 490
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal state: property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' missing from _propsInOrder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final _hashCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    return v0
.end method

.method public static construct(Ljava/util/Collection;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1
    .param p1, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;Z)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    return-object v0
.end method

.method private static final findSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 116
    const/4 v2, 0x5

    if-gt p0, v2, :cond_1

    .line 117
    const/16 v1, 0x8

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    const/16 v2, 0xc

    if-gt p0, v2, :cond_2

    .line 120
    const/16 v1, 0x10

    goto :goto_0

    .line 122
    :cond_2
    shr-int/lit8 v2, p0, 0x2

    add-int v0, p0, v2

    .line 123
    .local v0, "needed":I
    const/16 v1, 0x20

    .line 124
    .local v1, "result":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 125
    add-int/2addr v1, v1

    goto :goto_1
.end method

.method private properties()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v2, Ljava/util/ArrayList;

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .local v2, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v4

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 260
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v4, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 261
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 265
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected _rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 5
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "xf"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 446
    if-nez p1, :cond_0

    move-object v3, p1

    .line 460
    .end local p1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_0
    return-object v3

    .line 449
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local p1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "newName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 452
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 456
    .local v1, "newDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-eq v1, v0, :cond_1

    .line 457
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .end local v1    # "newDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    move-object v3, p1

    .line 460
    .end local p1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    goto :goto_0
.end method

.method public assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6

    .prologue
    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "index":I
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v5

    .local v0, "end":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v4, v5, v1

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 203
    .local v4, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v4, :cond_1

    .line 204
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->assignIndex(I)V

    .line 201
    :goto_1
    add-int/lit8 v1, v1, 0x2

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 207
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    return-object p0

    .restart local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method

.method public find(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 299
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v3

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 300
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v3, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 301
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 305
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    return-object v2

    .line 299
    .restart local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 305
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can not pass null property name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_0
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v3, :cond_1

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 318
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int v2, v3, v4

    .line 322
    .local v2, "slot":I
    shl-int/lit8 v0, v2, 0x1

    .line 323
    .local v0, "ix":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 324
    .local v1, "match":Ljava/lang/Object;
    if-eq v1, p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 327
    :goto_0
    return-object v3

    :cond_3
    invoke-direct {p0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    goto :goto_0
.end method

.method public findDeserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    .line 405
    .local v1, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v1, :cond_0

    .line 406
    const/4 v2, 0x0

    .line 413
    :goto_0
    return v2

    .line 409
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, p4, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_1
.end method

.method public getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0
.end method

.method protected final getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;
    .locals 1
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected init(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    iput v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 70
    iget v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-static {v9}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v1

    .line 71
    .local v1, "hashSize":I
    add-int/lit8 v9, v1, -0x1

    iput v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 74
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v1

    mul-int/lit8 v0, v9, 0x2

    .line 75
    .local v0, "alloc":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 76
    .local v2, "hashed":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 78
    .local v8, "spillCount":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 80
    .local v6, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v6, :cond_0

    .line 84
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v7

    .line 86
    .local v7, "slot":I
    shl-int/lit8 v4, v7, 0x1

    .line 89
    .local v4, "ix":I
    aget-object v9, v2, v4

    if-eqz v9, :cond_1

    .line 91
    shr-int/lit8 v9, v7, 0x1

    add-int/2addr v9, v1

    shl-int/lit8 v4, v9, 0x1

    .line 92
    aget-object v9, v2, v4

    if-eqz v9, :cond_1

    .line 94
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v1

    shl-int/lit8 v9, v9, 0x1

    add-int v4, v9, v8

    .line 95
    add-int/lit8 v8, v8, 0x2

    .line 96
    array-length v9, v2

    if-lt v4, v9, :cond_1

    .line 97
    array-length v9, v2

    add-int/lit8 v9, v9, 0x4

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 102
    :cond_1
    aput-object v5, v2, v4

    .line 103
    add-int/lit8 v9, v4, 0x1

    aput-object v6, v2, v9

    goto :goto_0

    .line 110
    .end local v4    # "ix":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "slot":I
    :cond_2
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 111
    iput v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 112
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->properties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 9
    .param p1, "propToRm"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 367
    new-instance v5, Ljava/util/ArrayList;

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v5, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 371
    .local v1, "found":Z
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v6

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 372
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v4, v6, v2

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 373
    .local v4, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v4, :cond_0

    .line 371
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 376
    :cond_0
    if-nez v1, :cond_1

    .line 377
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 378
    if-eqz v1, :cond_1

    .line 380
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v7

    const/4 v8, 0x0

    aput-object v8, v6, v7

    goto :goto_1

    .line 384
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    if-nez v1, :cond_3

    .line 387
    new-instance v6, Ljava/util/NoSuchElementException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' found, can\'t remove"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 389
    :cond_3
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 390
    return-void
.end method

.method public renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6
    .param p1, "transformer"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne p1, v4, :cond_1

    .line 234
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :cond_0
    :goto_0
    return-object p0

    .line 220
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v4

    .line 221
    .local v1, "len":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v2, "newProps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 224
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v3, v4, v0

    .line 227
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v3, :cond_2

    .line 228
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 234
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_3
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    invoke-direct {v4, v5, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    move-object p0, v4

    goto :goto_0
.end method

.method public replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 7
    .param p1, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v4

    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 246
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v4, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 247
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 250
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v5

    aput-object p1, v4, v5

    .line 251
    return-void

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 254
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    new-instance v4, Ljava/util/NoSuchElementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No entry \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' found, can\'t replace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public size()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Properties=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 424
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 426
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    if-lez v0, :cond_0

    .line 427
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 433
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 434
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 10
    .param p1, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "key":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v8

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 150
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v6, v8, v2

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 151
    .local v6, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 152
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p1, v8, v2

    .line 153
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v9

    aput-object p1, v8, v9

    .line 194
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    return-object p0

    .line 149
    .restart local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 158
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "slot":I
    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v1, v8, 0x1

    .line 160
    .local v1, "hashSize":I
    shl-int/lit8 v3, v7, 0x1

    .line 163
    .local v3, "ix":I
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    .line 165
    shr-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v1

    shl-int/lit8 v3, v8, 0x1

    .line 166
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    .line 168
    shr-int/lit8 v8, v1, 0x1

    add-int/2addr v8, v1

    shl-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int v3, v8, v9

    .line 169
    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 170
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v8, v8

    if-lt v3, v8, :cond_2

    .line 171
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x4

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 185
    :cond_2
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object v4, v8, v3

    .line 186
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    aput-object p1, v8, v9

    .line 188
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v5, v8

    .line 189
    .local v5, "last":I
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 190
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aput-object p1, v8, v5

    goto :goto_1
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 471
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 472
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 475
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p4, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 477
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 478
    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonProcessingException;

    if-nez v1, :cond_6

    .line 479
    :cond_3
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 475
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 482
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 483
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 486
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method
