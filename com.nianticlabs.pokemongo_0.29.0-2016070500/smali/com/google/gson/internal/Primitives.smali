.class public final Lcom/google/gson/internal/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# static fields
.field private static final PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x10

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 44
    .local v0, "primToWrap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 46
    .local v1, "wrapToPrim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 47
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Byte;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Character;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 51
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Short;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Void;

    invoke-static {v0, v1, v2, v3}, Lcom/google/gson/internal/Primitives;->add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/google/gson/internal/Primitives;->PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;

    .line 57
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/google/gson/internal/Primitives;->WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "forward":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    .local p1, "backward":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    .local p2, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 70
    sget-object v0, Lcom/google/gson/internal/Primitives;->PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWrapperType(Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 80
    sget-object v0, Lcom/google/gson/internal/Primitives;->WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static unwrap(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/google/gson/internal/Primitives;->WRAPPER_TO_PRIMITIVE_TYPE:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 115
    .local v0, "unwrapped":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez v0, :cond_0

    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/google/gson/internal/Primitives;->PRIMITIVE_TO_WRAPPER_TYPE:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 98
    .local v0, "wrapped":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez v0, :cond_0

    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method
