.class public interface abstract Lcom/fasterxml/jackson/core/TreeNode;
.super Ljava/lang/Object;
.source "TreeNode.java"


# virtual methods
.method public abstract asToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/core/TreeNode;
.end method

.method public abstract at(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract fieldNames()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(I)Lcom/fasterxml/jackson/core/TreeNode;
.end method

.method public abstract get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
.end method

.method public abstract isArray()Z
.end method

.method public abstract isContainerNode()Z
.end method

.method public abstract isMissingNode()Z
.end method

.method public abstract isObject()Z
.end method

.method public abstract isValueNode()Z
.end method

.method public abstract numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.end method

.method public abstract path(I)Lcom/fasterxml/jackson/core/TreeNode;
.end method

.method public abstract path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
.end method

.method public abstract size()I
.end method

.method public abstract traverse()Lcom/fasterxml/jackson/core/JsonParser;
.end method

.method public abstract traverse(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonParser;
.end method
