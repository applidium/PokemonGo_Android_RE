.class public final Lcom/fasterxml/jackson/core/util/InternCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "InternCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0xb4

.field public static final instance:Lcom/fasterxml/jackson/core/util/InternCache;


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/InternCache;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0xb4

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/InternCache;->lock:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xb4

    .line 40
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 61
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 48
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/InternCache;->size()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 53
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/InternCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/InternCache;->size()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/InternCache;->clear()V

    .line 57
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0, v0}, Lcom/fasterxml/jackson/core/util/InternCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 61
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
