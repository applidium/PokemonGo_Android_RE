.class public Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.super Ljava/lang/Object;
.source "DeserializerFactoryConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

.field protected static final NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

.field protected static final NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

.field protected static final NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

.field protected final _additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

.field protected final _additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

.field protected final _valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/Deserializers;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 18
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 19
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 20
    new-array v0, v2, [Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    .line 72
    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
    .locals 0
    .param p1, "allAdditionalDeserializers"    # [Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .param p2, "allAdditionalKeyDeserializers"    # [Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    .param p3, "modifiers"    # [Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    .param p4, "atr"    # [Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    .param p5, "vi"    # [Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .end local p1    # "allAdditionalDeserializers":[Lcom/fasterxml/jackson/databind/deser/Deserializers;
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 86
    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->DEFAULT_KEY_DESERIALIZERS:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .end local p2    # "allAdditionalKeyDeserializers":[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 88
    if-nez p3, :cond_2

    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .end local p3    # "modifiers":[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 89
    if-nez p4, :cond_3

    sget-object p4, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .end local p4    # "atr":[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    :cond_3
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 90
    if-nez p5, :cond_4

    sget-object p5, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->NO_VALUE_INSTANTIATORS:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .end local p5    # "vi":[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    :cond_4
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 91
    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/AbstractTypeResolver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/Deserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializerModifiers()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeserializers()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyDeserializers()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValueInstantiators()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public valueInstantiators()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6
    .param p1, "resolver"    # Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 154
    .local v4, "all":[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null Deserializers"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 105
    .local v1, "all":[Lcom/fasterxml/jackson/databind/deser/Deserializers;
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null KeyDeserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 121
    .local v2, "all":[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null modifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 137
    .local v3, "all":[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    return-object v0
.end method

.method public withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6
    .param p1, "instantiators"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_valueInstantiators:[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 174
    .local v5, "all":[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalDeserializers:[Lcom/fasterxml/jackson/databind/deser/Deserializers;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_additionalKeyDeserializers:[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->_abstractTypeResolvers:[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/Deserializers;[Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;[Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;[Lcom/fasterxml/jackson/databind/AbstractTypeResolver;[Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    return-object v0
.end method
