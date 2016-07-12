.class public final Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
.super Ljava/lang/Object;
.source "ObjectIdWriter.java"


# instance fields
.field public final alwaysAsId:Z

.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;"
        }
    .end annotation
.end field

.field public final idType:Lcom/fasterxml/jackson/databind/JavaType;

.field public final propertyName:Lcom/fasterxml/jackson/core/SerializableString;

.field public final serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
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
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/SerializableString;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V
    .locals 0
    .param p1, "t"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "propName"    # Lcom/fasterxml/jackson/core/SerializableString;
    .param p5, "alwaysAsId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/core/SerializableString;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local p4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 54
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/fasterxml/jackson/core/SerializableString;

    .line 55
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 56
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 57
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    .line 58
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 2
    .param p0, "idType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p1, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p3, "alwaysAsId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;Z)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 71
    .local v0, "simpleName":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "simpleName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 6
    .param p0, "idType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p1, "propName"    # Ljava/lang/String;
    .param p3, "alwaysAsId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;Z)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    const/4 v4, 0x0

    .line 78
    if-nez p1, :cond_0

    move-object v2, v4

    .line 79
    .local v2, "serName":Lcom/fasterxml/jackson/core/SerializableString;
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/SerializableString;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V

    return-object v0

    .line 78
    .end local v2    # "serName":Lcom/fasterxml/jackson/core/SerializableString;
    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v2, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 6
    .param p1, "newState"    # Z

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-ne p1, v0, :cond_0

    .line 93
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/fasterxml/jackson/core/SerializableString;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/SerializableString;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/fasterxml/jackson/core/SerializableString;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/SerializableString;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V

    return-object v0
.end method
