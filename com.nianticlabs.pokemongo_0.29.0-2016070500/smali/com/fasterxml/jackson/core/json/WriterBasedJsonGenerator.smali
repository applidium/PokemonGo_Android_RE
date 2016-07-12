.class public final Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;
.super Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;
.source "WriterBasedJsonGenerator.java"


# static fields
.field protected static final HEX_CHARS:[C

.field protected static final SHORT_WRITE:I = 0x20


# instance fields
.field protected _currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

.field protected _entityBuffer:[C

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/Writer;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "features"    # I
    .param p3, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p4, "w"    # Ljava/io/Writer;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 38
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 44
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 75
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    .line 76
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 78
    return-void
.end method

.method private _allocateEntityBuffer()[C
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1867
    const/16 v1, 0xe

    new-array v0, v1, [C

    .line 1869
    .local v0, "buf":[C
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1871
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1872
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1873
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1874
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1876
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1877
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1878
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1879
    return-object v0
.end method

.method private _appendCharacterEscape(CI)V
    .locals 10
    .param p1, "ch"    # C
    .param p2, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x30

    .line 1815
    if-ltz p2, :cond_1

    .line 1816
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_0

    .line 1817
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1819
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v9, v6, v7

    .line 1820
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    int-to-char v8, p2

    aput-char v8, v6, v7

    .line 1863
    :goto_0
    return-void

    .line 1823
    :cond_1
    const/4 v6, -0x2

    if-eq p2, v6, :cond_4

    .line 1824
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x5

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v6, v7, :cond_2

    .line 1825
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1827
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1828
    .local v4, "ptr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 1829
    .local v0, "buf":[C
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .local v5, "ptr":I
    aput-char v9, v0, v4

    .line 1830
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    const/16 v6, 0x75

    aput-char v6, v0, v5

    .line 1832
    const/16 v6, 0xff

    if-le p1, v6, :cond_3

    .line 1833
    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1834
    .local v2, "hi":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1835
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1836
    and-int/lit16 v6, p1, 0xff

    int-to-char p1, v6

    .line 1841
    .end local v2    # "hi":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p1, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 1842
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p1, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 1843
    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0

    .line 1838
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    aput-char v8, v0, v4

    .line 1839
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v4    # "ptr":I
    aput-char v8, v0, v5

    goto :goto_1

    .line 1847
    .end local v0    # "buf":[C
    .end local v4    # "ptr":I
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v6, :cond_5

    .line 1848
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1853
    .local v1, "escape":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1854
    .local v3, "len":I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_6

    .line 1855
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1856
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v3, v6, :cond_6

    .line 1857
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1850
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    :cond_5
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1851
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    goto :goto_2

    .line 1861
    .restart local v3    # "len":I
    :cond_6
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {v1, v6, v3, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1862
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto/16 :goto_0
.end method

.method private _prependOrWriteCharacterEscape([CIICI)I
    .locals 9
    .param p1, "buffer"    # [C
    .param p2, "ptr"    # I
    .param p3, "end"    # I
    .param p4, "ch"    # C
    .param p5, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1735
    if-ltz p5, :cond_2

    .line 1736
    const/4 v6, 0x1

    if-le p2, v6, :cond_0

    if-ge p2, p3, :cond_0

    .line 1737
    add-int/lit8 p2, p2, -0x2

    .line 1738
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1739
    add-int/lit8 v6, p2, 0x1

    int-to-char v7, p5

    aput-char v7, p1, v6

    :goto_0
    move v5, p2

    .line 1805
    .end local p2    # "ptr":I
    .local v5, "ptr":I
    :goto_1
    return v5

    .line 1741
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1742
    .local v0, "ent":[C
    if-nez v0, :cond_1

    .line 1743
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1745
    :cond_1
    const/4 v6, 0x1

    int-to-char v7, p5

    aput-char v7, v0, v6

    .line 1746
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1750
    .end local v0    # "ent":[C
    :cond_2
    const/4 v6, -0x2

    if-eq p5, v6, :cond_7

    .line 1751
    const/4 v6, 0x5

    if-le p2, v6, :cond_4

    if-ge p2, p3, :cond_4

    .line 1752
    add-int/lit8 p2, p2, -0x6

    .line 1753
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    const/16 v6, 0x5c

    aput-char v6, p1, p2

    .line 1754
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    const/16 v6, 0x75

    aput-char v6, p1, v5

    .line 1756
    const/16 v6, 0xff

    if-le p4, v6, :cond_3

    .line 1757
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1758
    .local v2, "hi":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, v2, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1759
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, v2, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1760
    and-int/lit16 v6, p4, 0xff

    int-to-char p4, v6

    .line 1765
    .end local v2    # "hi":I
    :goto_2
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v7, p4, 0x4

    aget-char v6, v6, v7

    aput-char v6, p1, p2

    .line 1766
    sget-object v6, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v7, p4, 0xf

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    .line 1767
    add-int/lit8 p2, v5, -0x5

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :goto_3
    move v5, p2

    .line 1789
    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    goto :goto_1

    .line 1762
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_3
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    const/16 v6, 0x30

    aput-char v6, p1, p2

    .line 1763
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    const/16 v6, 0x30

    aput-char v6, p1, v5

    goto :goto_2

    .line 1770
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1771
    .restart local v0    # "ent":[C
    if-nez v0, :cond_5

    .line 1772
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1774
    :cond_5
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1775
    const/16 v6, 0xff

    if-le p4, v6, :cond_6

    .line 1776
    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v2, v6, 0xff

    .line 1777
    .restart local v2    # "hi":I
    and-int/lit16 v4, p4, 0xff

    .line 1778
    .local v4, "lo":I
    const/16 v6, 0xa

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1779
    const/16 v6, 0xb

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1780
    const/16 v6, 0xc

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1781
    const/16 v6, 0xd

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1782
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/16 v7, 0x8

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1784
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    :cond_6
    const/4 v6, 0x6

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p4, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1785
    const/4 v6, 0x7

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p4, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 1786
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1792
    .end local v0    # "ent":[C
    :cond_7
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v6, :cond_8

    .line 1793
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v6, p4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v6

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1798
    .local v1, "escape":Ljava/lang/String;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1799
    .local v3, "len":I
    if-lt p2, v3, :cond_9

    if-ge p2, p3, :cond_9

    .line 1800
    sub-int/2addr p2, v3

    .line 1801
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_5
    move v5, p2

    .line 1805
    .end local p2    # "ptr":I
    .restart local v5    # "ptr":I
    goto/16 :goto_1

    .line 1795
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v5    # "ptr":I
    .restart local p2    # "ptr":I
    :cond_8
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v6}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1796
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    goto :goto_4

    .line 1803
    .restart local v3    # "len":I
    :cond_9
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private _prependOrWriteCharacterEscape(CI)V
    .locals 13
    .param p1, "ch"    # C
    .param p2, "escCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x5c

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x6

    .line 1644
    if-ltz p2, :cond_2

    .line 1645
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v7, v11, :cond_0

    .line 1646
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x2

    .line 1647
    .local v5, "ptr":I
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1648
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .local v6, "ptr":I
    aput-char v12, v7, v5

    .line 1649
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    int-to-char v8, p2

    aput-char v8, v7, v6

    .line 1722
    .end local v6    # "ptr":I
    :goto_0
    return-void

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1654
    .local v0, "buf":[C
    if-nez v0, :cond_1

    .line 1655
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1657
    :cond_1
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1658
    const/4 v7, 0x1

    int-to-char v8, p2

    aput-char v8, v0, v7

    .line 1659
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v9, v11}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1662
    .end local v0    # "buf":[C
    :cond_2
    const/4 v7, -0x2

    if-eq p2, v7, :cond_7

    .line 1663
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v7, v10, :cond_4

    .line 1664
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 1665
    .restart local v0    # "buf":[C
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v7, -0x6

    .line 1666
    .restart local v5    # "ptr":I
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1667
    aput-char v12, v0, v5

    .line 1668
    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x75

    aput-char v7, v0, v5

    .line 1670
    const/16 v7, 0xff

    if-le p1, v7, :cond_3

    .line 1671
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1672
    .local v2, "hi":I
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1673
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1674
    and-int/lit16 v7, p1, 0xff

    int-to-char p1, v7

    .line 1679
    .end local v2    # "hi":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    .line 1680
    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v8, p1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v5

    goto :goto_0

    .line 1676
    :cond_3
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    .line 1677
    add-int/lit8 v5, v5, 0x1

    aput-char v8, v0, v5

    goto :goto_1

    .line 1684
    .end local v0    # "buf":[C
    .end local v5    # "ptr":I
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 1685
    .restart local v0    # "buf":[C
    if-nez v0, :cond_5

    .line 1686
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object v0

    .line 1688
    :cond_5
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1689
    const/16 v7, 0xff

    if-le p1, v7, :cond_6

    .line 1690
    shr-int/lit8 v7, p1, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 1691
    .restart local v2    # "hi":I
    and-int/lit16 v4, p1, 0xff

    .line 1692
    .local v4, "lo":I
    const/16 v7, 0xa

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v2, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1693
    const/16 v7, 0xb

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v2, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1694
    const/16 v7, 0xc

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v9, v4, 0x4

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1695
    const/16 v7, 0xd

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, v4, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1696
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    const/16 v8, 0x8

    invoke-virtual {v7, v0, v8, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1698
    .end local v2    # "hi":I
    .end local v4    # "lo":I
    :cond_6
    sget-object v7, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    shr-int/lit8 v8, p1, 0x4

    aget-char v7, v7, v8

    aput-char v7, v0, v10

    .line 1699
    const/4 v7, 0x7

    sget-object v8, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    and-int/lit8 v9, p1, 0xf

    aget-char v8, v8, v9

    aput-char v8, v0, v7

    .line 1700
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v0, v11, v10}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1706
    .end local v0    # "buf":[C
    :cond_7
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-nez v7, :cond_8

    .line 1707
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-virtual {v7, p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v7

    invoke-interface {v7}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, "escape":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1713
    .local v3, "len":I
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v7, v3, :cond_9

    .line 1714
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v5, v7, v3

    .line 1715
    .restart local v5    # "ptr":I
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1716
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v1, v9, v3, v7, v5}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1709
    .end local v1    # "escape":Ljava/lang/String;
    .end local v3    # "len":I
    .end local v5    # "ptr":I
    :cond_8
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v7}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1710
    .restart local v1    # "escape":Ljava/lang/String;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    goto :goto_2

    .line 1720
    .restart local v3    # "len":I
    :cond_9
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1721
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _readMore(Ljava/io/InputStream;[BIII)I
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "readBuffer"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .param p5, "maxRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1588
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, p3

    .line 1589
    .end local p3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_0
    if-ge v4, p4, :cond_0

    .line 1590
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v4

    aput-byte v6, p2, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, p3

    .end local p3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0

    .line 1592
    :cond_0
    const/4 p3, 0x0

    .line 1593
    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    move p4, v2

    .line 1594
    array-length v6, p2

    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1597
    :cond_1
    sub-int v5, p5, p4

    .line 1598
    .local v5, "length":I
    if-nez v5, :cond_2

    :goto_1
    move v3, p4

    .line 1607
    .end local p4    # "inputEnd":I
    .local v3, "inputEnd":I
    :goto_2
    return v3

    .line 1601
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_2
    invoke-virtual {p1, p2, p4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1602
    .local v0, "count":I
    if-gez v0, :cond_3

    move v3, p4

    .line 1603
    .end local p4    # "inputEnd":I
    .restart local v3    # "inputEnd":I
    goto :goto_2

    .line 1605
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_3
    add-int/2addr p4, v0

    .line 1606
    const/4 v6, 0x3

    if-lt p4, v6, :cond_1

    goto :goto_1
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 985
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 986
    .local v3, "textLen":I
    const/4 v1, 0x0

    .line 988
    .local v1, "offset":I
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 989
    .local v0, "max":I
    add-int v4, v1, v0

    if-le v4, v3, :cond_1

    sub-int v2, v3, v1

    .line 991
    .local v2, "segmentLen":I
    :goto_0
    add-int v4, v1, v2

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 992
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v4, :cond_2

    .line 993
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegmentCustom(I)V

    .line 999
    :goto_1
    add-int/2addr v1, v2

    .line 1000
    if-lt v1, v3, :cond_0

    .line 1001
    return-void

    .end local v2    # "segmentLen":I
    :cond_1
    move v2, v0

    .line 989
    goto :goto_0

    .line 994
    .restart local v2    # "segmentLen":I
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    if-eqz v4, :cond_3

    .line 995
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegmentASCII(II)V

    goto :goto_1

    .line 997
    :cond_3
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeSegment(I)V

    goto :goto_1
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x6c

    .line 1618
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1619
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1621
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1622
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 1623
    .local v0, "buf":[C
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 1624
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 1625
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1626
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 1627
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1628
    return-void
.end method

.method private _writeQuotedInt(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 611
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 615
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 616
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 617
    return-void
.end method

.method private _writeQuotedLong(J)V
    .locals 5
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 635
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 639
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 640
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 641
    return-void
.end method

.method private _writeQuotedRaw(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 717
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 721
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 722
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 726
    return-void
.end method

.method private _writeQuotedShort(S)V
    .locals 4
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 587
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 591
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 592
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 593
    return-void
.end method

.method private _writeSegment(I)V
    .locals 10
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1015
    .local v6, "escCodes":[I
    array-length v7, v6

    .line 1017
    .local v7, "escLen":I
    const/4 v2, 0x0

    .line 1018
    .local v2, "ptr":I
    move v9, v2

    .line 1021
    .local v9, "start":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1026
    .local v4, "c":C
    if-ge v4, v7, :cond_2

    aget v0, v6, v4

    if-eqz v0, :cond_2

    .line 1038
    :goto_1
    sub-int v8, v2, v9

    .line 1039
    .local v8, "flushLen":I
    if-lez v8, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1041
    if-lt v2, p1, :cond_3

    .line 1049
    .end local v4    # "c":C
    .end local v8    # "flushLen":I
    :cond_1
    return-void

    .line 1029
    .restart local v4    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1045
    .restart local v8    # "flushLen":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1047
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1048
    goto :goto_0
.end method

.method private _writeSegmentASCII(II)V
    .locals 10
    .param p1, "end"    # I
    .param p2, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1162
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1163
    .local v6, "escCodes":[I
    array-length v0, v6

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1165
    .local v7, "escLimit":I
    const/4 v2, 0x0

    .line 1166
    .local v2, "ptr":I
    const/4 v5, 0x0

    .line 1167
    .local v5, "escCode":I
    move v9, v2

    .line 1170
    .local v9, "start":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1175
    .local v4, "c":C
    if-ge v4, v7, :cond_2

    .line 1176
    aget v5, v6, v4

    .line 1177
    if-eqz v5, :cond_3

    .line 1188
    :goto_1
    sub-int v8, v2, v9

    .line 1189
    .local v8, "flushLen":I
    if-lez v8, :cond_4

    .line 1190
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1191
    if-lt v2, p1, :cond_4

    .line 1198
    .end local v4    # "c":C
    .end local v8    # "flushLen":I
    :cond_1
    return-void

    .line 1180
    .restart local v4    # "c":C
    :cond_2
    if-le v4, p2, :cond_3

    .line 1181
    const/4 v5, -0x1

    .line 1182
    goto :goto_1

    .line 1184
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_1

    .line 1195
    .restart local v8    # "flushLen":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1196
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v9

    .line 1197
    goto :goto_0
.end method

.method private _writeSegmentCustom(I)V
    .locals 12
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1314
    .local v7, "escCodes":[I
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const v10, 0xffff

    .line 1315
    .local v10, "maxNonEscaped":I
    :goto_0
    array-length v0, v7

    add-int/lit8 v1, v10, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1316
    .local v8, "escLimit":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1318
    .local v6, "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1319
    .local v2, "ptr":I
    const/4 v5, 0x0

    .line 1320
    .local v5, "escCode":I
    move v11, v2

    .line 1323
    .local v11, "start":I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    aget-char v4, v0, v2

    .line 1328
    .local v4, "c":C
    if-ge v4, v8, :cond_3

    .line 1329
    aget v5, v7, v4

    .line 1330
    if-eqz v5, :cond_5

    .line 1346
    :goto_2
    sub-int v9, v2, v11

    .line 1347
    .local v9, "flushLen":I
    if-lez v9, :cond_6

    .line 1348
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v0, v1, v11, v9}, Ljava/io/Writer;->write([CII)V

    .line 1349
    if-lt v2, p1, :cond_6

    .line 1356
    .end local v4    # "c":C
    .end local v9    # "flushLen":I
    :cond_1
    return-void

    .line 1314
    .end local v2    # "ptr":I
    .end local v5    # "escCode":I
    .end local v6    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v8    # "escLimit":I
    .end local v10    # "maxNonEscaped":I
    .end local v11    # "start":I
    :cond_2
    iget v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1333
    .restart local v2    # "ptr":I
    .restart local v4    # "c":C
    .restart local v5    # "escCode":I
    .restart local v6    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v8    # "escLimit":I
    .restart local v10    # "maxNonEscaped":I
    .restart local v11    # "start":I
    :cond_3
    if-le v4, v10, :cond_4

    .line 1334
    const/4 v5, -0x1

    .line 1335
    goto :goto_2

    .line 1337
    :cond_4
    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v0, :cond_5

    .line 1338
    const/4 v5, -0x2

    .line 1339
    goto :goto_2

    .line 1342
    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    goto :goto_2

    .line 1353
    .restart local v9    # "flushLen":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1354
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    move-result v11

    .line 1355
    goto :goto_1
.end method

.method private _writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 917
    .local v0, "len":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v0, v1, :cond_0

    .line 918
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeLongString(Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 924
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v1, v2, :cond_1

    .line 925
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 927
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 929
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v1, :cond_2

    .line 930
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringCustom(I)V

    goto :goto_0

    .line 931
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    if-eqz v1, :cond_3

    .line 932
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringASCII(II)V

    goto :goto_0

    .line 934
    :cond_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString2(I)V

    goto :goto_0
.end method

.method private _writeString([CII)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v6, :cond_1

    .line 1058
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringCustom([CII)V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    if-eqz v6, :cond_2

    .line 1062
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeStringASCII([CIII)V

    goto :goto_0

    .line 1070
    :cond_2
    add-int/2addr p3, p2

    .line 1071
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1072
    .local v1, "escCodes":[I
    array-length v2, v1

    .line 1073
    .local v2, "escLen":I
    :goto_1
    if-ge p2, p3, :cond_0

    .line 1074
    move v5, p2

    .line 1077
    .local v5, "start":I
    :cond_3
    aget-char v0, p1, p2

    .line 1078
    .local v0, "c":C
    if-ge v0, v2, :cond_6

    aget v6, v1, v0

    if-eqz v6, :cond_6

    move v4, p2

    .line 1087
    .end local p2    # "offset":I
    .local v4, "offset":I
    :goto_2
    sub-int v3, v4, v5

    .line 1088
    .local v3, "newAmount":I
    const/16 v6, 0x20

    if-ge v3, v6, :cond_7

    .line 1090
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_4

    .line 1091
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1093
    :cond_4
    if-lez v3, :cond_5

    .line 1094
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1102
    :cond_5
    :goto_3
    if-lt v4, p3, :cond_8

    move p2, v4

    .line 1103
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 1081
    .end local v3    # "newAmount":I
    :cond_6
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_3

    move v4, p2

    .line 1082
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .line 1098
    .restart local v3    # "newAmount":I
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1099
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1106
    :cond_8
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    aget-char v0, p1, v4

    .line 1107
    aget v6, v1, v0

    invoke-direct {p0, v0, v6}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private _writeString2(I)V
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 941
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int v1, v5, p1

    .line 942
    .local v1, "end":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 943
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 946
    .local v3, "escLen":I
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-ge v5, v1, :cond_3

    .line 950
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 951
    .local v0, "c":C
    if-ge v0, v3, :cond_2

    aget v5, v2, v0

    if-eqz v5, :cond_2

    .line 963
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v4, v5, v6

    .line 964
    .local v4, "flushLen":I
    if-lez v4, :cond_1

    .line 965
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/Writer;->write([CII)V

    .line 970
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v5, v6

    .line 971
    aget v5, v2, v0

    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 954
    .end local v4    # "flushLen":I
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v5, v1, :cond_0

    .line 973
    .end local v0    # "c":C
    :cond_3
    return-void
.end method

.method private _writeStringASCII(II)V
    .locals 9
    .param p1, "len"    # I
    .param p2, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1125
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int v1, v6, p1

    .line 1126
    .local v1, "end":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1127
    .local v3, "escCodes":[I
    array-length v6, v3

    add-int/lit8 v7, p2, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1128
    .local v4, "escLimit":I
    const/4 v2, 0x0

    .line 1131
    .local v2, "escCode":I
    :goto_0
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-ge v6, v1, :cond_4

    .line 1136
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v6, v7

    .line 1137
    .local v0, "c":C
    if-ge v0, v4, :cond_2

    .line 1138
    aget v2, v3, v0

    .line 1139
    if-eqz v2, :cond_3

    .line 1150
    :goto_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v5, v6, v7

    .line 1151
    .local v5, "flushLen":I
    if-lez v5, :cond_1

    .line 1152
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    .line 1154
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1155
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_0

    .line 1142
    .end local v5    # "flushLen":I
    :cond_2
    if-le v0, p2, :cond_3

    .line 1143
    const/4 v2, -0x1

    .line 1144
    goto :goto_1

    .line 1146
    :cond_3
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v6, v1, :cond_0

    .line 1157
    .end local v0    # "c":C
    :cond_4
    return-void
.end method

.method private _writeStringASCII([CIII)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "maxNonEscaped"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1204
    add-int/2addr p3, p2

    .line 1205
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1206
    .local v2, "escCodes":[I
    array-length v6, v2

    add-int/lit8 v7, p4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1208
    .local v3, "escLimit":I
    const/4 v1, 0x0

    .line 1210
    .local v1, "escCode":I
    :goto_0
    if-ge p2, p3, :cond_3

    .line 1211
    move v5, p2

    .line 1215
    .local v5, "start":I
    :cond_0
    aget-char v0, p1, p2

    .line 1216
    .local v0, "c":C
    if-ge v0, v3, :cond_4

    .line 1217
    aget v1, v2, v0

    .line 1218
    if-eqz v1, :cond_5

    .line 1231
    :goto_1
    sub-int v4, p2, v5

    .line 1232
    .local v4, "newAmount":I
    const/16 v6, 0x20

    if-ge v4, v6, :cond_6

    .line 1234
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v6, v7, :cond_1

    .line 1235
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1237
    :cond_1
    if-lez v4, :cond_2

    .line 1238
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1239
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1246
    :cond_2
    :goto_2
    if-lt p2, p3, :cond_7

    .line 1253
    .end local v0    # "c":C
    .end local v4    # "newAmount":I
    .end local v5    # "start":I
    :cond_3
    return-void

    .line 1221
    .restart local v0    # "c":C
    .restart local v5    # "start":I
    :cond_4
    if-le v0, p4, :cond_5

    .line 1222
    const/4 v1, -0x1

    .line 1223
    goto :goto_1

    .line 1225
    :cond_5
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_1

    .line 1242
    .restart local v4    # "newAmount":I
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1243
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, p1, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 1250
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 1251
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    goto :goto_0
.end method

.method private _writeStringCustom(I)V
    .locals 11
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1269
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int v2, v8, p1

    .line 1270
    .local v2, "end":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1271
    .local v4, "escCodes":[I
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    const v7, 0xffff

    .line 1272
    .local v7, "maxNonEscaped":I
    :goto_0
    array-length v8, v4

    add-int/lit8 v9, v7, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1273
    .local v5, "escLimit":I
    const/4 v3, 0x0

    .line 1274
    .local v3, "escCode":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1277
    .local v1, "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    :goto_1
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-ge v8, v2, :cond_6

    .line 1282
    :cond_0
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aget-char v0, v8, v9

    .line 1283
    .local v0, "c":C
    if-ge v0, v5, :cond_3

    .line 1284
    aget v3, v4, v0

    .line 1285
    if-eqz v3, :cond_5

    .line 1301
    :goto_2
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v6, v8, v9

    .line 1302
    .local v6, "flushLen":I
    if-lez v6, :cond_1

    .line 1303
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    invoke-virtual {v8, v9, v10, v6}, Ljava/io/Writer;->write([CII)V

    .line 1305
    :cond_1
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1306
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    goto :goto_1

    .line 1271
    .end local v0    # "c":C
    .end local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v3    # "escCode":I
    .end local v5    # "escLimit":I
    .end local v6    # "flushLen":I
    .end local v7    # "maxNonEscaped":I
    :cond_2
    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1288
    .restart local v0    # "c":C
    .restart local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v3    # "escCode":I
    .restart local v5    # "escLimit":I
    .restart local v7    # "maxNonEscaped":I
    :cond_3
    if-le v0, v7, :cond_4

    .line 1289
    const/4 v3, -0x1

    .line 1290
    goto :goto_2

    .line 1292
    :cond_4
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v8, :cond_5

    .line 1293
    const/4 v3, -0x2

    .line 1294
    goto :goto_2

    .line 1297
    :cond_5
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v8, v2, :cond_0

    .line 1308
    .end local v0    # "c":C
    :cond_6
    return-void
.end method

.method private _writeStringCustom([CII)V
    .locals 10
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1361
    add-int/2addr p3, p2

    .line 1362
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEscapes:[I

    .line 1363
    .local v3, "escCodes":[I
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_4

    const v5, 0xffff

    .line 1364
    .local v5, "maxNonEscaped":I
    :goto_0
    array-length v8, v3

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1365
    .local v4, "escLimit":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1367
    .local v1, "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    const/4 v2, 0x0

    .line 1369
    .local v2, "escCode":I
    :goto_1
    if-ge p2, p3, :cond_3

    .line 1370
    move v7, p2

    .line 1374
    .local v7, "start":I
    :cond_0
    aget-char v0, p1, p2

    .line 1375
    .local v0, "c":C
    if-ge v0, v4, :cond_5

    .line 1376
    aget v2, v3, v0

    .line 1377
    if-eqz v2, :cond_7

    .line 1395
    :goto_2
    sub-int v6, p2, v7

    .line 1396
    .local v6, "newAmount":I
    const/16 v8, 0x20

    if-ge v6, v8, :cond_8

    .line 1398
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v8, v9, :cond_1

    .line 1399
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1401
    :cond_1
    if-lez v6, :cond_2

    .line 1402
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1403
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1410
    :cond_2
    :goto_3
    if-lt p2, p3, :cond_9

    .line 1417
    .end local v0    # "c":C
    .end local v6    # "newAmount":I
    .end local v7    # "start":I
    :cond_3
    return-void

    .line 1363
    .end local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .end local v2    # "escCode":I
    .end local v4    # "escLimit":I
    .end local v5    # "maxNonEscaped":I
    :cond_4
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_maximumNonEscapedChar:I

    goto :goto_0

    .line 1380
    .restart local v0    # "c":C
    .restart local v1    # "customEscapes":Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .restart local v2    # "escCode":I
    .restart local v4    # "escLimit":I
    .restart local v5    # "maxNonEscaped":I
    .restart local v7    # "start":I
    :cond_5
    if-le v0, v5, :cond_6

    .line 1381
    const/4 v2, -0x1

    .line 1382
    goto :goto_2

    .line 1384
    :cond_6
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeSequence(I)Lcom/fasterxml/jackson/core/SerializableString;

    move-result-object v8

    iput-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_currentEscape:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v8, :cond_7

    .line 1385
    const/4 v2, -0x2

    .line 1386
    goto :goto_2

    .line 1389
    :cond_7
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_2

    .line 1406
    .restart local v6    # "newAmount":I
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1407
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v8, p1, v7, v6}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1414
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 1415
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    goto :goto_1
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 484
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v3, v4, v5

    .line 486
    .local v3, "room":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 487
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 488
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 489
    move v2, v3

    .line 490
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v3

    .line 492
    .local v1, "len":I
    :goto_0
    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-le v1, v4, :cond_0

    .line 493
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 494
    .local v0, "amount":I
    add-int v4, v2, v0

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 495
    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 496
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 497
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 498
    add-int/2addr v2, v0

    .line 499
    sub-int/2addr v1, v0

    .line 500
    goto :goto_0

    .line 502
    .end local v0    # "amount":I
    :cond_0
    add-int v4, v2, v1

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 503
    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 504
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 505
    return-void
.end method


# virtual methods
.method protected _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1884
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v0, v2, v3

    .line 1885
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1886
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 1887
    .local v1, "offset":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1888
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1890
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 897
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 898
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 899
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseConcatBuffer([C)V

    .line 901
    :cond_0
    return-void
.end method

.method protected _verifyPrettyValueWrite(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I

    move-result v0

    .line 803
    .local v0, "status":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 808
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 827
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_throwInternal()V

    .line 830
    :cond_1
    :goto_0
    return-void

    .line 810
    :pswitch_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 813
    :pswitch_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 816
    :pswitch_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 820
    :pswitch_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 821
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 822
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _verifyValueWrite(Ljava/lang/String;)V
    .locals 4
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_1

    .line 769
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I

    move-result v1

    .line 774
    .local v1, "status":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting field name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 777
    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 779
    :pswitch_0
    const/16 v0, 0x2c

    .line 793
    .local v0, "c":C
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_3

    .line 794
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 796
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v0, v2, v3

    .line 797
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0

    .line 782
    .end local v0    # "c":C
    :pswitch_1
    const/16 v0, 0x3a

    .line 783
    .restart local v0    # "c":C
    goto :goto_1

    .line 785
    .end local v0    # "c":C
    :pswitch_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v2, :cond_0

    .line 786
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    invoke-interface {v2}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    .locals 14
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "readBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1531
    const/4 v4, 0x0

    .line 1532
    .local v4, "inputPtr":I
    const/4 v5, 0x0

    .line 1533
    .local v5, "inputEnd":I
    const/4 v12, -0x3

    .line 1534
    .local v12, "lastFullOffset":I
    const/4 v9, 0x0

    .line 1537
    .local v9, "bytesDone":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    add-int/lit8 v13, v1, -0x6

    .line 1538
    .local v13, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v10, v1, 0x2

    .line 1542
    .local v10, "chunksBeforeLF":I
    :goto_0
    if-le v4, v12, :cond_4

    .line 1543
    move-object/from16 v0, p3

    array-length v6, v0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1544
    const/4 v4, 0x0

    .line 1545
    const/4 v1, 0x3

    if-ge v5, v1, :cond_3

    .line 1567
    if-ge v4, v5, :cond_2

    .line 1568
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v1, v13, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1571
    :cond_0
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v11, "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x10

    .line 1572
    .local v8, "b24":I
    const/4 v7, 0x1

    .line 1573
    .local v7, "amount":I
    if-ge v11, v5, :cond_1

    .line 1574
    aget-byte v1, p3, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v8, v1

    .line 1575
    const/4 v7, 0x2

    .line 1577
    :cond_1
    add-int/2addr v9, v7

    .line 1578
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v7, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    move v4, v11

    .line 1580
    .end local v7    # "amount":I
    .end local v8    # "b24":I
    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_2
    return v9

    .line 1548
    :cond_3
    add-int/lit8 v12, v5, -0x3

    .line 1550
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v1, v13, :cond_5

    .line 1551
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1554
    :cond_5
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v11    # "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x8

    .line 1555
    .restart local v8    # "b24":I
    add-int/lit8 v4, v11, 0x1

    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v1, p3, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v8, v1

    .line 1556
    shl-int/lit8 v1, v8, 0x8

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v11    # "inputPtr":I
    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    or-int v8, v1, v2

    .line 1557
    add-int/lit8 v9, v9, 0x3

    .line 1558
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1559
    add-int/lit8 v10, v10, -0x1

    if-gtz v10, :cond_6

    .line 1560
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v3, 0x5c

    aput-char v3, v1, v2

    .line 1561
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 1562
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v10, v1, 0x2

    :cond_6
    move v4, v11

    .line 1564
    .end local v11    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto/16 :goto_0
.end method

.method protected _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I
    .locals 13
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "readBuffer"    # [B
    .param p4, "bytesLeft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1471
    const/4 v4, 0x0

    .line 1472
    .local v4, "inputPtr":I
    const/4 v5, 0x0

    .line 1473
    .local v5, "inputEnd":I
    const/4 v11, -0x3

    .line 1476
    .local v11, "lastFullOffset":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    add-int/lit8 v12, v1, -0x6

    .line 1477
    .local v12, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v9, v1, 0x2

    .line 1479
    .local v9, "chunksBeforeLF":I
    :goto_0
    const/4 v1, 0x2

    move/from16 v0, p4

    if-le v0, v1, :cond_0

    .line 1480
    if-le v4, v11, :cond_4

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    .line 1481
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1482
    const/4 v4, 0x0

    .line 1483
    const/4 v1, 0x3

    if-ge v5, v1, :cond_3

    .line 1504
    :cond_0
    if-lez p4, :cond_2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p4

    .line 1505
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v5

    .line 1506
    const/4 v4, 0x0

    .line 1507
    if-lez v5, :cond_2

    .line 1508
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v1, v12, :cond_1

    .line 1509
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1511
    :cond_1
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .local v10, "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x10

    .line 1513
    .local v8, "b24":I
    if-ge v10, v5, :cond_7

    .line 1514
    aget-byte v1, p3, v10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v8, v1

    .line 1515
    const/4 v7, 0x2

    .line 1519
    .local v7, "amount":I
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v7, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1520
    sub-int p4, p4, v7

    move v4, v10

    .line 1523
    .end local v7    # "amount":I
    .end local v8    # "b24":I
    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :cond_2
    return p4

    .line 1486
    :cond_3
    add-int/lit8 v11, v5, -0x3

    .line 1488
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v1, v12, :cond_5

    .line 1489
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1491
    :cond_5
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    aget-byte v1, p3, v4

    shl-int/lit8 v8, v1, 0x8

    .line 1492
    .restart local v8    # "b24":I
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    aget-byte v1, p3, v10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v8, v1

    .line 1493
    shl-int/lit8 v1, v8, 0x8

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    or-int v8, v1, v2

    .line 1494
    add-int/lit8 p4, p4, -0x3

    .line 1495
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v8, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1496
    add-int/lit8 v9, v9, -0x1

    if-gtz v9, :cond_6

    .line 1497
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v3, 0x5c

    aput-char v3, v1, v2

    .line 1498
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 1499
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v1

    shr-int/lit8 v9, v1, 0x2

    :cond_6
    move v4, v10

    .line 1501
    .end local v10    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto/16 :goto_0

    .line 1517
    .end local v4    # "inputPtr":I
    .restart local v10    # "inputPtr":I
    :cond_7
    const/4 v7, 0x1

    .restart local v7    # "amount":I
    goto :goto_1
.end method

.method protected _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 9
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "input"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1429
    add-int/lit8 v4, p4, -0x3

    .line 1431
    .local v4, "safeInputEnd":I
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    add-int/lit8 v5, v6, -0x6

    .line 1432
    .local v5, "safeOutputEnd":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, "chunksBeforeLF":I
    move v3, p3

    .line 1435
    .end local p3    # "inputPtr":I
    .local v3, "inputPtr":I
    :goto_0
    if-gt v3, v4, :cond_2

    .line 1436
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1440
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 1441
    .local v0, "b24":I
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 1442
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 1443
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1444
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 1446
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-char v8, v6, v7

    .line 1447
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-char v8, v6, v7

    .line 1448
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    :cond_1
    move v3, p3

    .line 1450
    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1453
    .end local v0    # "b24":I
    :cond_2
    sub-int v2, p4, v3

    .line 1454
    .local v2, "inputLeft":I
    if-lez v2, :cond_5

    .line 1455
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 1456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 1458
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 1459
    .restart local v0    # "b24":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1460
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 1462
    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v6

    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 1464
    .end local v0    # "b24":I
    :goto_1
    return-void

    .end local p3    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_5
    move p3, v3

    .end local v3    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    goto :goto_1
.end method

.method protected _writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
    .locals 7
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 230
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V

    .line 265
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 238
    :cond_1
    if-eqz p2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v4, 0x2c

    aput-char v4, v2, v3

    .line 244
    :cond_2
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C

    move-result-object v1

    .line 245
    .local v1, "quoted":[C
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 246
    array-length v2, v1

    invoke-virtual {p0, v1, v5, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v2, v3

    .line 252
    array-length v0, v1

    .line 253
    .local v0, "qlen":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_5

    .line 254
    invoke-virtual {p0, v1, v5, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    .line 256
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 259
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0

    .line 261
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 263
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v2, v3

    goto :goto_0
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 197
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    .line 226
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 205
    :cond_1
    if-eqz p2, :cond_2

    .line 206
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 212
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 220
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method protected _writePPFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V
    .locals 6
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 298
    if-eqz p2, :cond_2

    .line 299
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 304
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C

    move-result-object v0

    .line 305
    .local v0, "quoted":[C
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 310
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    .line 311
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, v1, v2

    .line 318
    :goto_1
    return-void

    .line 301
    .end local v0    # "quoted":[C
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v1, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 316
    .restart local v0    # "quoted":[C
    :cond_3
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CII)V

    goto :goto_1
.end method

.method protected _writePPFieldName(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commaBefore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 274
    if-eqz p2, :cond_2

    .line 275
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 280
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 285
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 286
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 293
    :goto_1
    return-void

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 291
    :cond_3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 852
    invoke-super {p0}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->close()V

    .line 858
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    .line 862
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndArray()V

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 871
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 872
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 873
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 881
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    if-eqz v1, :cond_3

    .line 882
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 883
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 890
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_releaseBuffers()V

    .line 891
    return-void

    .line 884
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 842
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 843
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 847
    :cond_0
    return-void
.end method

.method public getOutputBuffered()I
    .locals 3

    .prologue
    .line 94
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    sub-int v0, v1, v2

    .line 95
    .local v0, "len":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 536
    const-string v3, "write a binary value"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 538
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v3, v4

    .line 542
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v1

    .line 545
    .local v1, "encodingBuffer":[B
    if-gez p3, :cond_2

    .line 546
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 555
    .local v0, "bytes":I
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 558
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 561
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v6, v3, v4

    .line 562
    return v0

    .line 548
    .end local v0    # "bytes":I
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;[BI)I

    move-result v2

    .line 549
    .local v2, "missing":I
    if-lez v2, :cond_3

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too few bytes available: missing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes (out of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :cond_3
    move v0, p3

    .restart local v0    # "bytes":I
    goto :goto_0

    .line 555
    .end local v0    # "bytes":I
    .end local v2    # "missing":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v3
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 4
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 517
    const-string v0, "write a binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 519
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 523
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    .line 525
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 529
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x65

    .line 731
    const-string v2, "write a boolean value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 732
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 735
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 736
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 737
    .local v0, "buf":[C
    if-eqz p1, :cond_1

    .line 738
    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 739
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 740
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 741
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 749
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 750
    return-void

    .line 743
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 745
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 746
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 747
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    goto :goto_0
.end method

.method public writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 161
    return-void

    .line 155
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 193
    return-void

    .line 187
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 4
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 120
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 122
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;Z)V

    .line 123
    return-void

    .line 122
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "status":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 109
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 111
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeFieldName(Ljava/lang/String;Z)V

    .line 112
    return-void

    .line 111
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    const-string v0, "write a null"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 755
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 756
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_1
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 670
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 683
    :cond_1
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 684
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 599
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedInt(I)V

    .line 608
    :goto_0
    return-void

    .line 604
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 3
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 623
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedLong(J)V

    .line 632
    :goto_0
    return-void

    .line 627
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 708
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 709
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/String;)V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    const-string v1, "write a number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 692
    if-nez p1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 702
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v1, :cond_2

    .line 695
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "raw":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 695
    .end local v0    # "raw":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 697
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 698
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 649
    if-nez p1, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 656
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(S)V
    .locals 2
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    const-string v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 575
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeQuotedShort(S)V

    .line 584
    :goto_0
    return-void

    .line 580
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 581
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char p1, v0, v1

    .line 480
    return-void
.end method

.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1
    .param p1, "text"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    .local v0, "len":I
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 417
    .local v1, "room":I
    if-nez v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 419
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 422
    :cond_0
    if-lt v1, v0, :cond_1

    .line 423
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 424
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 436
    .local v0, "room":I
    if-ge v0, p3, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 438
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 441
    :cond_0
    if-lt v0, p3, :cond_1

    .line 442
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 443
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    const/16 v1, 0x20

    if-ge p3, v1, :cond_1

    .line 460
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 461
    .local v0, "room":I
    if-le p3, v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 471
    .end local v0    # "room":I
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 470
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeRawUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportUnsupportedOperation()V

    .line 396
    return-void
.end method

.method public writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 166
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/core/PrettyPrinter;->writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 8
    .param p1, "sstr"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 365
    const-string v3, "write a string"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 366
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 369
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 371
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedChars()[C

    move-result-object v2

    .line 372
    .local v2, "text":[C
    array-length v0, v2

    .line 374
    .local v0, "len":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_3

    .line 375
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int v1, v3, v4

    .line 376
    .local v1, "room":I
    if-le v0, v1, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {v2, v6, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 386
    .end local v1    # "room":I
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 389
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v7, v3, v4

    .line 390
    return-void

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 384
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2, v6, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 329
    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 330
    if-nez p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 344
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 338
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 349
    const-string v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 350
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 354
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString([CII)V

    .line 356
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 360
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_reportUnsupportedOperation()V

    .line 402
    return-void
.end method
