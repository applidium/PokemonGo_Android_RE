.class public final Lcom/upsight/android/internal/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/upsight/android/logger/UpsightLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/logger/Logger$LogSubscriber;
    }
.end annotation


# instance fields
.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private final mLogWriter:Lcom/upsight/android/internal/logger/LogWriter;

.field private final mSubscriptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/persistence/UpsightSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/internal/logger/LogWriter;)V
    .locals 1
    .param p1, "upsightDataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p2, "logWriter"    # Lcom/upsight/android/internal/logger/LogWriter;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/logger/Logger;->mSubscriptionsMap:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/upsight/android/internal/logger/Logger;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 46
    iput-object p2, p0, Lcom/upsight/android/internal/logger/Logger;->mLogWriter:Lcom/upsight/android/internal/logger/LogWriter;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/internal/logger/Logger;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/logger/Logger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/internal/logger/Logger;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method public static create(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/internal/logger/LogWriter;)Lcom/upsight/android/internal/logger/Logger;
    .locals 1
    .param p0, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p1, "writer"    # Lcom/upsight/android/internal/logger/LogWriter;

    .prologue
    .line 34
    new-instance v0, Lcom/upsight/android/internal/logger/Logger;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/logger/Logger;-><init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/internal/logger/LogWriter;)V

    return-object v0
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 135
    array-length v0, p1

    if-nez v0, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private varargs log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # Lcom/upsight/android/logger/UpsightLogger$Level;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .prologue
    .line 115
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 116
    .local v1, "writer":Ljava/io/StringWriter;
    if-eqz p3, :cond_0

    .line 117
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 120
    :cond_0
    new-instance v0, Lcom/upsight/android/internal/logger/LogMessage;

    invoke-static {p4, p5}, Lcom/upsight/android/internal/logger/Logger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, p1, v2, v3}, Lcom/upsight/android/internal/logger/LogMessage;-><init>(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "msg":Lcom/upsight/android/internal/logger/LogMessage;
    iget-object v2, p0, Lcom/upsight/android/internal/logger/Logger;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    new-instance v3, Lcom/upsight/android/internal/logger/Logger$1;

    invoke-direct {v3, p0}, Lcom/upsight/android/internal/logger/Logger$1;-><init>(Lcom/upsight/android/internal/logger/Logger;)V

    invoke-interface {v2, v0, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 132
    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 61
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->DEBUG:Lcom/upsight/android/logger/UpsightLogger$Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->DEBUG:Lcom/upsight/android/logger/UpsightLogger$Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 91
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->ERROR:Lcom/upsight/android/logger/UpsightLogger$Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 96
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->ERROR:Lcom/upsight/android/logger/UpsightLogger$Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->INFO:Lcom/upsight/android/logger/UpsightLogger$Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 76
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->INFO:Lcom/upsight/android/logger/UpsightLogger$Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 5
    .param p1, "logTagRegularExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger$Level;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "levels":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/upsight/android/logger/UpsightLogger$Level;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Log tag can not be null or empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_0
    new-instance v0, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;

    iget-object v3, p0, Lcom/upsight/android/internal/logger/Logger;->mLogWriter:Lcom/upsight/android/internal/logger/LogWriter;

    invoke-direct {v0, p1, p2, v3}, Lcom/upsight/android/internal/logger/Logger$LogSubscriber;-><init>(Ljava/lang/String;Ljava/util/EnumSet;Lcom/upsight/android/internal/logger/LogWriter;)V

    .line 106
    .local v0, "listener":Lcom/upsight/android/internal/logger/Logger$LogSubscriber;
    iget-object v3, p0, Lcom/upsight/android/internal/logger/Logger;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v3, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v2

    .line 107
    .local v2, "subscription":Lcom/upsight/android/persistence/UpsightSubscription;
    iget-object v3, p0, Lcom/upsight/android/internal/logger/Logger;->mSubscriptionsMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/persistence/UpsightSubscription;

    .line 108
    .local v1, "previous":Lcom/upsight/android/persistence/UpsightSubscription;
    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v1}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 111
    :cond_1
    return-void
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 51
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->VERBOSE:Lcom/upsight/android/logger/UpsightLogger$Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 56
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->VERBOSE:Lcom/upsight/android/logger/UpsightLogger$Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->WARN:Lcom/upsight/android/logger/UpsightLogger$Level;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 86
    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->WARN:Lcom/upsight/android/logger/UpsightLogger$Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method
