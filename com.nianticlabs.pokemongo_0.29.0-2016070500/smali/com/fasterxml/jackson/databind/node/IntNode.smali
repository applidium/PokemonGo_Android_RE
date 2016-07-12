.class public Lcom/fasterxml/jackson/databind/node/IntNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "IntNode.java"


# static fields
.field private static final CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

.field static final MAX_CANONICAL:I = 0xa

.field static final MIN_CANONICAL:I = -0x1


# instance fields
.field protected final _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    const/16 v0, 0xc

    .line 26
    .local v0, "count":I
    new-array v2, v0, [Lcom/fasterxml/jackson/databind/node/IntNode;

    sput-object v2, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    sget-object v2, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

    new-instance v3, Lcom/fasterxml/jackson/databind/node/IntNode;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/node/IntNode;-><init>(I)V

    aput-object v3, v2, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    return-void
.end method

.method public static valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 46
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/4 v0, -0x1

    if-ge p0, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/node/IntNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/IntNode;-><init>(I)V

    .line 47
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 110
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public canConvertToLong()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    if-ne p1, p0, :cond_1

    .line 128
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 124
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 125
    :cond_2
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/IntNode;

    if-eqz v2, :cond_3

    .line 126
    check-cast p1, Lcom/fasterxml/jackson/databind/node/IntNode;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    return v0
.end method

.method public isInt()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "jg"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 118
    return-void
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I

    int-to-short v0, v0

    return v0
.end method
