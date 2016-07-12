.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ObjectCursor"
.end annotation


# instance fields
.field protected _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _needEntry:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .locals 1
    .param p1, "n"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p2, "p"    # Lcom/fasterxml/jackson/databind/node/NodeCursor;

    .prologue
    .line 201
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V

    .line 202
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .end local p1    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_contents:Ljava/util/Iterator;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    .line 204
    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ContainerNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0
.end method

.method public endToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_currentName:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    .line 222
    :goto_0
    return-object v1

    .line 216
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    .line 217
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    .line 218
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_currentName:Ljava/lang/String;

    .line 219
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 221
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    .line 222
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 229
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 232
    :cond_0
    return-object v0
.end method
