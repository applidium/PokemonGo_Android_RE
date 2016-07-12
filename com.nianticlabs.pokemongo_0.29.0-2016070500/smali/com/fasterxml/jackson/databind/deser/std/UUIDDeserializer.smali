.class public Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "UUIDDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_DIGITS:[I

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    const/16 v1, 0x7f

    new-array v1, v1, [I

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    .line 17
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x30

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 20
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 21
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static _badChar(Ljava/lang/String;IC)I
    .locals 3
    .param p0, "uuidStr"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 104
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-hex character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', not valid character for a UUID String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (value 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for UUID String \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _badFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuidStr"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "UUID has to be represented by the standard 36-char representation"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 109
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 110
    const-string v0, "Can only construct UUIDs from byte[16]; got %d bytes"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 113
    :cond_0
    new-instance v0, Ljava/util/UUID;

    invoke-static {p1, v3}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v2

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method private static _int([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 125
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static _long([BI)J
    .locals 7
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    const/16 v6, 0x20

    .line 117
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v6

    .line 118
    .local v0, "l1":J
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result v4

    int-to-long v2, v4

    .line 120
    .local v2, "l2":J
    shl-long v4, v2, v6

    ushr-long v2, v4, v6

    .line 121
    or-long v4, v0, v2

    return-wide v4
.end method

.method static byteFromChars(Ljava/lang/String;I)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x7f

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    .local v0, "c1":C
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 91
    .local v1, "c2":C
    if-gt v0, v5, :cond_0

    if-gt v1, v5, :cond_0

    .line 92
    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v4, v4, v1

    or-int v2, v3, v4

    .line 93
    .local v2, "hex":I
    if-ltz v2, :cond_0

    .line 100
    .end local v2    # "hex":I
    :goto_0
    return v2

    .line 97
    :cond_0
    if-gt v0, v5, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v3, v3, v0

    if-gez v3, :cond_2

    .line 98
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;IC)I

    move-result v2

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;IC)I

    move-result v2

    goto :goto_0
.end method

.method static intFromChars(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x6

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static shortFromChars(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x24

    if-eq v10, v11, :cond_1

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x18

    if-ne v10, v11, :cond_0

    .line 37
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 38
    .local v3, "stuff":[B
    invoke-direct {p0, v3, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v10

    .line 61
    .end local v3    # "stuff":[B
    :goto_0
    return-object v10

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;)V

    .line 44
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    const/16 v10, 0xd

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    const/16 v10, 0x12

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    const/16 v10, 0x17

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_3

    .line 46
    :cond_2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;)V

    .line 48
    :cond_3
    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;I)I

    move-result v10

    int-to-long v4, v10

    .line 49
    .local v4, "l1":J
    const/16 v10, 0x20

    shl-long/2addr v4, v10

    .line 50
    const/16 v10, 0x9

    invoke-static {p1, v10}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x10

    shl-long v6, v10, v12

    .line 51
    .local v6, "l2":J
    const/16 v10, 0xe

    invoke-static {p1, v10}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v6, v10

    .line 52
    add-long v0, v4, v6

    .line 54
    .local v0, "hi":J
    const/16 v10, 0x13

    invoke-static {p1, v10}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    const/16 v11, 0x18

    invoke-static {p1, v11}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;I)I

    move-result v11

    or-int v2, v10, v11

    .line 55
    .local v2, "i1":I
    int-to-long v4, v2

    .line 56
    const/16 v10, 0x20

    shl-long/2addr v4, v10

    .line 57
    const/16 v10, 0x1c

    invoke-static {p1, v10}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;I)I

    move-result v10

    int-to-long v6, v10

    .line 58
    const/16 v10, 0x20

    shl-long v10, v6, v10

    const/16 v12, 0x20

    ushr-long v6, v10, v12

    .line 59
    or-long v8, v4, v6

    .line 61
    .local v8, "lo":J
    new-instance v10, Ljava/util/UUID;

    invoke-direct {v10, v0, v1, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method protected bridge synthetic _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, [B

    .end local p1    # "ob":Ljava/lang/Object;
    check-cast p1, [B

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 70
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method
