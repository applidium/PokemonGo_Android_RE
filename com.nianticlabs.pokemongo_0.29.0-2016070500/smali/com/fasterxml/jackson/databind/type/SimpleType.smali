.class public Lcom/fasterxml/jackson/databind/type/SimpleType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "SimpleType.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _typeNames:[Ljava/lang/String;

.field protected final _typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _typeParametersFor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 44
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "extraHash"    # I
    .param p3, "valueHandler"    # Ljava/lang/Object;
    .param p4, "typeHandler"    # Ljava/lang/Object;
    .param p5, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 88
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 90
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParametersFor:Ljava/lang/Class;

    .line 91
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 8
    .param p2, "typeNames"    # [Ljava/lang/String;
    .param p3, "typeParams"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "valueHandler"    # Ljava/lang/Object;
    .param p5, "typeHandler"    # Ljava/lang/Object;
    .param p6, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V
    .locals 7
    .param p2, "typeNames"    # [Ljava/lang/String;
    .param p3, "typeParams"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "valueHandler"    # Ljava/lang/Object;
    .param p5, "typeHandler"    # Ljava/lang/Object;
    .param p6, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p7, "parametersFrom":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 68
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 69
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 70
    :cond_0
    iput-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    .line 71
    iput-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 76
    :goto_0
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParametersFor:Ljava/lang/Class;

    .line 77
    return-void

    .line 73
    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_0
.end method

.method public static construct(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/SimpleType;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct SimpleType for a Map (class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct SimpleType for a Collection (class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct SimpleType for an array (class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/SimpleType;"
        }
    .end annotation

    .prologue
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParametersFor:Ljava/lang/Class;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 181
    const/16 v6, 0x3c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    const/4 v1, 0x1

    .line 183
    .local v1, "first":Z
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/JavaType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 184
    .local v5, "t":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 189
    :goto_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    .end local v5    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    const/16 v6, 0x3e

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .end local v0    # "arr$":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v1    # "first":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic containedType(I)Lcom/fasterxml/jackson/core/type/ResolvedType;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 213
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    goto :goto_0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 222
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    if-ne p1, p0, :cond_1

    move v5, v6

    .line 293
    :cond_0
    :goto_0
    return v5

    .line 271
    :cond_1
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_0

    move-object v2, p1

    .line 274
    check-cast v2, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 277
    .local v2, "other":Lcom/fasterxml/jackson/databind/type/SimpleType;
    iget-object v7, v2, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    if-ne v7, v8, :cond_0

    .line 280
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 281
    .local v3, "p1":[Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v4, v2, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 282
    .local v4, "p2":[Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v3, :cond_3

    .line 283
    if-eqz v4, :cond_2

    array-length v7, v4

    if-nez v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    .line 285
    :cond_3
    if-eqz v4, :cond_0

    .line 287
    array-length v7, v3

    array-length v8, v4

    if-ne v7, v8, :cond_0

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v3

    .local v1, "len":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 289
    aget-object v7, v3, v0

    aget-object v8, v4, v0

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    .line 293
    goto :goto_0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 241
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 242
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v4, :cond_1

    .line 243
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/JavaType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 245
    .local v3, "param":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v3    # "param":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .end local v0    # "arr$":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    const/16 v4, 0x3b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    return-object p1
.end method

.method public getParameterSource()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParametersFor:Ljava/lang/Class;

    return-object v0
.end method

.method public isContainerType()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.narrowContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[simple type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->buildCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.widenContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenTypeHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 2
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenValueHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParametersFor:Ljava/lang/Class;

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 146
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParametersFor:Ljava/lang/Class;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 160
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParameters:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeParametersFor:Ljava/lang/Class;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)V

    move-object p0, v0

    goto :goto_0
.end method
