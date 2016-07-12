.class public Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;
.super Lcom/fasterxml/jackson/core/filter/TokenFilter;
.source "JsonPointerBasedFilter.java"


# instance fields
.field protected final _pathToMatch:Lcom/fasterxml/jackson/core/JsonPointer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 0
    .param p1, "match"    # Lcom/fasterxml/jackson/core/JsonPointer;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;->_pathToMatch:Lcom/fasterxml/jackson/core/JsonPointer;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ptrExpr"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->compile(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;-><init>(Lcom/fasterxml/jackson/core/JsonPointer;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected _includeScalar()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;->_pathToMatch:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result v0

    return v0
.end method

.method public filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public includeElement(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 27
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;->_pathToMatch:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->matchElement(I)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    .line 28
    .local v0, "next":Lcom/fasterxml/jackson/core/JsonPointer;
    if-nez v0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;-><init>(Lcom/fasterxml/jackson/core/JsonPointer;)V

    goto :goto_0
.end method

.method public includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;->_pathToMatch:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->matchProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    .line 40
    .local v0, "next":Lcom/fasterxml/jackson/core/JsonPointer;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;-><init>(Lcom/fasterxml/jackson/core/JsonPointer;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JsonPointerFilter at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/filter/JsonPointerBasedFilter;->_pathToMatch:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
