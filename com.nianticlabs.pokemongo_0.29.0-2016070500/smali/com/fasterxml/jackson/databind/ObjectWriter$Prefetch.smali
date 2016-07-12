.class public final Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prefetch"
.end annotation


# static fields
.field public static final empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final rootType:Lcom/fasterxml/jackson/databind/JavaType;

.field private final typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

.field private final valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1297
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {v0, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .param p1, "rootT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1322
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 1324
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 1325
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 1326
    return-void
.end method


# virtual methods
.method public forRootType(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    .locals 7
    .param p1, "parent"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p2, "newType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1331
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1333
    .local v0, "noType":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1334
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-nez v3, :cond_3

    .line 1361
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    :cond_1
    :goto_1
    return-object p0

    .line 1331
    .end local v0    # "noType":Z
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1337
    .restart local v0    # "noType":Z
    :cond_3
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-direct {v3, v6, v6, v4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    move-object p0, v3

    goto :goto_1

    .line 1339
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1342
    sget-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1343
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    .line 1349
    .local v1, "prov":Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 1351
    .local v2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    if-eqz v3, :cond_5

    .line 1352
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    const/4 v4, 0x0

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    .end local v2    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;->typeSerializer()Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v5

    invoke-direct {v3, p2, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    move-object p0, v3

    goto :goto_1

    .line 1355
    .restart local v2    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_5
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v2, v4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto :goto_1

    .line 1356
    .end local v2    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 1361
    .end local v1    # "prov":Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    :cond_6
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-direct {v3, v6, v6, v4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    move-object p0, v3

    goto :goto_1
.end method

.method public final getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    return-object v0
.end method

.method public final getValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public hasSerializer()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V
    .locals 6
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "prov"    # Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializePolymorphic(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 1388
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_0

    .line 1387
    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0
.end method
