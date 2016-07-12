.class public Lcom/fasterxml/jackson/databind/deser/UnresolvedId;
.super Ljava/lang/Object;
.source "UnresolvedId.java"


# instance fields
.field private final _id:Ljava/lang/Object;

.field private final _location:Lcom/fasterxml/jackson/core/JsonLocation;

.field private final _type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p3, "where"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/core/JsonLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_id:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_type:Ljava/lang/Class;

    .line 18
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 19
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_id:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_type:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    const-string v1, "Object id [%s] (for %s) at %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_id:Ljava/lang/Object;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_type:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/UnresolvedId;->_type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
