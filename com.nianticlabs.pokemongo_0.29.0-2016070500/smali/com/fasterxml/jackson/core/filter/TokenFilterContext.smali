.class public Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "TokenFilterContext.java"


# instance fields
.field protected _child:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _currentName:Ljava/lang/String;

.field protected _filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected _needToHandleName:Z

.field protected final _parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

.field protected _startHandled:Z


# direct methods
.method protected constructor <init>(ILcom/fasterxml/jackson/core/filter/TokenFilterContext;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "parent"    # Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .param p3, "filter"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .param p4, "startHandled"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_child:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 72
    iput p1, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    .line 73
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 74
    iput-object p3, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_index:I

    .line 76
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    .line 78
    return-void
.end method

.method private _writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 215
    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    if-eqz v0, :cond_3

    .line 217
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    if-eqz v0, :cond_0

    .line 218
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    .line 219
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_3
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    .line 223
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 224
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 225
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    if-eqz v0, :cond_0

    .line 226
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    .line 227
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    if-ne v0, v3, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    goto :goto_0
.end method

.method public static createRootContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 4
    .param p0, "filter"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .prologue
    .line 100
    new-instance v0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;-><init>(ILcom/fasterxml/jackson/core/filter/TokenFilterContext;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V

    return-object v0
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x22

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->appendDesc(Ljava/lang/StringBuilder;)V

    .line 321
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 322
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :goto_1
    return-void

    .line 329
    :cond_1
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 333
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public checkValue(Lcom/fasterxml/jackson/core/filter/TokenFilter;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 3
    .param p1, "filter"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .prologue
    .line 139
    iget v1, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 147
    .end local p1    # "filter":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :goto_0
    return-object p1

    .line 143
    .restart local p1    # "filter":Lcom/fasterxml/jackson/core/filter/TokenFilter;
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_index:I

    .line 144
    .local v0, "ix":I
    iget v1, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 145
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeElement(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->includeRootValue(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;

    move-result-object p1

    goto :goto_0
.end method

.method public closeArray(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 2
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishArray()V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method public closeObject(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 2
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eq v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->filterFinishObject()V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method public createChildArrayContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 2
    .param p1, "filter"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .param p2, "writeStart"    # Z

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_child:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 105
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;-><init>(ILcom/fasterxml/jackson/core/filter/TokenFilterContext;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_child:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-object v1, v0

    .line 109
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->reset(ILcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    goto :goto_0
.end method

.method public createChildObjectContext(Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 2
    .param p1, "filter"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .param p2, "writeStart"    # Z

    .prologue
    const/4 v1, 0x2

    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_child:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 114
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    invoke-direct {v0, v1, p0, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;-><init>(ILcom/fasterxml/jackson/core/filter/TokenFilterContext;Lcom/fasterxml/jackson/core/filter/TokenFilter;Z)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_child:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-object v1, v0

    .line 118
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->reset(ILcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v1

    goto :goto_0
.end method

.method public findChildOf(Lcom/fasterxml/jackson/core/filter/TokenFilterContext;)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 3
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .prologue
    .line 300
    iget-object v2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-ne v2, p1, :cond_0

    .line 312
    .end local p0    # "this":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    :goto_0
    return-object p0

    .line 303
    .restart local p0    # "this":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 304
    .local v0, "curr":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    :goto_1
    if-eqz v0, :cond_2

    .line 305
    iget-object v1, v0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .line 306
    .local v1, "p":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    if-ne v1, p1, :cond_1

    move-object p0, v0

    .line 307
    goto :goto_0

    .line 309
    :cond_1
    move-object v0, v1

    .line 310
    goto :goto_1

    .line 312
    .end local v1    # "p":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    return-object v0
.end method

.method public isStartHandled()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    return v0
.end method

.method public nextTokenToRead()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 283
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    if-nez v0, :cond_1

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    .line 285
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    if-ne v0, v1, :cond_0

    .line 286
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 296
    :goto_0
    return-object v0

    .line 289
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 292
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    if-ne v0, v1, :cond_2

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    .line 294
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected reset(ILcom/fasterxml/jackson/core/filter/TokenFilter;Z)Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    .locals 1
    .param p1, "type"    # I
    .param p2, "filter"    # Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .param p3, "startWritten"    # Z

    .prologue
    .line 83
    iput p1, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    .line 84
    iput-object p2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_index:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    .line 87
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    .line 89
    return-object p0
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 274
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-object v0
.end method

.method public skipParentChecks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iput-object v2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    .local v0, "ctxt":Lcom/fasterxml/jackson/core/filter/TokenFilterContext;
    :goto_0
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    iput-object v2, v1, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    .line 259
    iget-object v0, v0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->appendDesc(Ljava/lang/StringBuilder;)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeImmediatePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    if-eqz v0, :cond_2

    .line 191
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    .line 196
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 198
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    if-ne v0, v2, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    goto :goto_0
.end method

.method public writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 156
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_filter:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne v0, v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_parent:Lcom/fasterxml/jackson/core/filter/TokenFilterContext;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_writePath(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 162
    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    if-eqz v0, :cond_3

    .line 164
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_needToHandleName:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_startHandled:Z

    .line 169
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 170
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 171
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/filter/TokenFilterContext;->_type:I

    if-ne v0, v2, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    goto :goto_0
.end method
