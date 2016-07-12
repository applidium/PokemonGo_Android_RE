.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ArrayCursor"
.end annotation


# instance fields
.field protected _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _currentNode:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .locals 1
    .param p1, "n"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p2, "p"    # Lcom/fasterxml/jackson/databind/node/NodeCursor;

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V

    .line 160
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->_contents:Ljava/util/Iterator;

    .line 161
    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;

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
    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->_contents:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 171
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method
