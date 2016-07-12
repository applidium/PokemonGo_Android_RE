.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModifyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final MATCH:Ljava/lang/String; = "match"

.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final OPERATOR_SET:Ljava/lang/String; = "set"

.field private static final PROPERTY_NAME:Ljava/lang/String; = "property_name"

.field private static final PROPERTY_VALUE:Ljava/lang/String; = "property_value"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VALUES:Ljava/lang/String; = "values"


# direct methods
.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method

.method private modifyValue(Lcom/upsight/android/managedvariables/internal/type/UxmContent;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 25
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    .param p3, "matchers"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "values"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v8

    check-cast v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    .line 259
    .local v8, "actionContext":Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    iget-object v6, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 260
    .local v6, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    iget-object v3, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v9

    .line 261
    .local v9, "logger":Lcom/upsight/android/logger/UpsightLogger;
    iget-object v3, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v5

    .line 264
    .local v5, "dataStore":Lcom/upsight/android/persistence/UpsightDataStore;
    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$1;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v3

    const-class v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v3, v4}, Lrx/Observable;->cast(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v16

    .line 274
    .local v16, "fetchObservable":Lrx/Observable;, "Lrx/Observable<Lcom/fasterxml/jackson/databind/node/ObjectNode;>;"
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v22

    .line 275
    .local v22, "seedNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 276
    .local v18, "matcher":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v3, "property_name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v20

    .line 277
    .local v20, "propertyName":Ljava/lang/String;
    const-string v3, "property_value"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v21

    .line 280
    .local v21, "propertyValue":Lcom/fasterxml/jackson/databind/JsonNode;
    new-instance v3, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$2;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v16

    .line 288
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 292
    .end local v18    # "matcher":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v20    # "propertyName":Ljava/lang/String;
    .end local v21    # "propertyValue":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v16

    .line 295
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 296
    .local v23, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v3, "operator"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v19

    .line 297
    .local v19, "operator":Ljava/lang/String;
    const-string v3, "property_name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v20

    .line 298
    .restart local v20    # "propertyName":Ljava/lang/String;
    const-string v3, "property_value"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v21

    .line 300
    .restart local v21    # "propertyValue":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v3, "set"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    new-instance v3, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$3;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v16

    goto :goto_1

    .line 312
    .end local v19    # "operator":Ljava/lang/String;
    .end local v20    # "propertyName":Ljava/lang/String;
    .end local v21    # "propertyValue":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v23    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_2
    iget-object v3, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v3

    iget-object v4, v8, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/upsight/android/UpsightCoreComponent;->observeOnScheduler()Lrx/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v24

    new-instance v3, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$4;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/Class;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    new-instance v10, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;

    move-object/from16 v11, p0

    move-object v12, v9

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move-object v15, v8

    invoke-direct/range {v10 .. v15}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue$5;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;Lcom/upsight/android/logger/UpsightLogger;Ljava/lang/Class;Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v10}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 352
    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 198
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .locals 10
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .prologue
    .line 220
    const/4 v2, 0x1

    .line 221
    .local v2, "isSync":Z
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    .line 222
    .local v0, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->shouldApplyBundle()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    const-string v6, "type"

    invoke-virtual {p0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->optParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "type":Ljava/lang/String;
    const-string v6, "match"

    invoke-virtual {p0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->optParamJsonArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    .line 225
    .local v3, "matchers":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    const-string v6, "values"

    invoke-virtual {p0, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->optParamJsonArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v5

    .line 227
    .local v5, "values":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.upsight.uxm.string"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 230
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;

    .line 239
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 240
    invoke-direct {p0, p1, v1, v3, v5}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ModifyValue;->modifyValue(Lcom/upsight/android/managedvariables/internal/type/UxmContent;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 241
    const/4 v2, 0x0

    .line 251
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "matchers":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "values":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 252
    iget-object v6, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v6}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 254
    :cond_2
    return-void

    .line 231
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "matchers":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "values":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :cond_3
    const-string v6, "com.upsight.uxm.boolean"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 232
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;

    goto :goto_0

    .line 233
    :cond_4
    const-string v6, "com.upsight.uxm.integer"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 234
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;

    goto :goto_0

    .line 235
    :cond_5
    const-string v6, "com.upsight.uxm.float"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 236
    const-class v1, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;

    goto :goto_0

    .line 243
    :cond_6
    iget-object v6, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v7, "Upsight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to execute action_modify_value due to unknown managed variable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
