.class public final enum Lcom/fasterxml/jackson/core/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field final _id:I

.field final _isBoolean:Z

.field final _isNumber:Z

.field final _isScalar:Z

.field final _isStructEnd:Z

.field final _isStructStart:Z

.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 37
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "START_OBJECT"

    const-string v2, "{"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 43
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "END_OBJECT"

    const-string v2, "}"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "START_ARRAY"

    const-string v2, "["

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "END_ARRAY"

    const-string v2, "]"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "FIELD_NAME"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 73
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_EMBEDDED_OBJECT"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 80
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_STRING"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 88
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_NUMBER_INT"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 96
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_NUMBER_FLOAT"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_TRUE"

    const/16 v2, 0xa

    const-string v3, "true"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 108
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_FALSE"

    const/16 v2, 0xb

    const-string v3, "false"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 114
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "VALUE_NULL"

    const/16 v2, 0xc

    const-string v3, "null"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    if-nez p3, :cond_5

    .line 140
    iput-object v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 142
    iput-object v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 153
    :cond_0
    iput p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    .line 155
    const/16 v2, 0xa

    if-eq p4, v2, :cond_1

    const/16 v2, 0x9

    if-ne p4, v2, :cond_6

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    .line 156
    const/4 v2, 0x7

    if-eq p4, v2, :cond_2

    const/16 v2, 0x8

    if-ne p4, v2, :cond_7

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    .line 158
    if-eq p4, v4, :cond_3

    const/4 v2, 0x3

    if-ne p4, v2, :cond_8

    :cond_3
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    .line 159
    const/4 v2, 0x2

    if-eq p4, v2, :cond_4

    const/4 v2, 0x4

    if-ne p4, v2, :cond_9

    :cond_4
    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    .line 161
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    if-nez v2, :cond_a

    const/4 v2, 0x5

    if-eq p4, v2, :cond_a

    const/4 v2, -0x1

    if-eq p4, v2, :cond_a

    :goto_4
    iput-boolean v4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    .line 164
    return-void

    .line 144
    :cond_5
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 145
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 147
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    array-length v1, v2

    .line 148
    .local v1, "len":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    aget-char v5, v5, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_6
    move v2, v3

    .line 155
    goto :goto_0

    :cond_7
    move v2, v3

    .line 156
    goto :goto_1

    :cond_8
    move v2, v3

    .line 158
    goto :goto_2

    :cond_9
    move v2, v3

    .line 159
    goto :goto_3

    :cond_a
    move v4, v3

    .line 161
    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method


# virtual methods
.method public final asByteArray()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    return-object v0
.end method

.method public final asCharArray()[C
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public final id()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    return v0
.end method

.method public final isBoolean()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    return v0
.end method

.method public final isNumeric()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    return v0
.end method

.method public final isScalarValue()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    return v0
.end method

.method public final isStructEnd()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    return v0
.end method

.method public final isStructStart()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    return v0
.end method
