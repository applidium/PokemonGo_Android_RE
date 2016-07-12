.class public abstract Lcom/fasterxml/jackson/databind/node/ContainerNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "ContainerNode.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/node/JsonNodeCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/node/ContainerNode",
        "<TT;>;>",
        "Lcom/fasterxml/jackson/databind/node/BaseJsonNode;",
        "Lcom/fasterxml/jackson/databind/node/JsonNodeCreator;"
    }
.end annotation


# instance fields
.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 0
    .param p1, "nc"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .prologue
    .line 25
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 27
    return-void
.end method


# virtual methods
.method public final arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    const-string v0, ""

    return-object v0
.end method

.method public abstract asToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public final binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 121
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 123
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([B)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # [B

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic binaryNode([BII)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->binaryNode([BII)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    return-object v0
.end method

.method public final booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 78
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic booleanNode(Z)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract get(I)Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public abstract get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public final nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nullNode()Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # B

    .prologue
    .line 81
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 98
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 96
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 85
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 88
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 100
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # Ljava/math/BigInteger;

    .prologue
    .line 93
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;
    .locals 1
    .param p1, "v"    # S

    .prologue
    .line 83
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(B)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # B

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(B)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(D)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # D

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(F)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(I)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(J)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Byte;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "v"    # Ljava/lang/Byte;

    .prologue
    .line 104
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Byte;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "v"    # Ljava/lang/Double;

    .prologue
    .line 115
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "v"    # Ljava/lang/Float;

    .prologue
    .line 113
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 108
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "v"    # Ljava/lang/Long;

    .prologue
    .line 110
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final numberNode(Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "v"    # Ljava/lang/Short;

    .prologue
    .line 106
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # Ljava/math/BigDecimal;

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # Ljava/math/BigInteger;

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numberNode(S)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # S

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public final pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "pojo"    # Ljava/lang/Object;

    .prologue
    .line 126
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public final rawValueNode(Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "value"    # Lcom/fasterxml/jackson/databind/util/RawValue;

    .prologue
    .line 129
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->rawValueNode(Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract removeAll()Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public final textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 118
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ContainerNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ValueNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    return-object v0
.end method
