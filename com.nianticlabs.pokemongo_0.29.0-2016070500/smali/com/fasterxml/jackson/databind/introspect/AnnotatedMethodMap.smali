.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
.super Ljava/lang/Object;
.source "AnnotatedMethodMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field protected _methods:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/MemberKey;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .locals 3
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public find(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v1, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_0
.end method

.method public find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 82
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    goto :goto_0
.end method
