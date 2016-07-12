.class public Lcom/fasterxml/jackson/databind/MappingJsonFactory;
.super Lcom/fasterxml/jackson/core/JsonFactory;
.source "MappingJsonFactory.java"


# static fields
.field private static final serialVersionUID:J = -0x5d97de9aee334979L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/core/JsonFactory;
    .param p2, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 39
    if-nez p2, :cond_0

    .line 40
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->_checkInvalidCopy(Ljava/lang/Class;)V

    .line 57
    new-instance v0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method

.method public bridge synthetic getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->getCodec()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public final getCodec()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "JSON"

    return-object v0
.end method

.method public hasFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 2
    .param p1, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;->hasJSONFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
