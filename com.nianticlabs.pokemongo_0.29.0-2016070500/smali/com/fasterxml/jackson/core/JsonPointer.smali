.class public Lcom/fasterxml/jackson/core/JsonPointer;
.super Ljava/lang/Object;
.source "JsonPointer.java"


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;


# instance fields
.field protected final _asString:Ljava/lang/String;

.field protected volatile _head:Lcom/fasterxml/jackson/core/JsonPointer;

.field protected final _matchingElementIndex:I

.field protected final _matchingPropertyName:Ljava/lang/String;

.field protected final _nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 0
    .param p1, "fullString"    # Ljava/lang/String;
    .param p2, "segment"    # Ljava/lang/String;
    .param p3, "matchIndex"    # I
    .param p4, "next"    # Lcom/fasterxml/jackson/core/JsonPointer;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 95
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    .line 96
    iput p3, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    .line 97
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 1
    .param p1, "fullString"    # Ljava/lang/String;
    .param p2, "segment"    # Ljava/lang/String;
    .param p3, "next"    # Lcom/fasterxml/jackson/core/JsonPointer;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 84
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    .line 86
    invoke-static {p2}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    .line 87
    return-void
.end method

.method private static _appendEscape(Ljava/lang/StringBuilder;C)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C

    .prologue
    .line 397
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 398
    const/16 p1, 0x7e

    .line 404
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    return-void

    .line 399
    :cond_0
    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    .line 400
    const/16 p1, 0x2f

    goto :goto_0

    .line 402
    :cond_1
    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static final _parseIndex(Ljava/lang/String;)I
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x39

    const/16 v7, 0xa

    const/4 v5, 0x0

    const/16 v8, 0x30

    const/4 v6, -0x1

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 293
    .local v4, "len":I
    if-eqz v4, :cond_0

    if-le v4, v7, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v6

    .line 297
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 298
    .local v0, "c":C
    if-gt v0, v8, :cond_3

    .line 299
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    if-ne v0, v8, :cond_2

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    .line 301
    :cond_3
    if-gt v0, v9, :cond_0

    .line 304
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 305
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    if-gt v0, v9, :cond_0

    if-lt v0, v8, :cond_0

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    :cond_4
    if-ne v4, v7, :cond_5

    .line 311
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 312
    .local v2, "l":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v2, v8

    if-gtz v5, :cond_0

    .line 316
    .end local v2    # "l":J
    :cond_5
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method protected static _parseQuotedTail(Ljava/lang/String;I)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 349
    .local v1, "end":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x2

    if-le p1, v4, :cond_0

    .line 351
    const/4 v4, 0x1

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, p0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscape(Ljava/lang/StringBuilder;C)V

    move p1, v2

    .line 354
    .end local v2    # "i":I
    .restart local p1    # "i":I
    :goto_0
    if-ge p1, v1, :cond_3

    .line 355
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 356
    .local v0, "c":C
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_1

    .line 357
    new-instance v4, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    .line 368
    .end local v0    # "c":C
    :goto_1
    return-object v4

    .line 360
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 361
    const/16 v4, 0x7e

    if-ne v0, v4, :cond_2

    if-ge p1, v1, :cond_2

    .line 362
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/core/JsonPointer;->_appendEscape(Ljava/lang/StringBuilder;C)V

    move p1, v2

    .line 363
    .end local v2    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 368
    .end local v0    # "c":C
    :cond_3
    new-instance v4, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {v4, p0, v5, v6}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    goto :goto_1
.end method

.method protected static _parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 323
    .local v1, "end":I
    const/4 v2, 0x1

    .local v2, "i":I
    :cond_0
    if-ge v2, v1, :cond_2

    .line 324
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    .local v0, "c":C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_1

    .line 326
    new-instance v3, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    .line 337
    .end local v0    # "c":C
    :goto_0
    return-object v3

    .line 329
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 331
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_0

    if-ge v2, v1, :cond_0

    .line 332
    invoke-static {p0, v2}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseQuotedTail(Ljava/lang/String;I)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v3

    goto :goto_0

    .line 337
    .end local v0    # "c":C
    :cond_2
    new-instance v3, Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-direct {v3, p0, v4, v5}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonPointer;)V

    goto :goto_0
.end method

.method public static compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input: JSON Pointer expression must start with \'/\': \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->_parseTail(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _constructHead()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 8

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->last()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    .line 375
    .local v0, "last":Lcom/fasterxml/jackson/core/JsonPointer;
    if-ne v0, p0, :cond_0

    .line 376
    sget-object v3, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 381
    :goto_0
    return-object v3

    .line 379
    :cond_0
    iget-object v3, v0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 380
    .local v2, "suffixLength":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 381
    .local v1, "next":Lcom/fasterxml/jackson/core/JsonPointer;
    new-instance v3, Lcom/fasterxml/jackson/core/JsonPointer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    goto :goto_0
.end method

.method protected _constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 7
    .param p1, "suffixLength"    # I
    .param p2, "last"    # Lcom/fasterxml/jackson/core/JsonPointer;

    .prologue
    .line 387
    if-ne p0, p2, :cond_0

    .line 388
    sget-object v2, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 392
    :goto_0
    return-object v2

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 391
    .local v0, "next":Lcom/fasterxml/jackson/core/JsonPointer;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 392
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Lcom/fasterxml/jackson/core/JsonPointer;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    iget v5, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead(ILcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/fasterxml/jackson/core/JsonPointer;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonPointer;)V

    goto :goto_0
.end method

.method public append(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 3
    .param p1, "tail"    # Lcom/fasterxml/jackson/core/JsonPointer;

    .prologue
    .line 186
    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-ne p0, v1, :cond_0

    .line 197
    .end local p1    # "tail":Lcom/fasterxml/jackson/core/JsonPointer;
    :goto_0
    return-object p1

    .line 189
    .restart local p1    # "tail":Lcom/fasterxml/jackson/core/JsonPointer;
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-ne p1, v1, :cond_1

    move-object p1, p0

    .line 190
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    .line 193
    .local v0, "currentJsonPointer":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 277
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 280
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 278
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 279
    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonPointer;

    if-eqz v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    check-cast p1, Lcom/fasterxml/jackson/core/JsonPointer;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMatchingIndex()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    return v0
.end method

.method public getMatchingProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public head()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_head:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 258
    .local v0, "h":Lcom/fasterxml/jackson/core/JsonPointer;
    if-nez v0, :cond_1

    .line 259
    sget-object v1, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eq p0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->_constructHead()Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    .line 262
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_head:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 264
    :cond_1
    return-object v0
.end method

.method public last()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .line 175
    .local v0, "current":Lcom/fasterxml/jackson/core/JsonPointer;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-ne v0, v2, :cond_0

    .line 176
    const/4 v2, 0x0

    .line 182
    :goto_0
    return-object v2

    .line 179
    :cond_0
    :goto_1
    iget-object v1, v0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .local v1, "next":Lcom/fasterxml/jackson/core/JsonPointer;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonPointer;->EMPTY:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eq v1, v2, :cond_1

    .line 180
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 182
    goto :goto_0
.end method

.method public matchElement(I)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 231
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ne p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    goto :goto_0
.end method

.method public matchProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesElement(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 224
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ne p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayMatchElement()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingElementIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayMatchProperty()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_matchingPropertyName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tail()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_nextSegment:Lcom/fasterxml/jackson/core/JsonPointer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonPointer;->_asString:Ljava/lang/String;

    return-object v0
.end method
