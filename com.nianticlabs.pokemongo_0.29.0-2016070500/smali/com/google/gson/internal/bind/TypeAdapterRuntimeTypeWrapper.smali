.class final Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/google/gson/Gson;

.field private final delegate:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "context"    # Lcom/google/gson/Gson;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "delegate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/google/gson/Gson;

    .line 34
    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    .line 35
    iput-object p3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 75
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 79
    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    .line 53
    .local v0, "chosen":Lcom/google/gson/TypeAdapter;
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v3, p2}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 54
    .local v1, "runtimeType":Ljava/lang/reflect/Type;
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/google/gson/Gson;

    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    .line 56
    .local v2, "runtimeTypeAdapter":Lcom/google/gson/TypeAdapter;
    instance-of v3, v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_1

    .line 58
    move-object v0, v2

    .line 68
    .end local v2    # "runtimeTypeAdapter":Lcom/google/gson/TypeAdapter;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 69
    return-void

    .line 59
    .restart local v2    # "runtimeTypeAdapter":Lcom/google/gson/TypeAdapter;
    :cond_1
    iget-object v3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    instance-of v3, v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v3, :cond_2

    .line 62
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    goto :goto_0

    .line 65
    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
