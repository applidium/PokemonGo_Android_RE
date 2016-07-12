.class public Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.super Ljava/lang/Object;
.source "ObjectIdInfo.java"


# instance fields
.field protected final _alwaysAsId:Z

.field protected final _generator:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final _propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final _resolver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ">;"
        }
    .end annotation
.end field

.field protected final _scope:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    .local p2, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "gen":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 6
    .param p1, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "gen":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;>;"
    .local p4, "resolver":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdResolver;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Z)V
    .locals 6
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "alwaysAsId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "gen":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;>;"
    const-class v5, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V
    .locals 0
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "alwaysAsId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;Z",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "gen":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;>;"
    .local p5, "resolver":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdResolver;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 50
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    .line 51
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    .line 52
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_alwaysAsId:Z

    .line 53
    if-nez p5, :cond_0

    .line 54
    const-class p5, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    .line 56
    :cond_0
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_resolver:Ljava/lang/Class;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    .local p2, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "gen":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public getAlwaysAsId()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_alwaysAsId:Z

    return v0
.end method

.method public getGeneratorType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    return-object v0
.end method

.method public getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public getResolverType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_resolver:Ljava/lang/Class;

    return-object v0
.end method

.method public getScope()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectIdInfo: propName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", generatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alwaysAsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_alwaysAsId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_alwaysAsId:Z

    if-ne v0, p1, :cond_0

    .line 63
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_scope:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_generator:Ljava/lang/Class;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->_resolver:Ljava/lang/Class;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    move-object p0, v0

    goto :goto_0
.end method
