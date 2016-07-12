.class public Lcom/fasterxml/jackson/databind/type/TypeParser;
.super Ljava/lang/Object;
.source "TypeParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 22
    return-void
.end method


# virtual methods
.method protected _problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "tokens"    # Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->getAllInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (remaining: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->getRemainingInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "tokens"    # Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 87
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not locate class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .param p1, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "tokens":Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 38
    .local v1, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "Unexpected tokens after complete type"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 41
    :cond_0
    return-object v1
.end method

.method protected parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "tokens"    # Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "Unexpected end-of-string"

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->findClass(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .local v0, "base":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "token":Ljava/lang/String;
    const-string v2, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 60
    .end local v1    # "token":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 58
    .restart local v1    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->pushBack(Ljava/lang/String;)V

    .line 60
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_0
.end method

.method protected parseTypes(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Ljava/util/List;
    .locals 4
    .param p1, "tokens"    # Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/JavaType;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parseType(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    :cond_1
    const-string v2, "Unexpected end-of-string"

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "token":Ljava/lang/String;
    const-string v2, ">"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 72
    :cond_3
    const-string v2, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \',\' or \'>\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeParser;->_problem(Lcom/fasterxml/jackson/databind/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public withFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/type/TypeParser;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeParser;->_factory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/TypeParser;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/TypeParser;
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/type/TypeParser;

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/TypeParser;
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    goto :goto_0
.end method
