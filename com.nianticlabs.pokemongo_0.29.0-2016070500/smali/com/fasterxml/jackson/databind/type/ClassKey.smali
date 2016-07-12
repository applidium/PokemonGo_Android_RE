.class public final Lcom/fasterxml/jackson/databind/type/ClassKey;
.super Ljava/lang/Object;
.source "ClassKey.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fasterxml/jackson/databind/type/ClassKey;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private _className:Ljava/lang/String;

.field private _hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    .line 38
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fasterxml/jackson/databind/type/ClassKey;)I
    .locals 2
    .param p1, "other"    # Lcom/fasterxml/jackson/databind/type/ClassKey;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;->compareTo(Lcom/fasterxml/jackson/databind/type/ClassKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    .line 90
    .local v0, "other":Lcom/fasterxml/jackson/databind/type/ClassKey;
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    return v0
.end method

.method public reset(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    return-object v0
.end method
