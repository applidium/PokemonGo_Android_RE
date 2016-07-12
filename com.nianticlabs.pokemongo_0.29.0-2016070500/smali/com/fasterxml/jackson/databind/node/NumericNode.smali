.class public abstract Lcom/fasterxml/jackson/databind/node/NumericNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "NumericNode.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final asDouble()D
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final asDouble(D)D
    .locals 2
    .param p1, "defaultValue"    # D

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final asInt()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result v0

    return v0
.end method

.method public final asInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result v0

    return v0
.end method

.method public final asLong()J
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asLong(J)J
    .locals 2
    .param p1, "defaultValue"    # J

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract asText()Ljava/lang/String;
.end method

.method public abstract bigIntegerValue()Ljava/math/BigInteger;
.end method

.method public abstract canConvertToInt()Z
.end method

.method public abstract canConvertToLong()Z
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract doubleValue()D
.end method

.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public abstract intValue()I
.end method

.method public abstract longValue()J
.end method

.method public abstract numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.end method

.method public abstract numberValue()Ljava/lang/Number;
.end method
