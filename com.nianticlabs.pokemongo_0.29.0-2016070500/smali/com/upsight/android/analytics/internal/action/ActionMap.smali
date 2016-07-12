.class public Lcom/upsight/android/analytics/internal/action/ActionMap;
.super Ljava/util/HashMap;
.source "ActionMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/action/Actionable;",
        "U:",
        "Lcom/upsight/android/analytics/internal/action/ActionContext;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<TT;TU;>;>;>;"
    }
.end annotation


# static fields
.field private static final ACTIONS:Ljava/lang/String; = "actions"

.field private static final TAG:Ljava/lang/String;

.field private static final TRIGGER:Ljava/lang/String; = "trigger"


# instance fields
.field private mActiveActionCount:I

.field private mIsActionMapCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/action/ActionMap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/action/ActionFactory;Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 16
    .param p3, "actionMapJSON"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/action/ActionFactory",
            "<TT;TU;>;TU;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    .local p1, "actionFactory":Lcom/upsight/android/analytics/internal/action/ActionFactory;, "Lcom/upsight/android/analytics/internal/action/ActionFactory<TT;TU;>;"
    .local p2, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;, "TU;"
    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    .line 37
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mIsActionMapCompleted:Z

    .line 47
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    move-result-object v10

    .line 51
    .local v10, "triggerItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 52
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 53
    .local v11, "triggerObject":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v12, "trigger"

    invoke-virtual {v11, v12}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    .line 54
    .local v9, "trigger":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v12, "actions"

    invoke-virtual {v11, v12}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 55
    .local v3, "actionArray":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 56
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v8

    .line 57
    .local v8, "numActions":I
    if-lez v8, :cond_0

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v5, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 61
    const/4 v4, 0x0

    .line 63
    .local v4, "actionJSON":Lcom/fasterxml/jackson/databind/JsonNode;
    :try_start_0
    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 64
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4}, Lcom/upsight/android/analytics/internal/action/ActionFactory;->create(Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/internal/action/Action;

    move-result-object v2

    .line 65
    .local v2, "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 66
    :catch_0
    move-exception v6

    .line 67
    .local v6, "e":Lcom/upsight/android/UpsightException;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v13, Lcom/upsight/android/analytics/internal/action/ActionMap;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to create action from actionJSON="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v6, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 72
    .end local v4    # "actionJSON":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v6    # "e":Lcom/upsight/android/UpsightException;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 73
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5}, Lcom/upsight/android/analytics/internal/action/ActionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .end local v3    # "actionArray":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v5    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    .end local v7    # "i":I
    .end local v8    # "numActions":I
    .end local v9    # "trigger":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v10    # "triggerItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v11    # "triggerObject":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_2
    return-void
.end method

.method private isFinished()Z
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mIsActionMapCompleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized executeActions(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 4
    .param p1, "trigger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    .local p2, "object":Lcom/upsight/android/analytics/internal/action/Actionable;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/action/ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 89
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/action/Action;

    .line 91
    .local v0, "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget v3, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    .line 92
    invoke-virtual {v0, p2}, Lcom/upsight/android/analytics/internal/action/Action;->execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 95
    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized signalActionCompleted()Z
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    .line 107
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->isFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized signalActionMapCompleted()Z
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mIsActionMapCompleted:Z

    .line 118
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->isFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
