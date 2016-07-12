.class public Lcom/fasterxml/jackson/databind/node/DoubleNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "DoubleNode.java"


# instance fields
.field protected final _value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    return-void
.end method

.method public static valueOf(D)Lcom/fasterxml/jackson/databind/node/DoubleNode;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 29
    new-instance v0, Lcom/fasterxml/jackson/databind/node/DoubleNode;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/DoubleNode;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/DoubleNode;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canConvertToLong()Z
    .locals 4

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 112
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 105
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    goto :goto_0

    .line 106
    :cond_2
    instance-of v4, p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;

    if-eqz v4, :cond_3

    .line 109
    check-cast p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v0, p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    .line 110
    .local v0, "otherValue":D
    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "otherValue":D
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    move v2, v3

    .line 112
    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 119
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 120
    .local v0, "l":J
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    xor-int/2addr v2, v3

    return v2
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    double-to-int v0, v0

    return v0
.end method

.method public isDouble()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V

    .line 99
    return-void
.end method

.method public shortValue()S
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method
