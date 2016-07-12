.class public final Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.super Ljava/lang/Object;
.source "SerializerFactoryConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

.field protected static final NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

.field protected final _additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    new-array v0, v1, [Lcom/fasterxml/jackson/databind/ser/Serializers;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 21
    new-array v0, v1, [Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V

    .line 43
    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
    .locals 0
    .param p1, "allAdditionalSerializers"    # [Lcom/fasterxml/jackson/databind/ser/Serializers;
    .param p2, "allAdditionalKeySerializers"    # [Lcom/fasterxml/jackson/databind/ser/Serializers;
    .param p3, "modifiers"    # [Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    .end local p1    # "allAdditionalSerializers":[Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 51
    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    .end local p2    # "allAdditionalKeySerializers":[Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 53
    if-nez p3, :cond_2

    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_MODIFIERS:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .end local p3    # "modifiers":[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 54
    return-void
.end method


# virtual methods
.method public hasKeySerializers()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerializerModifiers()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerializers()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySerializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public serializerModifiers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public serializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 4
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/ser/Serializers;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null Serializers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 71
    .local v0, "all":[Lcom/fasterxml/jackson/databind/ser/Serializers;
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    invoke-direct {v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V

    return-object v1
.end method

.method public withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 4
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/ser/Serializers;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null Serializers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 62
    .local v0, "all":[Lcom/fasterxml/jackson/databind/ser/Serializers;
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V

    return-object v1
.end method

.method public withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 4
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not pass null modifier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_modifiers:[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 80
    .local v0, "modifiers":[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalSerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->_additionalKeySerializers:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/Serializers;[Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V

    return-object v1
.end method
