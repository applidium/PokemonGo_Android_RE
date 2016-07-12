.class public Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "ReaderBasedJsonParser.java"


# static fields
.field protected static final _icLatin1:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected final _hashSeed:I

.field protected _inputBuffer:[C

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "st"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 77
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 115
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 116
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 117
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 118
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 119
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 120
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 121
    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->hashSeed()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_bufferRecyclable:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;[CIIZ)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "r"    # Ljava/io/Reader;
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "st"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .param p6, "inputBuffer"    # [C
    .param p7, "start"    # I
    .param p8, "end"    # I
    .param p9, "bufferRecyclable"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 97
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 98
    iput-object p6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 99
    iput p7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 100
    iput p8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 101
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 102
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 103
    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->hashSeed()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 104
    iput-boolean p9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_bufferRecyclable:Z

    .line 105
    return-void
.end method

.method private _handleOddName2(II[I)Ljava/lang/String;
    .locals 14
    .param p1, "startPtr"    # I
    .param p2, "hash"    # I
    .param p3, "codes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1671
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v12, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v13, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v13, p1

    invoke-virtual {v11, v12, p1, v13}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1672
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v6

    .line 1673
    .local v6, "outBuf":[C
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v7

    .line 1674
    .local v7, "outPtr":I
    move-object/from16 v0, p3

    array-length v5, v0

    .line 1677
    .local v5, "maxCode":I
    :goto_0
    iget v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v12, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v11, v12, :cond_1

    .line 1678
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1702
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v11, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1704
    iget-object v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 1705
    .local v10, "tb":Lcom/fasterxml/jackson/core/util/TextBuffer;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 1706
    .local v1, "buf":[C
    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v9

    .line 1707
    .local v9, "start":I
    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v4

    .line 1709
    .local v4, "len":I
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move/from16 v0, p2

    invoke-virtual {v11, v1, v9, v4, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 1682
    .end local v1    # "buf":[C
    .end local v4    # "len":I
    .end local v9    # "start":I
    .end local v10    # "tb":Lcom/fasterxml/jackson/core/util/TextBuffer;
    :cond_1
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v12, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v11, v12

    .line 1683
    .local v2, "c":C
    move v3, v2

    .line 1684
    .local v3, "i":I
    if-gt v3, v5, :cond_3

    .line 1685
    aget v11, p3, v3

    if-nez v11, :cond_0

    .line 1691
    :cond_2
    iget v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1692
    mul-int/lit8 v11, p2, 0x21

    add-int p2, v11, v3

    .line 1694
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "outPtr":I
    .local v8, "outPtr":I
    aput-char v2, v6, v7

    .line 1697
    array-length v11, v6

    if-lt v8, v11, :cond_4

    .line 1698
    iget-object v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v6

    .line 1699
    const/4 v7, 0x0

    .end local v8    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_0

    .line 1688
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .end local v7    # "outPtr":I
    .restart local v8    # "outPtr":I
    :cond_4
    move v7, v8

    .end local v8    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_0
.end method

.method private final _matchFalse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2246
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2247
    .local v2, "ptr":I
    add-int/lit8 v3, v2, 0x4

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v4, :cond_1

    .line 2248
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 2249
    .local v0, "b":[C
    aget-char v3, v0, v2

    const/16 v4, 0x61

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-char v3, v0, v2

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-char v3, v0, v2

    const/16 v4, 0x73

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-char v3, v0, v2

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    .line 2250
    add-int/lit8 v2, v2, 0x1

    aget-char v1, v0, v2

    .line 2251
    .local v1, "c":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_1

    .line 2252
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2259
    .end local v0    # "b":[C
    .end local v1    # "c":C
    :goto_0
    return-void

    .line 2258
    :cond_1
    const-string v3, "false"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final _matchNull()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x6c

    .line 2262
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2263
    .local v2, "ptr":I
    add-int/lit8 v3, v2, 0x3

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v4, :cond_1

    .line 2264
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 2265
    .local v0, "b":[C
    aget-char v3, v0, v2

    const/16 v4, 0x75

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-char v3, v0, v2

    if-ne v3, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-char v3, v0, v2

    if-ne v3, v5, :cond_1

    .line 2266
    add-int/lit8 v2, v2, 0x1

    aget-char v1, v0, v2

    .line 2267
    .local v1, "c":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_1

    .line 2268
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2275
    .end local v0    # "b":[C
    .end local v1    # "c":C
    :goto_0
    return-void

    .line 2274
    :cond_1
    const-string v3, "null"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final _matchTrue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2230
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2231
    .local v2, "ptr":I
    add-int/lit8 v3, v2, 0x3

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v4, :cond_1

    .line 2232
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 2233
    .local v0, "b":[C
    aget-char v3, v0, v2

    const/16 v4, 0x72

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-char v3, v0, v2

    const/16 v4, 0x75

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-char v3, v0, v2

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    .line 2234
    add-int/lit8 v2, v2, 0x1

    aget-char v1, v0, v2

    .line 2235
    .local v1, "c":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_0

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_0

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_1

    .line 2236
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2243
    .end local v0    # "b":[C
    .end local v1    # "c":C
    :goto_0
    return-void

    .line 2242
    :cond_1
    const-string v3, "true"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    .prologue
    .line 703
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 704
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 705
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 707
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 712
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 709
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0
.end method

.method private final _nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 837
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 838
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 839
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 875
    :goto_0
    return-object v0

    .line 841
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 875
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 843
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 844
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 846
    :sswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 847
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 849
    :sswitch_2
    const-string v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 850
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 852
    :sswitch_3
    const-string v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 853
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 855
    :sswitch_4
    const-string v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 856
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 858
    :sswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 873
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 841
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method private final _parseFloat(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .param p1, "ch"    # I
    .param p2, "startPtr"    # I
    .param p3, "ptr"    # I
    .param p4, "neg"    # Z
    .param p5, "intLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 1059
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1060
    .local v2, "inputLen":I
    const/4 v1, 0x0

    .line 1063
    .local v1, "fractLen":I
    const/16 v5, 0x2e

    if-ne p1, v5, :cond_2

    move v4, p3

    .line 1066
    .end local p3    # "ptr":I
    .local v4, "ptr":I
    :goto_0
    if-lt v4, v2, :cond_0

    .line 1067
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    move p3, v4

    .line 1117
    .end local v4    # "ptr":I
    .restart local p3    # "ptr":I
    :goto_1
    return-object v5

    .line 1069
    .end local p3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 p3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local p3    # "ptr":I
    aget-char p1, v5, v4

    .line 1070
    if-lt p1, v6, :cond_1

    if-le p1, v7, :cond_4

    .line 1076
    :cond_1
    if-nez v1, :cond_2

    .line 1077
    const-string v5, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_2
    move v4, p3

    .line 1080
    .end local p3    # "ptr":I
    .restart local v4    # "ptr":I
    const/4 v0, 0x0

    .line 1081
    .local v0, "expLen":I
    const/16 v5, 0x65

    if-eq p1, v5, :cond_3

    const/16 v5, 0x45

    if-ne p1, v5, :cond_a

    .line 1082
    :cond_3
    if-lt v4, v2, :cond_5

    .line 1083
    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1084
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    move p3, v4

    .end local v4    # "ptr":I
    .restart local p3    # "ptr":I
    goto :goto_1

    .line 1073
    .end local v0    # "expLen":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v4, p3

    .end local p3    # "ptr":I
    .restart local v4    # "ptr":I
    goto :goto_0

    .line 1087
    .restart local v0    # "expLen":I
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 p3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local p3    # "ptr":I
    aget-char p1, v5, v4

    .line 1088
    const/16 v5, 0x2d

    if-eq p1, v5, :cond_6

    const/16 v5, 0x2b

    if-ne p1, v5, :cond_c

    .line 1089
    :cond_6
    if-lt p3, v2, :cond_7

    .line 1090
    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1091
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_1

    .line 1093
    :cond_7
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "ptr":I
    .restart local v4    # "ptr":I
    aget-char p1, v5, p3

    .line 1095
    :goto_2
    if-gt p1, v7, :cond_9

    if-lt p1, v6, :cond_9

    .line 1096
    add-int/lit8 v0, v0, 0x1

    .line 1097
    if-lt v4, v2, :cond_8

    .line 1098
    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1099
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    move p3, v4

    .end local v4    # "ptr":I
    .restart local p3    # "ptr":I
    goto :goto_1

    .line 1101
    .end local p3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_8
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 p3, v4, 0x1

    .end local v4    # "ptr":I
    .restart local p3    # "ptr":I
    aget-char p1, v5, v4

    move v4, p3

    .end local p3    # "ptr":I
    .restart local v4    # "ptr":I
    goto :goto_2

    .line 1104
    :cond_9
    if-nez v0, :cond_a

    .line 1105
    const-string v5, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_a
    move p3, v4

    .line 1108
    .end local v4    # "ptr":I
    .restart local p3    # "ptr":I
    add-int/lit8 p3, p3, -0x1

    .line 1109
    iput p3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1111
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1112
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    .line 1114
    :cond_b
    sub-int v3, p3, p2

    .line 1115
    .local v3, "len":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v5, v6, p2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1117
    invoke-virtual {p0, p4, p5, v1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto/16 :goto_1

    .end local v3    # "len":I
    :cond_c
    move v4, p3

    .end local p3    # "ptr":I
    .restart local v4    # "ptr":I
    goto :goto_2
.end method

.method private _parseName2(III)Ljava/lang/String;
    .locals 12
    .param p1, "startPtr"    # I
    .param p2, "hash"    # I
    .param p3, "endChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v11, p1

    invoke-virtual {v9, v10, p1, v11}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1441
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v4

    .line 1442
    .local v4, "outBuf":[C
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v5

    .line 1445
    .local v5, "outPtr":I
    :goto_0
    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v9, v10, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1447
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ": was expecting closing \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1450
    :cond_0
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v9, v10

    .line 1451
    .local v1, "c":C
    move v2, v1

    .line 1452
    .local v2, "i":I
    const/16 v9, 0x5c

    if-gt v2, v9, :cond_1

    .line 1453
    const/16 v9, 0x5c

    if-ne v2, v9, :cond_2

    .line 1458
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v1

    .line 1468
    :cond_1
    :goto_1
    mul-int/lit8 v9, p2, 0x21

    add-int p2, v9, v1

    .line 1470
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    aput-char v1, v4, v5

    .line 1473
    array-length v9, v4

    if-lt v6, v9, :cond_4

    .line 1474
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1475
    const/4 v5, 0x0

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 1459
    :cond_2
    if-gt v2, p3, :cond_1

    .line 1460
    if-ne v2, p3, :cond_3

    .line 1478
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v9, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1480
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 1481
    .local v8, "tb":Lcom/fasterxml/jackson/core/util/TextBuffer;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 1482
    .local v0, "buf":[C
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v7

    .line 1483
    .local v7, "start":I
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v3

    .line 1484
    .local v3, "len":I
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v9, v0, v7, v3, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1463
    .end local v0    # "buf":[C
    .end local v3    # "len":I
    .end local v7    # "start":I
    .end local v8    # "tb":Lcom/fasterxml/jackson/core/util/TextBuffer;
    :cond_3
    const/16 v9, 0x20

    if-ge v2, v9, :cond_1

    .line 1464
    const-string v9, "name"

    invoke-virtual {p0, v2, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_4
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0
.end method

.method private final _parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11
    .param p1, "neg"    # Z
    .param p2, "startPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .end local p2    # "startPtr":I
    :cond_0
    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1178
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 1179
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 1182
    .local v6, "outPtr":I
    if-eqz p1, :cond_1

    .line 1183
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    const/16 v8, 0x2d

    aput-char v8, v5, v6

    move v6, v7

    .line 1187
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_1
    const/4 v4, 0x0

    .line 1188
    .local v4, "intLen":I
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v8, v9, :cond_4

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 1189
    .local v0, "c":C
    :goto_0
    const/16 v8, 0x30

    if-ne v0, v8, :cond_2

    .line 1190
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyNoLeadingZeroes()C

    move-result v0

    .line 1192
    :cond_2
    const/4 v1, 0x0

    .line 1196
    .local v1, "eof":Z
    :goto_1
    const/16 v8, 0x30

    if-lt v0, v8, :cond_18

    const/16 v8, 0x39

    if-gt v0, v8, :cond_18

    .line 1197
    add-int/lit8 v4, v4, 0x1

    .line 1198
    array-length v8, v5

    if-lt v6, v8, :cond_3

    .line 1199
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1200
    const/4 v6, 0x0

    .line 1202
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 1203
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v8, v9, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1205
    const/4 v0, 0x0

    .line 1206
    const/4 v1, 0x1

    .line 1212
    :goto_2
    if-nez v4, :cond_6

    .line 1213
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    move v6, v7

    .line 1295
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_3
    return-object v8

    .line 1188
    .end local v0    # "c":C
    .end local v1    # "eof":Z
    :cond_4
    const-string v8, "No digit following minus sign"

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto :goto_0

    .line 1209
    .end local v6    # "outPtr":I
    .restart local v0    # "c":C
    .restart local v1    # "eof":Z
    .restart local v7    # "outPtr":I
    :cond_5
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1

    .line 1216
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_6
    const/4 v3, 0x0

    .line 1218
    .local v3, "fractLen":I
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_17

    .line 1219
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    aput-char v0, v5, v7

    .line 1223
    :goto_4
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v8, v9, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_10

    .line 1224
    const/4 v1, 0x1

    .line 1239
    :cond_7
    if-nez v3, :cond_8

    .line 1240
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1244
    :cond_8
    :goto_5
    const/4 v2, 0x0

    .line 1245
    .local v2, "expLen":I
    const/16 v8, 0x65

    if-eq v0, v8, :cond_9

    const/16 v8, 0x45

    if-ne v0, v8, :cond_e

    .line 1246
    :cond_9
    array-length v8, v5

    if-lt v6, v8, :cond_a

    .line 1247
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1248
    const/4 v6, 0x0

    .line 1250
    :cond_a
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 1252
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v8, v9, :cond_12

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 1255
    :goto_6
    const/16 v8, 0x2d

    if-eq v0, v8, :cond_b

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_16

    .line 1256
    :cond_b
    array-length v8, v5

    if-lt v7, v8, :cond_15

    .line 1257
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1258
    const/4 v6, 0x0

    .line 1260
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_7
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 1262
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v8, v9, :cond_13

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v8, v9

    :goto_8
    move v6, v7

    .line 1267
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_9
    const/16 v8, 0x39

    if-gt v0, v8, :cond_d

    const/16 v8, 0x30

    if-lt v0, v8, :cond_d

    .line 1268
    add-int/lit8 v2, v2, 0x1

    .line 1269
    array-length v8, v5

    if-lt v6, v8, :cond_c

    .line 1270
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1271
    const/4 v6, 0x0

    .line 1273
    :cond_c
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    .line 1274
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v8, v9, :cond_14

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_14

    .line 1275
    const/4 v1, 0x1

    move v6, v7

    .line 1281
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_d
    if-nez v2, :cond_e

    .line 1282
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1287
    :cond_e
    if-nez v1, :cond_f

    .line 1288
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1289
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1290
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    .line 1293
    :cond_f
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1295
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    goto/16 :goto_3

    .line 1227
    .end local v2    # "expLen":I
    :cond_10
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 1228
    const/16 v8, 0x30

    if-lt v0, v8, :cond_7

    const/16 v8, 0x39

    if-gt v0, v8, :cond_7

    .line 1231
    add-int/lit8 v3, v3, 0x1

    .line 1232
    array-length v8, v5

    if-lt v6, v8, :cond_11

    .line 1233
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 1234
    const/4 v6, 0x0

    .line 1236
    :cond_11
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    aput-char v0, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_4

    .line 1252
    .end local v6    # "outPtr":I
    .restart local v2    # "expLen":I
    .restart local v7    # "outPtr":I
    :cond_12
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_6

    .line 1262
    :cond_13
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto :goto_8

    .line 1278
    :cond_14
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_9

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_15
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_7

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_16
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_9

    .end local v2    # "expLen":I
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_17
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_5

    .end local v3    # "fractLen":I
    :cond_18
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto/16 :goto_2
.end method

.method private final _skipAfterComma2()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1984
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1985
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1986
    .local v0, "i":I
    if-le v0, v4, :cond_4

    .line 1987
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 1988
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    .line 1991
    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 1992
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1996
    :cond_3
    return v0

    .line 1998
    :cond_4
    if-ge v0, v4, :cond_0

    .line 1999
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2000
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 2001
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    .line 2002
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2003
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 2004
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2005
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 2009
    .end local v0    # "i":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input within/between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method private _skipCComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2a

    .line 2118
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2119
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 2120
    .local v0, "i":I
    if-gt v0, v4, :cond_0

    .line 2121
    if-ne v0, v4, :cond_4

    .line 2122
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2143
    .end local v0    # "i":I
    :cond_2
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2144
    :goto_1
    return-void

    .line 2125
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 2126
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_1

    .line 2131
    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 2132
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2133
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 2134
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    .line 2135
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2136
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 2137
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2138
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipColon()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x2f

    const/16 v6, 0x23

    const/4 v5, 0x1

    const/16 v4, 0x20

    .line 1859
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1860
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    .line 1908
    :goto_0
    return v1

    .line 1862
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1863
    .local v0, "c":C
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_8

    .line 1864
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v2, v3

    .line 1865
    .local v1, "i":I
    if-le v1, v4, :cond_3

    .line 1866
    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_2

    .line 1867
    :cond_1
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    goto :goto_0

    .line 1869
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_0

    .line 1872
    :cond_3
    if-eq v1, v4, :cond_4

    if-ne v1, v8, :cond_7

    .line 1873
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v2, v3

    .line 1874
    if-le v1, v4, :cond_7

    .line 1875
    if-eq v1, v7, :cond_5

    if-ne v1, v6, :cond_6

    .line 1876
    :cond_5
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    goto :goto_0

    .line 1878
    :cond_6
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_0

    .line 1882
    :cond_7
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    goto :goto_0

    .line 1884
    .end local v1    # "i":I
    :cond_8
    if-eq v0, v4, :cond_9

    if-ne v0, v8, :cond_a

    .line 1885
    :cond_9
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1887
    :cond_a
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_12

    .line 1888
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v2, v3

    .line 1889
    .restart local v1    # "i":I
    if-le v1, v4, :cond_d

    .line 1890
    if-eq v1, v7, :cond_b

    if-ne v1, v6, :cond_c

    .line 1891
    :cond_b
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    goto :goto_0

    .line 1893
    :cond_c
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_0

    .line 1896
    :cond_d
    if-eq v1, v4, :cond_e

    if-ne v1, v8, :cond_11

    .line 1897
    :cond_e
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v2, v3

    .line 1898
    if-le v1, v4, :cond_11

    .line 1899
    if-eq v1, v7, :cond_f

    if-ne v1, v6, :cond_10

    .line 1900
    :cond_f
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    goto/16 :goto_0

    .line 1902
    :cond_10
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto/16 :goto_0

    .line 1906
    :cond_11
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    goto/16 :goto_0

    .line 1908
    .end local v1    # "i":I
    :cond_12
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v1

    goto/16 :goto_0
.end method

.method private final _skipColon2(Z)I
    .locals 5
    .param p1, "gotColon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1914
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 1915
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 1917
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 1918
    .local v0, "i":I
    if-le v0, v4, :cond_7

    .line 1919
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 1920
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    .line 1923
    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 1924
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1928
    :cond_3
    if-eqz p1, :cond_4

    .line 1929
    return v0

    .line 1931
    :cond_4
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6

    .line 1932
    if-ge v0, v4, :cond_5

    .line 1933
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    .line 1935
    :cond_5
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1937
    :cond_6
    const/4 p1, 0x1

    .line 1938
    goto :goto_0

    .line 1940
    :cond_7
    if-ge v0, v4, :cond_0

    .line 1941
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 1942
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1943
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    .line 1944
    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 1945
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 1946
    :cond_9
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1947
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipComma(I)I
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 1956
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "was expecting comma to separate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1959
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_6

    .line 1960
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char p1, v0, v1

    .line 1961
    if-le p1, v3, :cond_3

    .line 1962
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    .line 1963
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1964
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipAfterComma2()I

    move-result v0

    .line 1979
    :goto_1
    return v0

    :cond_2
    move v0, p1

    .line 1966
    goto :goto_1

    .line 1968
    :cond_3
    if-ge p1, v3, :cond_0

    .line 1969
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 1970
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1971
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    .line 1972
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 1973
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 1974
    :cond_5
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 1975
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1979
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipAfterComma2()I

    move-result v0

    goto :goto_1
.end method

.method private _skipComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    .line 2098
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2099
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2102
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2103
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2105
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 2106
    .local v0, "c":C
    if-ne v0, v4, :cond_2

    .line 2107
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLine()V

    .line 2113
    :goto_0
    return-void

    .line 2108
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 2109
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCComment()V

    goto :goto_0

    .line 2111
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private _skipLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2158
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2159
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 2160
    .local v0, "i":I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 2161
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 2162
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 2163
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 2173
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 2165
    .restart local v0    # "i":I
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 2166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_1

    .line 2168
    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2169
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWSOrEnd()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x23

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x20

    .line 2016
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 2017
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2018
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_eofAsNextChar()I

    move-result v0

    .line 2060
    :cond_0
    :goto_0
    return v0

    .line 2021
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 2022
    .local v0, "i":I
    if-le v0, v4, :cond_3

    .line 2023
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    if-ne v0, v8, :cond_0

    .line 2024
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2025
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_0

    .line 2029
    :cond_3
    if-eq v0, v4, :cond_4

    .line 2030
    if-ne v0, v6, :cond_6

    .line 2031
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 2032
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 2040
    :cond_4
    :goto_1
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_b

    .line 2041
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 2042
    if-le v0, v4, :cond_8

    .line 2043
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    if-ne v0, v8, :cond_0

    .line 2044
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2045
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_0

    .line 2033
    :cond_6
    if-ne v0, v7, :cond_7

    .line 2034
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_1

    .line 2035
    :cond_7
    if-eq v0, v5, :cond_4

    .line 2036
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_1

    .line 2049
    :cond_8
    if-eq v0, v4, :cond_4

    .line 2050
    if-ne v0, v6, :cond_9

    .line 2051
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 2052
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_1

    .line 2053
    :cond_9
    if-ne v0, v7, :cond_a

    .line 2054
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_1

    .line 2055
    :cond_a
    if-eq v0, v5, :cond_4

    .line 2056
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_1

    .line 2060
    :cond_b
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_0
.end method

.method private _skipWSOrEnd2()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 2066
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2067
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2068
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_eofAsNextChar()I

    move-result v0

    .line 2082
    :cond_1
    return v0

    .line 2071
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 2072
    .local v0, "i":I
    if-le v0, v4, :cond_4

    .line 2073
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 2074
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    .line 2077
    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 2078
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2083
    :cond_4
    if-eq v0, v4, :cond_0

    .line 2084
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 2085
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 2086
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    .line 2087
    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 2088
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 2089
    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 2090
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private _skipYAMLComment()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2148
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    const/4 v0, 0x0

    .line 2152
    :goto_0
    return v0

    .line 2151
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLine()V

    .line 2152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private _verifyNLZ2()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 1318
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1342
    :cond_0
    :goto_0
    return v0

    .line 1321
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1322
    .local v0, "ch":C
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 1323
    goto :goto_0

    .line 1325
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1326
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 1329
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1330
    if-ne v0, v1, :cond_0

    .line 1331
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1332
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1333
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 1334
    goto :goto_0

    .line 1336
    :cond_8
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1337
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final _verifyNoLeadingZeroes()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x30

    .line 1305
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v2, v3, :cond_1

    .line 1306
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 1308
    .local v0, "ch":C
    if-lt v0, v1, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 1313
    .end local v0    # "ch":C
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyNLZ2()C

    move-result v1

    goto :goto_0
.end method

.method private final _verifyRootSpace(I)V
    .locals 1
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1386
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1387
    sparse-switch p1, :sswitch_data_0

    .line 1399
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMissingRootWS(I)V

    .line 1400
    :goto_0
    :sswitch_0
    return-void

    .line 1392
    :sswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    .line 1395
    :sswitch_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1396
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    .line 1387
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 189
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 191
    :cond_2
    return-void
.end method

.method protected _decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 10
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x22

    const/4 v7, -0x2

    .line 2326
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v1

    .line 2333
    .local v1, "builder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 2334
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 2336
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 2337
    .local v2, "ch":C
    const/16 v4, 0x20

    if-le v2, v4, :cond_0

    .line 2338
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 2339
    .local v0, "bits":I
    if-gez v0, :cond_3

    .line 2340
    if-ne v2, v8, :cond_2

    .line 2341
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    .line 2410
    :goto_1
    return-object v4

    .line 2343
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 2344
    if-ltz v0, :cond_0

    .line 2348
    :cond_3
    move v3, v0

    .line 2352
    .local v3, "decodedData":I
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 2353
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 2355
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 2356
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 2357
    if-gez v0, :cond_5

    .line 2358
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 2360
    :cond_5
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 2363
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 2364
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 2366
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 2367
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 2370
    if-gez v0, :cond_b

    .line 2371
    if-eq v0, v7, :cond_8

    .line 2373
    if-ne v2, v8, :cond_7

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2374
    shr-int/lit8 v3, v3, 0x4

    .line 2375
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 2376
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    goto :goto_1

    .line 2378
    :cond_7
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 2380
    :cond_8
    if-ne v0, v7, :cond_b

    .line 2382
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_9

    .line 2383
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 2385
    :cond_9
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 2386
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected padding character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v9, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 2390
    :cond_a
    shr-int/lit8 v3, v3, 0x4

    .line 2391
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 2397
    :cond_b
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 2399
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v5, :cond_c

    .line 2400
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 2402
    :cond_c
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v4, v5

    .line 2403
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 2404
    if-gez v0, :cond_f

    .line 2405
    if-eq v0, v7, :cond_e

    .line 2407
    if-ne v2, v8, :cond_d

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2408
    shr-int/lit8 v3, v3, 0x2

    .line 2409
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 2410
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    goto/16 :goto_1

    .line 2412
    :cond_d
    invoke-virtual {p0, p1, v2, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 2414
    :cond_e
    if-ne v0, v7, :cond_f

    .line 2420
    shr-int/lit8 v3, v3, 0x2

    .line 2421
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 2427
    :cond_f
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 2428
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected _decodeEscaped()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2178
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 2179
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2180
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2183
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 2185
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 2208
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    .line 2226
    .end local v0    # "c":C
    :goto_0
    :sswitch_0
    return v0

    .line 2188
    .restart local v0    # "c":C
    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 2190
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 2192
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 2194
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    .line 2196
    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    .line 2212
    :sswitch_6
    const/4 v4, 0x0

    .line 2213
    .local v4, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    .line 2214
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_1

    .line 2215
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2216
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 2219
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v5, v6

    .line 2220
    .local v1, "ch":I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v2

    .line 2221
    .local v2, "digit":I
    if-gez v2, :cond_2

    .line 2222
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 2224
    :cond_2
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 2213
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2226
    .end local v1    # "ch":I
    .end local v2    # "digit":I
    :cond_3
    int-to-char v0, v4

    goto :goto_0

    .line 2185
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected final _finishString()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1720
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1721
    .local v4, "ptr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1723
    .local v2, "inputLen":I
    if-ge v4, v2, :cond_2

    .line 1724
    sget-object v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 1725
    .local v1, "codes":[I
    array-length v3, v1

    .line 1728
    .local v3, "maxCode":I
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v0, v5, v4

    .line 1729
    .local v0, "ch":I
    if-ge v0, v3, :cond_1

    aget v5, v1, v0

    if-eqz v5, :cond_1

    .line 1730
    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    .line 1731
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1732
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1748
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :goto_0
    return-void

    .line 1738
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v3    # "maxCode":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1739
    if-lt v4, v2, :cond_0

    .line 1745
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v3    # "maxCode":I
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy([CII)V

    .line 1746
    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1747
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString2()V

    goto :goto_0
.end method

.method protected _finishString2()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1752
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v4

    .line 1753
    .local v4, "outBuf":[C
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v5

    .line 1754
    .local v5, "outPtr":I
    sget-object v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 1755
    .local v1, "codes":[I
    array-length v3, v1

    .line 1758
    .local v3, "maxCode":I
    :goto_0
    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v7, v8, :cond_0

    .line 1759
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1760
    const-string v7, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1763
    :cond_0
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v7, v8

    .line 1764
    .local v0, "c":C
    move v2, v0

    .line 1765
    .local v2, "i":I
    if-ge v2, v3, :cond_2

    aget v7, v1, v2

    if-eqz v7, :cond_2

    .line 1766
    const/16 v7, 0x22

    if-ne v2, v7, :cond_1

    .line 1786
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1787
    return-void

    .line 1768
    :cond_1
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_4

    .line 1773
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v0

    .line 1779
    :cond_2
    :goto_1
    array-length v7, v4

    if-lt v5, v7, :cond_3

    .line 1780
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1781
    const/4 v5, 0x0

    .line 1784
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    aput-char v0, v4, v5

    move v5, v6

    .line 1785
    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 1774
    :cond_4
    const/16 v7, 0x20

    if-ge v2, v7, :cond_2

    .line 1775
    const-string v7, "string value"

    invoke-virtual {p0, v2, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 1
    .param p1, "t"    # Lcom/fasterxml/jackson/core/JsonToken;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 289
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected _handleApos()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x27

    .line 1630
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    .line 1631
    .local v2, "outBuf":[C
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 1634
    .local v3, "outPtr":I
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1635
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1636
    const-string v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1639
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 1640
    .local v0, "c":C
    move v1, v0

    .line 1641
    .local v1, "i":I
    if-gt v1, v9, :cond_1

    .line 1642
    if-ne v1, v9, :cond_3

    .line 1647
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v0

    .line 1658
    :cond_1
    :goto_1
    array-length v5, v2

    if-lt v3, v5, :cond_2

    .line 1659
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 1660
    const/4 v3, 0x0

    .line 1663
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "outPtr":I
    .local v4, "outPtr":I
    aput-char v0, v2, v3

    move v3, v4

    .line 1664
    .end local v4    # "outPtr":I
    .restart local v3    # "outPtr":I
    goto :goto_0

    .line 1648
    :cond_3
    if-gt v1, v8, :cond_1

    .line 1649
    if-ne v1, v8, :cond_4

    .line 1665
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1666
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v5

    .line 1652
    :cond_4
    const/16 v5, 0x20

    if-ge v1, v5, :cond_1

    .line 1653
    const-string v5, "string value"

    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .param p1, "ch"    # I
    .param p2, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 1351
    const/16 v1, 0x49

    if-ne p1, v1, :cond_4

    .line 1352
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v6, :cond_0

    .line 1353
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    .line 1355
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char p1, v1, v6

    .line 1356
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_5

    .line 1357
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 1358
    .local v0, "match":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1359
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1360
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1373
    .end local v0    # "match":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 1357
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    .restart local v0    # "match":Ljava/lang/String;
    :cond_2
    move-wide v2, v4

    .line 1360
    goto :goto_1

    .line 1362
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    .line 1372
    .end local v0    # "match":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 1373
    const/4 v1, 0x0

    goto :goto_2

    .line 1363
    :cond_5
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_4

    .line 1364
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 1365
    .restart local v0    # "match":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1366
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1367
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_2

    .line 1364
    .end local v0    # "match":Ljava/lang/String;
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    .restart local v0    # "match":Ljava/lang/String;
    :cond_7
    move-wide v2, v4

    .line 1367
    goto :goto_5

    .line 1369
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected _handleOddName(I)Ljava/lang/String;
    .locals 11
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    const/16 v8, 0x27

    if-ne p1, v8, :cond_0

    sget-object v8, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1498
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseAposName()Ljava/lang/String;

    move-result-object v8

    .line 1542
    :goto_0
    return-object v8

    .line 1501
    :cond_0
    sget-object v8, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1502
    const-string v8, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1504
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v1

    .line 1505
    .local v1, "codes":[I
    array-length v5, v1

    .line 1510
    .local v5, "maxCode":I
    if-ge p1, v5, :cond_5

    .line 1511
    aget v8, v1, p1

    if-nez v8, :cond_4

    const/4 v2, 0x1

    .line 1515
    .local v2, "firstOk":Z
    :goto_1
    if-nez v2, :cond_2

    .line 1516
    const-string v8, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1518
    :cond_2
    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1519
    .local v6, "ptr":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 1520
    .local v3, "hash":I
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1522
    .local v4, "inputLen":I
    if-ge v6, v4, :cond_8

    .line 1524
    :cond_3
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v0, v8, v6

    .line 1525
    .local v0, "ch":I
    if-ge v0, v5, :cond_6

    .line 1526
    aget v8, v1, v0

    if-eqz v8, :cond_7

    .line 1527
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 1528
    .local v7, "start":I
    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1529
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1511
    .end local v0    # "ch":I
    .end local v2    # "firstOk":Z
    .end local v3    # "hash":I
    .end local v4    # "inputLen":I
    .end local v6    # "ptr":I
    .end local v7    # "start":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1513
    :cond_5
    int-to-char v8, p1

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    .restart local v2    # "firstOk":Z
    goto :goto_1

    .line 1531
    .restart local v0    # "ch":I
    .restart local v3    # "hash":I
    .restart local v4    # "inputLen":I
    .restart local v6    # "ptr":I
    :cond_6
    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1532
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 1533
    .restart local v7    # "start":I
    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1534
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1536
    .end local v7    # "start":I
    :cond_7
    mul-int/lit8 v8, v3, 0x21

    add-int v3, v8, v0

    .line 1537
    add-int/lit8 v6, v6, 0x1

    .line 1538
    if-lt v6, v4, :cond_3

    .line 1540
    .end local v0    # "ch":I
    :cond_8
    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 1541
    .restart local v7    # "start":I
    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1542
    invoke-direct {p0, v7, v3, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddName2(II[I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method protected _handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1584
    sparse-switch p1, :sswitch_data_0

    .line 1620
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_1
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1625
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1593
    :sswitch_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleApos()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1598
    :sswitch_1
    const-string v0, "NaN"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1599
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1600
    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1602
    :cond_2
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1605
    :sswitch_2
    const-string v0, "Infinity"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 1606
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1607
    const-string v0, "Infinity"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1609
    :cond_3
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :sswitch_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_4

    .line 1613
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1614
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    .line 1617
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1584
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_3
        0x49 -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 5
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2285
    .local v1, "len":I
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 2286
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2287
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 2290
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2291
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 2293
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2294
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v1, :cond_0

    .line 2297
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_4

    .line 2298
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2310
    :cond_3
    :goto_0
    return-void

    .line 2302
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 2303
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_3

    .line 2307
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2308
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _parseAposName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x27

    .line 1548
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1549
    .local v5, "ptr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 1550
    .local v2, "hash":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1552
    .local v3, "inputLen":I
    if-ge v5, v3, :cond_2

    .line 1553
    sget-object v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 1554
    .local v1, "codes":[I
    array-length v4, v1

    .line 1557
    .local v4, "maxCode":I
    :cond_0
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v0, v7, v5

    .line 1558
    .local v0, "ch":I
    if-ne v0, v8, :cond_1

    .line 1559
    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1560
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1561
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int v9, v5, v6

    invoke-virtual {v7, v8, v6, v9, v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    .line 1574
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :goto_0
    return-object v7

    .line 1563
    .end local v6    # "start":I
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v4    # "maxCode":I
    :cond_1
    if-ge v0, v4, :cond_3

    aget v7, v1, v0

    if-eqz v7, :cond_3

    .line 1571
    .end local v0    # "ch":I
    .end local v1    # "codes":[I
    .end local v4    # "maxCode":I
    :cond_2
    :goto_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1572
    .restart local v6    # "start":I
    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1574
    invoke-direct {p0, v6, v2, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName2(III)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1566
    .end local v6    # "start":I
    .restart local v0    # "ch":I
    .restart local v1    # "codes":[I
    .restart local v4    # "maxCode":I
    :cond_3
    mul-int/lit8 v7, v2, 0x21

    add-int v2, v7, v0

    .line 1567
    add-int/lit8 v5, v5, 0x1

    .line 1568
    if-lt v5, v3, :cond_0

    goto :goto_1
.end method

.method protected final _parseName()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 1412
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1413
    .local v3, "ptr":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 1414
    .local v2, "hash":I
    sget-object v1, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 1416
    .local v1, "codes":[I
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v3, v5, :cond_1

    .line 1417
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v0, v5, v3

    .line 1418
    .local v0, "ch":I
    array-length v5, v1

    if-ge v0, v5, :cond_0

    aget v5, v1, v0

    if-eqz v5, :cond_0

    .line 1419
    if-ne v0, v6, :cond_1

    .line 1420
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1421
    .local v4, "start":I
    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1422
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int v7, v3, v4

    invoke-virtual {v5, v6, v4, v7, v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v5

    .line 1431
    .end local v0    # "ch":I
    :goto_1
    return-object v5

    .line 1426
    .end local v4    # "start":I
    .restart local v0    # "ch":I
    :cond_0
    mul-int/lit8 v5, v2, 0x21

    add-int v2, v5, v0

    .line 1427
    add-int/lit8 v3, v3, 0x1

    .line 1428
    goto :goto_0

    .line 1429
    .end local v0    # "ch":I
    :cond_1
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1430
    .restart local v4    # "start":I
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1431
    invoke-direct {p0, v4, v2, v6}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName2(III)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected final _parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v4, 0x1

    .line 1122
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1123
    .local v3, "ptr":I
    add-int/lit8 v2, v3, -0x1

    .line 1124
    .local v2, "startPtr":I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1126
    .local v6, "inputLen":I
    if-lt v3, v6, :cond_0

    .line 1127
    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1165
    :goto_0
    return-object v0

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "ptr":I
    .local v8, "ptr":I
    aget-char v1, v0, v3

    .line 1131
    .local v1, "ch":I
    if-gt v1, v10, :cond_1

    if-ge v1, v9, :cond_2

    .line 1132
    :cond_1
    iput v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1133
    invoke-virtual {p0, v1, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move v3, v8

    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0

    .line 1136
    .end local v3    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_2
    if-ne v1, v9, :cond_3

    .line 1137
    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move v3, v8

    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0

    .line 1139
    .end local v3    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_3
    const/4 v5, 0x1

    .line 1144
    .local v5, "intLen":I
    :goto_1
    if-lt v8, v6, :cond_4

    .line 1145
    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move v3, v8

    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0

    .line 1147
    .end local v3    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    aget-char v1, v0, v8

    .line 1148
    if-lt v1, v9, :cond_5

    if-le v1, v10, :cond_7

    .line 1154
    :cond_5
    const/16 v0, 0x2e

    if-eq v1, v0, :cond_6

    const/16 v0, 0x65

    if-eq v1, v0, :cond_6

    const/16 v0, 0x45

    if-ne v1, v0, :cond_8

    .line 1155
    :cond_6
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object v0, p0

    .line 1156
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFloat(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1151
    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v8, v3

    .end local v3    # "ptr":I
    .restart local v8    # "ptr":I
    goto :goto_1

    .line 1158
    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 1159
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1161
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    .line 1163
    :cond_9
    sub-int v7, v3, v2

    .line 1164
    .local v7, "len":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v0, v9, v2, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1165
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x30

    const/4 v4, 0x0

    .line 1010
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1011
    .local v3, "ptr":I
    add-int/lit8 v2, v3, -0x1

    .line 1012
    .local v2, "startPtr":I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1015
    .local v6, "inputLen":I
    if-ne p1, v1, :cond_0

    .line 1016
    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1053
    :goto_0
    return-object v0

    .line 1025
    :cond_0
    const/4 v5, 0x1

    .local v5, "intLen":I
    move v8, v3

    .line 1030
    .end local v3    # "ptr":I
    .local v8, "ptr":I
    :goto_1
    if-lt v8, v6, :cond_1

    .line 1031
    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1032
    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move v3, v8

    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0

    .line 1034
    .end local v3    # "ptr":I
    .restart local v8    # "ptr":I
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    aget-char p1, v0, v8

    .line 1035
    if-lt p1, v1, :cond_2

    const/16 v0, 0x39

    if-le p1, v0, :cond_4

    .line 1040
    :cond_2
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    const/16 v0, 0x45

    if-ne p1, v0, :cond_5

    .line 1041
    :cond_3
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object v0, p0

    move v1, p1

    .line 1042
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFloat(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v8, v3

    .end local v3    # "ptr":I
    .restart local v8    # "ptr":I
    goto :goto_1

    .line 1045
    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 1046
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1048
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1049
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    .line 1051
    :cond_6
    sub-int v7, v3, v2

    .line 1052
    .local v7, "len":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v0, v1, v2, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 1053
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected _readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    .locals 10
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v5, 0x0

    .line 429
    .local v5, "outputPtr":I
    array-length v7, p3

    add-int/lit8 v4, v7, -0x3

    .line 430
    .local v4, "outputEnd":I
    const/4 v3, 0x0

    .line 436
    .local v3, "outputCount":I
    :cond_0
    :goto_0
    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v7, v8, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 439
    :cond_1
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v7, v8

    .line 440
    .local v1, "ch":C
    const/16 v7, 0x20

    if-le v1, v7, :cond_0

    .line 441
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 442
    .local v0, "bits":I
    if-gez v0, :cond_4

    .line 443
    const/16 v7, 0x22

    if-ne v1, v7, :cond_3

    .line 544
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 545
    if-lez v5, :cond_2

    .line 546
    add-int/2addr v3, v5

    .line 547
    const/4 v7, 0x0

    invoke-virtual {p2, p3, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 549
    :cond_2
    return v3

    .line 446
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v1, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 447
    if-ltz v0, :cond_0

    .line 453
    :cond_4
    if-le v5, v4, :cond_5

    .line 454
    add-int/2addr v3, v5

    .line 455
    const/4 v7, 0x0

    invoke-virtual {p2, p3, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 456
    const/4 v5, 0x0

    .line 459
    :cond_5
    move v2, v0

    .line 463
    .local v2, "decodedData":I
    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v7, v8, :cond_6

    .line 464
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 466
    :cond_6
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v7, v8

    .line 467
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 468
    if-gez v0, :cond_7

    .line 469
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v1, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 471
    :cond_7
    shl-int/lit8 v7, v2, 0x6

    or-int v2, v7, v0

    .line 474
    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v7, v8, :cond_8

    .line 475
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 477
    :cond_8
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v7, v8

    .line 478
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 481
    if-gez v0, :cond_d

    .line 482
    const/4 v7, -0x2

    if-eq v0, v7, :cond_a

    .line 484
    const/16 v7, 0x22

    if-ne v1, v7, :cond_9

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v7

    if-nez v7, :cond_9

    .line 485
    shr-int/lit8 v2, v2, 0x4

    .line 486
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .local v6, "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, p3, v5

    move v5, v6

    .line 487
    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    goto :goto_1

    .line 489
    :cond_9
    const/4 v7, 0x2

    invoke-virtual {p0, p1, v1, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 491
    :cond_a
    const/4 v7, -0x2

    if-ne v0, v7, :cond_d

    .line 493
    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v7, v8, :cond_b

    .line 494
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 496
    :cond_b
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v7, v8

    .line 497
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v7

    if-nez v7, :cond_c

    .line 498
    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected padding character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v1, v7, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7

    .line 501
    :cond_c
    shr-int/lit8 v2, v2, 0x4

    .line 502
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, p3, v5

    move v5, v6

    .line 503
    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    goto/16 :goto_0

    .line 507
    :cond_d
    shl-int/lit8 v7, v2, 0x6

    or-int v2, v7, v0

    .line 509
    iget v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v7, v8, :cond_e

    .line 510
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    .line 512
    :cond_e
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v7, v8

    .line 513
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    .line 514
    if-gez v0, :cond_11

    .line 515
    const/4 v7, -0x2

    if-eq v0, v7, :cond_10

    .line 517
    const/16 v7, 0x22

    if-ne v1, v7, :cond_f

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v7

    if-nez v7, :cond_f

    .line 518
    shr-int/lit8 v2, v2, 0x2

    .line 519
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v5

    .line 520
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, p3, v6

    goto/16 :goto_1

    .line 523
    :cond_f
    const/4 v7, 0x3

    invoke-virtual {p0, p1, v1, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v0

    .line 525
    :cond_10
    const/4 v7, -0x2

    if-ne v0, v7, :cond_11

    .line 532
    shr-int/lit8 v2, v2, 0x2

    .line 533
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v5

    .line 534
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, p3, v6

    goto/16 :goto_0

    .line 539
    :cond_11
    shl-int/lit8 v7, v2, 0x6

    or-int v2, v7, v0

    .line 540
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p3, v5

    .line 541
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 542
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    int-to-byte v7, v2

    aput-byte v7, p3, v5

    move v5, v6

    .line 543
    .end local v6    # "outputPtr":I
    .restart local v5    # "outputPtr":I
    goto/16 :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 203
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->release()V

    .line 205
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_bufferRecyclable:Z

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 207
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 209
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseTokenBuffer([C)V

    .line 212
    .end local v0    # "buf":[C
    :cond_0
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "matchedPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2439
    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "matchedPart"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2450
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    .line 2451
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2462
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': was expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    .line 2463
    return-void

    .line 2455
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 2456
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2459
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 2460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final _skipCR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1848
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1850
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1853
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    .line 1854
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 1855
    return-void
.end method

.method protected final _skipString()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    .line 1796
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 1798
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1799
    .local v4, "inPtr":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1800
    .local v3, "inLen":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 1803
    .local v2, "inBuf":[C
    :goto_0
    if-lt v4, v3, :cond_1

    .line 1804
    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1805
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1806
    const-string v6, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1808
    :cond_0
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1809
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 1811
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .local v5, "inPtr":I
    aget-char v0, v2, v4

    .line 1812
    .local v0, "c":C
    move v1, v0

    .line 1813
    .local v1, "i":I
    if-gt v1, v8, :cond_4

    .line 1814
    if-ne v1, v8, :cond_2

    .line 1819
    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1820
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v0

    .line 1821
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1822
    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    goto :goto_0

    .line 1823
    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    :cond_2
    if-gt v1, v7, :cond_4

    .line 1824
    if-ne v1, v7, :cond_3

    .line 1825
    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1835
    return-void

    .line 1828
    :cond_3
    const/16 v6, 0x20

    if-ge v1, v6, :cond_4

    .line 1829
    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 1830
    const-string v6, "string value"

    invoke-virtual {p0, v1, v6}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_4
    move v4, v5

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    goto :goto_0
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 4
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-nez v2, :cond_1

    .line 382
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    .line 387
    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_3

    .line 389
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 405
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    return-object v2

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v2

    throw v2

    .line 398
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-nez v2, :cond_2

    .line 400
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 401
    .local v0, "builder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 402
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    goto :goto_0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    return-object v0
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 3
    .param p1, "eofMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 230
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 231
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 233
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 237
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getTextCharacters()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 323
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v2

    .line 326
    :goto_0
    return-object v2

    .line 299
    :pswitch_0
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    if-nez v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 302
    .local v1, "nameLen":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    .line 307
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 308
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 310
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 304
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 305
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 313
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_3

    .line 314
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 315
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 320
    :cond_3
    :pswitch_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 326
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getTextLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 348
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 338
    :pswitch_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 339
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 340
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 345
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getTextOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 358
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 363
    :pswitch_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 364
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 365
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 370
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 247
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 249
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 263
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 265
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_2
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    .line 150
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    .line 152
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 154
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 155
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 156
    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    .line 157
    const/4 v1, 0x1

    .line 166
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 160
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_closeInput()V

    .line 162
    if-nez v0, :cond_0

    .line 163
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final nextBooleanValue()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 955
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_4

    .line 956
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 957
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 958
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 959
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 960
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    .line 961
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 979
    :cond_0
    :goto_0
    return-object v2

    .line 963
    :cond_1
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_2

    .line 964
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 966
    :cond_2
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_3

    .line 967
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 968
    :cond_3
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_0

    .line 969
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 973
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 974
    .restart local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v1, :cond_0

    .line 975
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    .line 976
    .local v0, "id":I
    const/16 v3, 0x9

    if-ne v0, v3, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 977
    :cond_5
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public nextFieldName()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7d

    const/16 v9, 0x5d

    const/16 v8, 0x22

    const/4 v1, 0x0

    .line 735
    const/4 v3, 0x0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_numTypesValid:I

    .line 736
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    .line 832
    :goto_0
    return-object v1

    .line 740
    :cond_0
    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v3, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipString()V

    .line 743
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 744
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->close()V

    .line 746
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 749
    :cond_2
    iget-wide v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputTotal:J

    .line 750
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    .line 751
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    .line 752
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    .line 753
    if-ne v0, v9, :cond_4

    .line 754
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v3

    if-nez v3, :cond_3

    .line 755
    invoke-virtual {p0, v0, v10}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 757
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 758
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 761
    :cond_4
    if-ne v0, v10, :cond_6

    .line 762
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v3

    if-nez v3, :cond_5

    .line 763
    invoke-virtual {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 765
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 766
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 769
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 770
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComma(I)I

    move-result v0

    .line 773
    :cond_7
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v3

    if-nez v3, :cond_8

    .line 774
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 778
    :cond_8
    if-ne v0, v8, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName()Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "name":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 780
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 781
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon()I

    move-result v0

    .line 783
    if-ne v0, v8, :cond_a

    .line 784
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 785
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 778
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 793
    .restart local v1    # "name":Ljava/lang/String;
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 828
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 831
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_2
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 795
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 796
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 807
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 808
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 810
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchFalse()V

    .line 811
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 812
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 814
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchNull()V

    .line 815
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 816
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 818
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchTrue()V

    .line 819
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 820
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 822
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_5
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 823
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 825
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_6
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 826
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 793
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x5b -> :sswitch_5
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x74 -> :sswitch_4
        0x7b -> :sswitch_6
    .end sparse-switch
.end method

.method public final nextIntValue(I)I
    .locals 4
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 910
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 911
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 912
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 913
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 914
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 915
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getIntValue()I

    move-result p1

    .line 925
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 917
    .restart local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local p1    # "defaultValue":I
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 918
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 919
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 925
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getIntValue()I

    move-result p1

    goto :goto_0
.end method

.method public final nextLongValue(J)J
    .locals 5
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 933
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 934
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 935
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 936
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 937
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getLongValue()J

    move-result-wide p1

    .line 948
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 940
    .restart local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .restart local p1    # "defaultValue":J
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 941
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 942
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 948
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getLongValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public final nextTextValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 882
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_4

    .line 883
    iput-boolean v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    .line 884
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 885
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 886
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 887
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_2

    .line 888
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_0

    .line 889
    iput-boolean v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 890
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 902
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    :goto_0
    return-object v1

    .line 894
    .restart local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_3

    .line 895
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 896
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 897
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0

    .line 902
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x7d

    const/16 v8, 0x5d

    .line 565
    const/4 v4, 0x0

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_numTypesValid:I

    .line 571
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 698
    :goto_0
    return-object v3

    .line 574
    :cond_0
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipString()V

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd()I

    move-result v0

    .line 578
    .local v0, "i":I
    if-gez v0, :cond_2

    .line 582
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->close()V

    .line 583
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 589
    :cond_2
    iget-wide v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputTotal:J

    .line 590
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    .line 591
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    .line 594
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    .line 597
    if-ne v0, v8, :cond_4

    .line 598
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    invoke-virtual {p0, v0, v9}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 601
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 602
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 604
    :cond_4
    if-ne v0, v9, :cond_6

    .line 605
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_5

    .line 606
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    .line 608
    :cond_5
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 609
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 613
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 614
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComma(I)I

    move-result v0

    .line 621
    :cond_7
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    .line 622
    .local v1, "inObject":Z
    if-eqz v1, :cond_8

    .line 624
    const/16 v4, 0x22

    if-ne v0, v4, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "name":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 626
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 627
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon()I

    move-result v0

    .line 634
    .end local v2    # "name":Ljava/lang/String;
    :cond_8
    sparse-switch v0, :sswitch_data_0

    .line 689
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 693
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_2
    if-eqz v1, :cond_c

    .line 694
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 695
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 624
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_9
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 636
    :sswitch_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 637
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 638
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 640
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_1
    if-nez v1, :cond_a

    .line 641
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 643
    :cond_a
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 644
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 646
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_2
    if-nez v1, :cond_b

    .line 647
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 649
    :cond_b
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 650
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 655
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_3
    const-string v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 657
    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchTrue()V

    .line 658
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 659
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 661
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchFalse()V

    .line 662
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 663
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 665
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchNull()V

    .line 666
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 667
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 674
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 675
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 686
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :sswitch_8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 687
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    goto :goto_2

    .line 697
    :cond_c
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x38 -> :sswitch_8
        0x39 -> :sswitch_8
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 414
    .local v0, "b":[B
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 415
    array-length v2, v0

    .line 422
    .end local v0    # "b":[B
    :goto_0
    return v2

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 420
    .local v1, "buf":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 422
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v2
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 4
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v0, v2, v3

    .line 137
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    .line 141
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 139
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    .line 140
    .local v1, "origPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-void
.end method
