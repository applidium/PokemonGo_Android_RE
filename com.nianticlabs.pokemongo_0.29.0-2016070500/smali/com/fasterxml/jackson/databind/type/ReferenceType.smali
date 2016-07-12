.class public Lcom/fasterxml/jackson/databind/type/ReferenceType;
.super Lcom/fasterxml/jackson/databind/type/SimpleType;
.source "ReferenceType.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _referencedType:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 6
    .param p2, "refType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueHandler"    # Ljava/lang/Object;
    .param p4, "typeHandler"    # Ljava/lang/Object;
    .param p5, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 24
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 25
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .locals 6
    .param p1, "refType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "valueHandler"    # Ljava/lang/Object;
    .param p3, "typeHandler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_asStatic:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic containedType(I)Lcom/fasterxml/jackson/core/type/ResolvedType;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 131
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containedTypeCount()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 136
    if-nez p1, :cond_0

    const-string v0, "T"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 182
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 186
    check-cast v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    .line 188
    .local v0, "other":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 191
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 154
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 156
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    return-object p1
.end method

.method public getParameterSource()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getReferencedType()Lcom/fasterxml/jackson/core/type/ResolvedType;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public isReferenceType()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[reference type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->buildCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 48
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 65
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .locals 6

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_asStatic:Z

    if-eqz v0, :cond_0

    .line 74
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_typeHandler:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_typeHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 39
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_asStatic:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .locals 6
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 57
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/ReferenceType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_asStatic:Z

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/ReferenceType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method
