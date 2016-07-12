.class public Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "OptionalHandlerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CLASS_NAME_DOM_DOCUMENT:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final CLASS_NAME_DOM_NODE:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final DESERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

.field private static final DESERIALIZER_FOR_DOM_DOCUMENT:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

.field private static final DESERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

.field private static final PACKAGE_PREFIX_JAVAX_XML:Ljava/lang/String; = "javax.xml."

.field private static final SERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

.field private static final SERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMSerializer"

.field public static final instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .param p2, "classNameToImplement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 107
    move-object v0, p1

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    :goto_1
    return v1

    .line 112
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .param p2, "interfaceToImplement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 122
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 123
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v5

    .line 122
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 129
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 156
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 157
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return v5

    .line 156
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v2, v0, v1

    .line 163
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    :cond_0
    :goto_1
    return v2

    .line 139
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_2
    move-object v0, p1

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v0, :cond_3

    .line 146
    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 150
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 6
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 69
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "className":Ljava/lang/String;
    const-string v5, "javax.xml."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "javax.xml."

    invoke-direct {p0, v3, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    :cond_0
    const-string v1, "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

    .line 82
    .local v1, "factoryName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    .local v2, "ob":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 86
    .end local v1    # "factoryName":Ljava/lang/String;
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v4

    .line 75
    :cond_2
    const-string v5, "org.w3c.dom.Node"

    invoke-direct {p0, v3, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    const-string v4, "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_0

    .line 77
    :cond_3
    const-string v5, "org.w3c.dom.Node"

    invoke-direct {p0, v3, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    const-string v4, "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_0

    .line 86
    .restart local v1    # "factoryName":Ljava/lang/String;
    .restart local v2    # "ob":Ljava/lang/Object;
    :cond_4
    check-cast v2, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .end local v2    # "ob":Ljava/lang/Object;
    invoke-interface {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    goto :goto_0
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 45
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "className":Ljava/lang/String;
    const-string v5, "org.w3c.dom.Node"

    invoke-direct {p0, v3, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    const-string v4, "com.fasterxml.jackson.databind.ext.DOMSerializer"

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 61
    :cond_0
    :goto_0
    return-object v4

    .line 51
    :cond_1
    const-string v5, "javax.xml."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "javax.xml."

    invoke-direct {p0, v3, v5}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    :cond_2
    const-string v1, "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

    .line 57
    .local v1, "factoryName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "ob":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 61
    check-cast v2, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .end local v2    # "ob":Ljava/lang/Object;
    invoke-interface {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    goto :goto_0
.end method
