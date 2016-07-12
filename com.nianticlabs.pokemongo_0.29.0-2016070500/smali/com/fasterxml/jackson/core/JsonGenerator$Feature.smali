.class public final enum Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
.super Ljava/lang/Enum;
.source "JsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/JsonGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v3, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 61
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v4, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 74
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "FLUSH_PASSED_TO_STREAM"

    invoke-direct {v0, v1, v5, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 87
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v6, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 101
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v1, v7, v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 118
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "WRITE_NUMBERS_AS_STRINGS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 130
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "WRITE_BIGDECIMAL_AS_PLAIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 147
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "ESCAPE_NON_ASCII"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 166
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "STRICT_DUPLICATE_DETECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 188
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v1, "IGNORE_UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p3, "defaultState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_defaultState:Z

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    .line 212
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .prologue
    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "flags":I
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v0

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 202
    .local v1, "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v5

    or-int/2addr v2, v5

    .line 201
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMask()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->_mask:I

    return v0
.end method
