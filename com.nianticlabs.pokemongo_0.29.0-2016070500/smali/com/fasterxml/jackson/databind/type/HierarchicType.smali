.class public Lcom/fasterxml/jackson/databind/type/HierarchicType;
.super Ljava/lang/Object;
.source "HierarchicType.java"


# instance fields
.field protected final _actualType:Ljava/lang/reflect/Type;

.field protected final _genericType:Ljava/lang/reflect/ParameterizedType;

.field protected final _rawClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

.field protected _superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    .line 31
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 40
    :goto_0
    return-void

    .line 34
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 35
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 36
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    goto :goto_0

    .line 38
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be used to construct HierarchicType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/HierarchicType;Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    .locals 0
    .param p1, "actualType"    # Ljava/lang/reflect/Type;
    .param p3, "genericType"    # Ljava/lang/reflect/ParameterizedType;
    .param p4, "superType"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .param p5, "subType"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    .line 46
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    .line 47
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 48
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 49
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 50
    return-void
.end method


# virtual methods
.method public final asGeneric()Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    return-object v0
.end method

.method public deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    if-nez v1, :cond_1

    move-object v4, v5

    .line 59
    .local v4, "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/HierarchicType;Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 60
    .local v0, "result":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 63
    :cond_0
    return-object v0

    .line 58
    .end local v0    # "result":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .end local v4    # "sup":Lcom/fasterxml/jackson/databind/type/HierarchicType;
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v4

    goto :goto_0
.end method

.method public final getRawClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSubType()Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-object v0
.end method

.method public final getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-object v0
.end method

.method public final isGeneric()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    .locals 0
    .param p1, "sub"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-void
.end method

.method public setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    .locals 0
    .param p1, "sup"    # Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
