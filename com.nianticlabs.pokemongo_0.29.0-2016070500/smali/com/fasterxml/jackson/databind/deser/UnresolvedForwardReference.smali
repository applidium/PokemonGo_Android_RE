.class public final Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "UnresolvedForwardReference.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _roid:Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

.field private _unresolvedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/UnresolvedId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_unresolvedIds:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p3, "roid"    # Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 25
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_roid:Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .line 26
    return-void
.end method


# virtual methods
.method public addUnresolvedId(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .param p3, "where"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/core/JsonLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_unresolvedIds:Ljava/util/List;

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;

    invoke-direct {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_unresolvedIds:Ljava/util/List;

    if-nez v4, :cond_0

    .line 72
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 62
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_unresolvedIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/UnresolvedId;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;

    .line 66
    .local v3, "unresolvedId":Lcom/fasterxml/jackson/databind/deser/UnresolvedId;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    .end local v3    # "unresolvedId":Lcom/fasterxml/jackson/databind/deser/UnresolvedId;
    :cond_2
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRoid()Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_roid:Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    return-object v0
.end method

.method public getUnresolvedId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_roid:Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->getKey()Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object v0

    iget-object v0, v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnresolvedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/UnresolvedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->_unresolvedIds:Ljava/util/List;

    return-object v0
.end method
