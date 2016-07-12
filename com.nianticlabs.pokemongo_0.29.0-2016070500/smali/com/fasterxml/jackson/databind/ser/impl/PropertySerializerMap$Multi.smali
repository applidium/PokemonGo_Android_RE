.class final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;
.super Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Multi"
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x8


# instance fields
.field private final _entries:[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .param p2, "entries"    # [Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;)V

    .line 346
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 347
    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v1, v2

    .line 367
    .local v1, "len":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 368
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;->_resetWhenFull:Z

    if-eqz v2, :cond_0

    .line 369
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;

    invoke-direct {v2, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    move-object p0, v2

    .line 375
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;
    :cond_0
    :goto_0
    return-object p0

    .line 373
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 374
    .local v0, "entries":[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    invoke-direct {v2, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    aput-object v2, v0, v1

    .line 375
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;

    invoke-direct {v2, p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;)V

    move-object p0, v2

    goto :goto_0
.end method

.method public serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 353
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    aget-object v0, v3, v1

    .line 354
    .local v0, "entry":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;->type:Ljava/lang/Class;

    if-ne v3, p1, :cond_0

    .line 355
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 358
    .end local v0    # "entry":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
    :goto_1
    return-object v3

    .line 352
    .restart local v0    # "entry":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "entry":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
