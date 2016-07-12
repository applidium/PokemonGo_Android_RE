.class public Lcom/fasterxml/jackson/databind/node/LongNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "LongNode.java"


# instance fields
.field protected final _value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput-wide p1, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    return-void
.end method

.method public static valueOf(J)Lcom/fasterxml/jackson/databind/node/LongNode;
    .locals 2
    .param p0, "l"    # J

    .prologue
    .line 28
    new-instance v0, Lcom/fasterxml/jackson/databind/node/LongNode;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/LongNode;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 4

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canConvertToLong()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 104
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 100
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 101
    :cond_2
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/LongNode;

    if-eqz v2, :cond_3

    .line 102
    check-cast p1, Lcom/fasterxml/jackson/databind/node/LongNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    long-to-int v0, v0

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public isLong()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .line 93
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 94
    return-void
.end method

.method public shortValue()S
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method
