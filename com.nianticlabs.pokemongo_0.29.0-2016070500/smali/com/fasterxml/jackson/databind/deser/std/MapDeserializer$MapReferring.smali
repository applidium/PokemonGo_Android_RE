.class final Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;
.super Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
.source "MapDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReferring"
.end annotation


# instance fields
.field private final _parent:Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

.field public final key:Ljava/lang/Object;

.field public final next:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "parent"    # Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    .param p2, "ref"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .param p4, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;",
            "Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 667
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;-><init>(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;)V

    .line 661
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->next:Ljava/util/Map;

    .line 668
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

    .line 669
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->key:Ljava/lang/Object;

    .line 670
    return-void
.end method


# virtual methods
.method public handleResolvedForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->_parent:Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->resolveForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 675
    return-void
.end method
