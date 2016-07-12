.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source "JdkDeserializers.java"


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 15
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    .line 18
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/UUID;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/StackTraceElement;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/nio/ByteBuffer;

    aput-object v6, v4, v5

    .line 24
    .local v4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->types()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;

    move-result-object v0

    .line 32
    .local v0, "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 49
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    const-class v1, Ljava/util/UUID;

    if-ne p0, v1, :cond_1

    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;

    .end local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;-><init>()V

    goto :goto_0

    .line 38
    .restart local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_1
    const-class v1, Ljava/lang/StackTraceElement;

    if-ne p0, v1, :cond_2

    .line 39
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;

    .end local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;-><init>()V

    goto :goto_0

    .line 41
    .restart local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_2
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p0, v1, :cond_3

    .line 43
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;

    .end local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;-><init>()V

    goto :goto_0

    .line 45
    .restart local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_3
    const-class v1, Ljava/nio/ByteBuffer;

    if-ne p0, v1, :cond_4

    .line 46
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;

    .end local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;-><init>()V

    goto :goto_0

    .line 49
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
