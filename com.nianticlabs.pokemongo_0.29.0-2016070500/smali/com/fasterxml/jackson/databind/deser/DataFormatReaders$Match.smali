.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Match"
.end annotation


# instance fields
.field protected final _bufferedData:[B

.field protected final _bufferedLength:I

.field protected final _bufferedStart:I

.field protected final _match:Lcom/fasterxml/jackson/databind/ObjectReader;

.field protected final _matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _originalStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffered"    # [B
    .param p3, "bufferedStart"    # I
    .param p4, "bufferedLength"    # I
    .param p5, "match"    # Lcom/fasterxml/jackson/databind/ObjectReader;
    .param p6, "strength"    # Lcom/fasterxml/jackson/core/format/MatchStrength;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    .line 307
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    .line 308
    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    .line 309
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    .line 310
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 311
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 312
    return-void
.end method


# virtual methods
.method public createParserWithMatch()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    if-nez v1, :cond_0

    .line 364
    const/4 v1, 0x0

    .line 370
    :goto_0
    return-object v1

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    .line 367
    .local v0, "jf":Lcom/fasterxml/jackson/core/JsonFactory;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->getDataStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    goto :goto_0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 381
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 384
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/MergedStream;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_originalStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedData:[B

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedStart:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_bufferedLength:I

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/MergedStream;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V

    goto :goto_0
.end method

.method public getMatchStrength()Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0
.end method

.method public getMatchedFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-object v0
.end method

.method public hasMatch()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;->_match:Lcom/fasterxml/jackson/databind/ObjectReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
