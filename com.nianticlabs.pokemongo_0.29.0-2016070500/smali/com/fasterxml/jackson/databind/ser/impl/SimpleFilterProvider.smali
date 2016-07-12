.class public Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
.super Lcom/fasterxml/jackson/databind/ser/FilterProvider;
.source "SimpleFilterProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _cfgFailOnUnknownId:Z

.field protected _defaultFilter:Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

.field protected final _filtersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/ser/PropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;-><init>(Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/FilterProvider;-><init>()V

    .line 39
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    .line 61
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "ob":Ljava/lang/Object;
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    if-nez v2, :cond_0

    .line 63
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_convert(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    .line 68
    .end local v1    # "ob":Ljava/lang/Object;
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    goto :goto_0
.end method

.method private static final _convert(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .locals 1
    .param p0, "f"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->from(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v0

    return-object v0
.end method

.method private static final _convert(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/ser/PropertyFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "filters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "f":Ljava/lang/Object;
    instance-of v4, v1, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    if-eqz v4, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .end local v1    # "f":Ljava/lang/Object;
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .restart local v1    # "f":Ljava/lang/Object;
    :cond_0
    instance-of v4, v1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    if-eqz v4, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    .end local v1    # "f":Ljava/lang/Object;
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_convert(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .restart local v1    # "f":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized filter type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "f":Ljava/lang/Object;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_convert(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object p0
.end method

.method public addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-object p0
.end method

.method public addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object p0
.end method

.method public findFilter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    .locals 2
    .param p1, "filterId"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Access to deprecated filters not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findPropertyFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .locals 4
    .param p1, "filterId"    # Ljava/lang/Object;
    .param p2, "valueToFilter"    # Ljava/lang/Object;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .line 178
    .local v0, "f":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .line 180
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No filter configured with id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    return-object v0
.end method

.method public getDefaultFilter()Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    return-object v0
.end method

.method public removeFilter(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    return-object v0
.end method

.method public setDefaultFilter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->from(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .line 104
    return-object p0
.end method

.method public setDefaultFilter(Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .line 110
    return-object p0
.end method

.method public setDefaultFilter(Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    .line 119
    return-object p0
.end method

.method public setFailOnUnknownId(Z)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    .line 128
    return-object p0
.end method

.method public willFailOnUnknownId()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    return v0
.end method
