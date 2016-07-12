.class abstract Lcom/fasterxml/jackson/databind/node/NodeCursor;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;,
        Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;,
        Lcom/fasterxml/jackson/databind/node/NodeCursor$RootCursor;
    }
.end annotation


# instance fields
.field protected _currentName:Ljava/lang/String;

.field protected _currentValue:Ljava/lang/Object;

.field protected final _parent:Lcom/fasterxml/jackson/databind/node/NodeCursor;


# direct methods
.method public constructor <init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .locals 1
    .param p1, "contextType"    # I
    .param p2, "p"    # Lcom/fasterxml/jackson/databind/node/NodeCursor;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V

    .line 34
    iput p1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_type:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_index:I

    .line 36
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_parent:Lcom/fasterxml/jackson/databind/node/NodeCursor;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract currentHasChildren()Z
.end method

.method public abstract currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public abstract endToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_currentValue:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_parent:Lcom/fasterxml/jackson/databind/node/NodeCursor;

    return-object v0
.end method

.method public final iterateChildren()Lcom/fasterxml/jackson/databind/node/NodeCursor;
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 90
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No current node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;

    invoke-direct {v1, v0, p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V

    .line 95
    :goto_0
    return-object v1

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;

    invoke-direct {v1, v0, p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current node of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract nextValue()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_currentName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor;->_currentValue:Ljava/lang/Object;

    .line 69
    return-void
.end method
