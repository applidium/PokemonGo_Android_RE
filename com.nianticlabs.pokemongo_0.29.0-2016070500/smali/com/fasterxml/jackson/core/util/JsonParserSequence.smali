.class public Lcom/fasterxml/jackson/core/util/JsonParserSequence;
.super Lcom/fasterxml/jackson/core/util/JsonParserDelegate;
.source "JsonParserSequence.java"


# instance fields
.field protected _nextParser:I

.field protected final _parsers:[Lcom/fasterxml/jackson/core/JsonParser;


# direct methods
.method protected constructor <init>([Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .param p1, "parsers"    # [Lcom/fasterxml/jackson/core/JsonParser;

    .prologue
    .line 37
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 38
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParser:I

    .line 40
    return-void
.end method

.method public static createFlattened(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;
    .locals 4
    .param p0, "first"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "second"    # Lcom/fasterxml/jackson/core/JsonParser;

    .prologue
    .line 53
    instance-of v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>([Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 68
    .end local p0    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    .end local p1    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    :goto_0
    return-object v1

    .line 57
    .restart local p0    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    .restart local p1    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/core/JsonParser;>;"
    instance-of v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v1, :cond_1

    .line 59
    check-cast p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    .end local p0    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 63
    :goto_1
    instance-of v1, p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v1, :cond_2

    .line 64
    check-cast p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    .end local p1    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 68
    :goto_2
    new-instance v2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>([Lcom/fasterxml/jackson/core/JsonParser;)V

    move-object v1, v2

    goto :goto_0

    .line 61
    .restart local p0    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    .restart local p1    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    .end local p0    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected addFlattenedActiveParsers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/core/JsonParser;>;"
    iget v3, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParser:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 75
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    aget-object v2, v3, v0

    .line 76
    .local v2, "p":Lcom/fasterxml/jackson/core/JsonParser;
    instance-of v3, v2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v3, :cond_0

    .line 77
    check-cast v2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    .end local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 74
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .restart local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    .end local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->switchToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return-void
.end method

.method public containedParsersCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v0, v0

    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 100
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 105
    :goto_0
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->switchToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 105
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected switchToNext()Z
    .locals 3

    .prologue
    .line 139
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParser:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    iget v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParser:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParser:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 143
    const/4 v0, 0x1

    goto :goto_0
.end method
