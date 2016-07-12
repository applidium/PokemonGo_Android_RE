.class public Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.super Ljava/lang/Object;
.source "ObjectIdReader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _idType:Lcom/fasterxml/jackson/databind/JavaType;

.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;"
        }
    .end annotation
.end field

.field public final idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field public final propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

.field public final resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 7
    .param p1, "t"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p5, "idProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    .local p3, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local p4, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    new-instance v6, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    invoke-direct {v6}, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V
    .locals 0
    .param p1, "t"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p5, "idProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p6, "resolver"    # Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local p4, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_idType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 51
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 52
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 53
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 54
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 55
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 56
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
    .locals 6
    .param p0, "idType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p1, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "idProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    .local p2, "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local p3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    new-instance v5, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    invoke-direct {v5}, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v0

    return-object v0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
    .locals 7
    .param p0, "idType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p1, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "idProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p5, "resolver"    # Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local p3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V

    return-object v0
.end method


# virtual methods
.method public getDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-object v0
.end method

.method public getIdType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_idType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public isValidReferencePropertyName(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->isValidReferencePropertyName(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public maySerializeAsObject()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->maySerializeAsObject()Z

    move-result v0

    return v0
.end method

.method public readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
