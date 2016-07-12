.class final Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
.super Ljava/lang/Object;
.source "PrimitiveArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final _data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final _dataLength:I

.field _next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "dataLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;

    .line 160
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I

    .line 161
    return-void
.end method


# virtual methods
.method public copyData(Ljava/lang/Object;I)I
    .locals 3
    .param p2, "ptr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    .local p1, "dst":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I

    add-int/2addr p2, v0

    .line 169
    return p2
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;

    return-object v0
.end method

.method public linkNext(Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    .local p1, "next":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    .line 180
    return-void
.end method

.method public next()Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    return-object v0
.end method
