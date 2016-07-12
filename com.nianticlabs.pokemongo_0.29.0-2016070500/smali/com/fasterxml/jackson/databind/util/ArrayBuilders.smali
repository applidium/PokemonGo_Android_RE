.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
    }
.end annotation


# instance fields
.field private _booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

.field private _byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

.field private _doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

.field private _floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

.field private _intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

.field private _longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

.field private _shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    .line 21
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    .line 22
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    .line 23
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    .line 24
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    .line 26
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    .line 27
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    .line 29
    return-void
.end method

.method public static addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 236
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object p0
.end method

.method public static arrayToList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p0, :cond_0

    .line 200
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 201
    .local v1, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "elem":Ljava/lang/Object;, "TT;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method public static arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 188
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    if-eqz p0, :cond_0

    .line 189
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 190
    .local v1, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "elem":Ljava/lang/Object;, "TT;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method public static getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 160
    .local v1, "length":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 161
    .local v0, "defaultValueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;-><init>(Ljava/lang/Class;ILjava/lang/Object;)V

    return-object v2
.end method

.method public static insertInList([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 249
    array-length v0, p0

    .line 251
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 252
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    if-lez v0, :cond_0

    .line 253
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    :cond_0
    aput-object p1, v1, v4

    .line 256
    return-object v1
.end method

.method public static insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    array-length v2, p0

    .line 273
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 274
    aget-object v4, p0, v0

    if-ne v4, p1, :cond_2

    .line 276
    if-nez v0, :cond_1

    move-object v3, p0

    .line 298
    :cond_0
    :goto_1
    return-object v3

    .line 280
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 281
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    aput-object p1, v3, v6

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 284
    sub-int v1, v2, v0

    .line 285
    .local v1, "left":I
    if-lez v1, :cond_0

    .line 286
    invoke-static {p0, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 273
    .end local v1    # "left":I
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 294
    .restart local v3    # "result":[Ljava/lang/Object;, "[TT;"
    if-lez v2, :cond_4

    .line 295
    invoke-static {p0, v6, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    :cond_4
    aput-object p1, v3, v6

    goto :goto_1
.end method

.method public static setAndArray(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;[TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 210
    .local v3, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 213
    :cond_0
    if-eqz p1, :cond_1

    .line 214
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 215
    .local v4, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getBooleanBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    return-object v0
.end method

.method public getByteBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    return-object v0
.end method

.method public getDoubleBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    return-object v0
.end method

.method public getFloatBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    return-object v0
.end method

.method public getIntBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    return-object v0
.end method

.method public getLongBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    return-object v0
.end method

.method public getShortBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    return-object v0
.end method
