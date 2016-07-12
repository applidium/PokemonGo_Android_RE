.class public Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
.source "ThrowableDeserializer.java"


# static fields
.field protected static final PROP_NAME_MESSAGE:Ljava/lang/String; = "message"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;)V
    .locals 1
    .param p1, "baseDeserializer"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_vanillaProcessing:Z

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
    .param p2, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    .line 40
    return-void
.end method


# virtual methods
.method public deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 13
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-eqz v10, :cond_1

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v9

    .line 158
    :cond_0
    :goto_0
    return-object v9

    .line 68
    :cond_1
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v10, :cond_2

    .line 69
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v11, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, p2, v11}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 72
    :cond_2
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not instantiate abstract type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (need to add/enable type information?)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v10

    throw v10

    .line 76
    :cond_3
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v1

    .line 77
    .local v1, "hasStringCreator":Z
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    .line 79
    .local v0, "hasDefaultCtor":Z
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 80
    new-instance v10, Lcom/fasterxml/jackson/databind/JsonMappingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not deserialize Throwable of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 84
    :cond_4
    const/4 v9, 0x0

    .line 85
    .local v9, "throwable":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 86
    .local v4, "pending":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 88
    .end local v9    # "throwable":Ljava/lang/Object;
    .local v5, "pendingIx":I
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v10, v11, :cond_d

    .line 89
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "propName":Ljava/lang/String;
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v10, v8}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 91
    .local v7, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 93
    if-eqz v7, :cond_8

    .line 94
    if-eqz v9, :cond_6

    .line 95
    invoke-virtual {v7, p1, p2, v9}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 88
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 99
    :cond_6
    if-nez v4, :cond_7

    .line 100
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->size()I

    move-result v3

    .line 101
    .local v3, "len":I
    add-int v10, v3, v3

    new-array v4, v10, [Ljava/lang/Object;

    .line 103
    .end local v3    # "len":I
    :cond_7
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pendingIx":I
    .local v6, "pendingIx":I
    aput-object v7, v4, v5

    .line 104
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pendingIx":I
    .restart local v5    # "pendingIx":I
    invoke-virtual {v7, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v6

    goto :goto_2

    .line 109
    :cond_8
    const-string v10, "message"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 110
    if-eqz v1, :cond_a

    .line 111
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, p2, v11}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 113
    .restart local v9    # "throwable":Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v5

    .restart local v3    # "len":I
    :goto_3
    if-ge v2, v3, :cond_9

    .line 115
    aget-object v7, v4, v2

    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    check-cast v7, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 116
    .restart local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v10, v2, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v7, v9, v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 118
    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    .line 126
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v9    # "throwable":Ljava/lang/Object;
    :cond_a
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 127
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 130
    :cond_b
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v10, :cond_c

    .line 131
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v10, p1, p2, v9, v8}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 135
    :cond_c
    invoke-virtual {p0, p1, p2, v9, v8}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v8    # "propName":Ljava/lang/String;
    :cond_d
    if-nez v9, :cond_0

    .line 145
    if-eqz v1, :cond_e

    .line 146
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    const/4 v11, 0x0

    invoke-virtual {v10, p2, v11}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 151
    .restart local v9    # "throwable":Ljava/lang/Object;
    :goto_4
    if-eqz v4, :cond_0

    .line 152
    const/4 v2, 0x0

    .restart local v2    # "i":I
    move v3, v5

    .restart local v3    # "len":I
    :goto_5
    if-ge v2, v3, :cond_0

    .line 153
    aget-object v7, v4, v2

    check-cast v7, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 154
    .restart local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v10, v2, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v7, v9, v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 148
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v9    # "throwable":Ljava/lang/Object;
    :cond_e
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v10, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "throwable":Ljava/lang/Object;
    goto :goto_4
.end method

.method public unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    if-eq v0, v1, :cond_0

    .line 51
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    move-object p0, v0

    goto :goto_0
.end method
