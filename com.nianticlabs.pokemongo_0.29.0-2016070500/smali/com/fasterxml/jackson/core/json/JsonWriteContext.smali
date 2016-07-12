.class public Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "JsonWriteContext.java"


# static fields
.field public static final STATUS_EXPECT_NAME:I = 0x5

.field public static final STATUS_EXPECT_VALUE:I = 0x4

.field public static final STATUS_OK_AFTER_COLON:I = 0x2

.field public static final STATUS_OK_AFTER_COMMA:I = 0x1

.field public static final STATUS_OK_AFTER_SPACE:I = 0x3

.field public static final STATUS_OK_AS_IS:I


# instance fields
.field protected _child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

.field protected _currentName:Ljava/lang/String;

.field protected _currentValue:Ljava/lang/Object;

.field protected _dups:Lcom/fasterxml/jackson/core/json/DupDetector;

.field protected _gotName:Z

.field protected final _parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;


# direct methods
.method protected constructor <init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "parent"    # Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .param p3, "dups"    # Lcom/fasterxml/jackson/core/json/DupDetector;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 71
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 72
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 73
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 75
    return-void
.end method

.method private final _checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
    .locals 3
    .param p1, "dd"    # Lcom/fasterxml/jackson/core/json/DupDetector;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/DupDetector;->isDup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    return-void
.end method

.method public static createRootContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public static createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 3
    .param p0, "dd"    # Lcom/fasterxml/jackson/core/json/DupDetector;

    .prologue
    .line 115
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V

    return-object v0
.end method


# virtual methods
.method protected appendDesc(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x22

    .line 189
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 190
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :goto_1
    return-void

    .line 197
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 201
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 120
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v2, p0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-object v1, v0

    .line 124
    :goto_1
    return-object v1

    .line 121
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v1

    goto :goto_0

    .line 124
    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    :cond_1
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v1

    goto :goto_1
.end method

.method public createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 129
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v2, p0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-object v1, v0

    .line 133
    :goto_1
    return-object v1

    .line 130
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v1

    goto :goto_0

    .line 133
    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    :cond_1
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v1

    goto :goto_1
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getDupDetector()Lcom/fasterxml/jackson/core/json/DupDetector;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0
.end method

.method protected reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 80
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 82
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/DupDetector;->reset()V

    .line 84
    :cond_0
    return-object p0
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->appendDesc(Ljava/lang/StringBuilder;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDupDetector(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 0
    .param p1, "dups"    # Lcom/fasterxml/jackson/core/json/DupDetector;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    .line 89
    return-object p0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    if-eqz v1, :cond_1

    .line 150
    const/4 v0, 0x4

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 153
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V

    .line 155
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeValue()I
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    iget v4, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    if-ne v4, v3, :cond_2

    .line 165
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    if-nez v2, :cond_1

    .line 166
    const/4 v1, 0x5

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 169
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    move v1, v3

    .line 170
    goto :goto_0

    .line 174
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    if-ne v3, v2, :cond_3

    .line 175
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 176
    .local v0, "ix":I
    iget v3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 177
    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 182
    .end local v0    # "ix":I
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 183
    iget v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0
.end method
