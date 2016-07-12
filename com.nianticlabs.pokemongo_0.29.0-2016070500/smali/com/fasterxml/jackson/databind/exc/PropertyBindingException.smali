.class public abstract Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "PropertyBindingException.java"


# static fields
.field private static final MAX_DESC_LENGTH:I = 0x3e8


# instance fields
.field protected transient _propertiesAsString:Ljava/lang/String;

.field protected final _propertyIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _propertyName:Ljava/lang/String;

.field protected final _referringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonLocation;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "referringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "propertyIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 50
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_referringClass:Ljava/lang/Class;

    .line 51
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyName:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyIds:Ljava/util/Collection;

    .line 53
    return-void
.end method


# virtual methods
.method public getKnownPropertyIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyIds:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyIds:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageSuffix()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x22

    .line 70
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertiesAsString:Ljava/lang/String;

    .line 71
    .local v3, "suffix":Ljava/lang/String;
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyIds:Ljava/util/Collection;

    if-eqz v4, :cond_1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyIds:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    .line 74
    .local v1, "len":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 75
    const-string v4, " (one known property: \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyIds:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    :goto_0
    const-string v4, "])"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertiesAsString:Ljava/lang/String;

    .line 98
    .end local v1    # "len":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v3

    .line 79
    .restart local v1    # "len":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " known properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyIds:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 81
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_4

    .line 87
    const-string v4, " [truncated]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getReferringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;->_referringClass:Ljava/lang/Class;

    return-object v0
.end method
