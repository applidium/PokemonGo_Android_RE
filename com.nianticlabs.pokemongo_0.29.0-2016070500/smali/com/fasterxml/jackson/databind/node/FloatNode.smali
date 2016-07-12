.class public Lcom/fasterxml/jackson/databind/node/FloatNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "FloatNode.java"


# instance fields
.field protected final _value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return-void
.end method

.method public static valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 28
    new-instance v0, Lcom/fasterxml/jackson/databind/node/FloatNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canConvertToLong()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x21000000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, 0x5f000000

    cmpg-float v0, v0, v1

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
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    .line 114
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 107
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 108
    :cond_2
    instance-of v3, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    if-eqz v3, :cond_3

    .line 111
    check-cast p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 112
    .local v0, "otherValue":F
    iget v3, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "otherValue":F
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    move v1, v2

    .line 114
    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    return v0
.end method

.method public isFloat()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 101
    return-void
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method
