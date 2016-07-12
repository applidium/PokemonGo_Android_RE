.class public final Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;
.super Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.source "ObjectIdReferenceProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyReferring"
.end annotation


# instance fields
.field private final _parent:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

.field public final _pojo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parent"    # Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;
    .param p2, "ref"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .param p4, "ob"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;",
            "Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    .line 104
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

    .line 105
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;->_pojo:Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public handleResolvedForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;->hasId(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to resolve a forward reference with id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] that wasn\'t previously seen as unresolved."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty$PropertyReferring;->_pojo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    return-void
.end method
