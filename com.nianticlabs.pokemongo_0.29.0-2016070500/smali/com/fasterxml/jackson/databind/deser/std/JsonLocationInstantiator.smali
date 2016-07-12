.class public Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "JsonLocationInstantiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V

    return-void
.end method

.method private static final _int(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 57
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static final _long(Ljava/lang/Object;)J
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-wide v0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    sget-object v9, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move v7, p2

    move-object v8, v3

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    return-object v0
.end method


# virtual methods
.method public canCreateFromObjectWith()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_long(Ljava/lang/Object;)J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_long(Ljava/lang/Object;)J

    move-result-wide v4

    const/4 v6, 0x3

    aget-object v6, p2, v6

    invoke-static {v6}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_int(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x4

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_int(Ljava/lang/Object;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 10
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 31
    .local v0, "intType":Lcom/fasterxml/jackson/databind/JavaType;
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 32
    .local v1, "longType":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const-string v3, "sourceRef"

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "byteOffset"

    invoke-static {v3, v1, v6}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "charOffset"

    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "lineNr"

    invoke-static {v3, v0, v8}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "columnNr"

    invoke-static {v3, v0, v9}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v9

    return-object v2
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
