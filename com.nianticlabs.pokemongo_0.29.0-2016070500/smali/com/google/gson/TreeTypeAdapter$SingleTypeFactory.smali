.class Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .param p3, "matchRawType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "exactType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .local p4, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonSerializer;

    :goto_0
    iput-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson/JsonSerializer;

    .line 120
    instance-of v0, p1, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/gson/JsonDeserializer;

    .end local p1    # "typeAdapter":Ljava/lang/Object;
    :goto_1
    iput-object p1, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson/JsonDeserializer;

    .line 123
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 124
    iput-object p2, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    .line 125
    iput-boolean p3, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 126
    iput-object p4, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 127
    return-void

    .restart local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 120
    goto :goto_1

    .line 123
    .end local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/gson/reflect/TypeToken;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/Class;
    .param p5, "x4"    # Lcom/google/gson/TreeTypeAdapter$1;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 8
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 134
    .local v7, "matches":Z
    :goto_0
    if-eqz v7, :cond_3

    new-instance v0, Lcom/google/gson/TreeTypeAdapter;

    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/google/gson/JsonDeserializer;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/TreeTypeAdapter$1;)V

    :goto_1
    return-object v0

    .line 131
    .end local v7    # "matches":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    goto :goto_0

    .restart local v7    # "matches":Z
    :cond_3
    move-object v0, v6

    .line 134
    goto :goto_1
.end method
