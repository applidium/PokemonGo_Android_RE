.class public final Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;
.super Ljava/lang/Object;
.source "UxmContentFactory.java"


# static fields
.field private static final ACTION_MODIFY_VALUE:Ljava/lang/String; = "action_modify_value"

.field private static final ACTION_SET_BUNDLE_ID:Ljava/lang/String; = "action_set_bundle_id"

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_ACTION_TYPE:Ljava/lang/String; = "action_type"

.field private static final sUxmContentActionFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;


# instance fields
.field private mActionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

.field private mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->sUxmContentActionFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "userExperience"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mActionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    .line 35
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    .line 36
    return-void
.end method


# virtual methods
.method public create(Lcom/upsight/android/analytics/internal/action/ActionMapResponse;)Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    .locals 13
    .param p1, "actionMapResponse"    # Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    .prologue
    .line 39
    const/4 v10, 0x0

    .line 40
    .local v10, "uxmContent":Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionMapId()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "id":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "datastore_factory"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionFactory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 43
    const/4 v7, 0x0

    .line 44
    .local v7, "shouldApplyBundle":Z
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionMap()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 45
    .local v1, "actionMapNode":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 46
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 47
    .local v8, "triggersNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v11, "actions"

    invoke-virtual {v8, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->findPath(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 48
    .local v3, "actionsNode":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 49
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 50
    .local v2, "actionNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v11, "action_type"

    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->findPath(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    .line 51
    .local v9, "typeNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v11, "action_set_bundle_id"

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "action_modify_value"

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 54
    :cond_2
    iget-object v11, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    invoke-virtual {v11}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;->getHandler()Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    move-result-object v11

    invoke-interface {v11}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;->onReceive()Z

    move-result v7

    .line 59
    .end local v2    # "actionNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "typeNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_3
    if-eqz v7, :cond_0

    .line 66
    .end local v3    # "actionsNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v8    # "triggersNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_4
    new-instance v0, Lcom/upsight/android/analytics/internal/action/ActionMap;

    sget-object v11, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->sUxmContentActionFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;

    iget-object v12, p0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->mActionContext:Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    invoke-direct {v0, v11, v12, v1}, Lcom/upsight/android/analytics/internal/action/ActionMap;-><init>(Lcom/upsight/android/analytics/internal/action/ActionFactory;Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 68
    .local v0, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;>;"
    invoke-static {v6, v0, v7}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->create(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;Z)Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    move-result-object v10

    .line 70
    .end local v0    # "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<Lcom/upsight/android/managedvariables/internal/type/UxmContent;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;>;"
    .end local v1    # "actionMapNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v7    # "shouldApplyBundle":Z
    :cond_5
    return-object v10
.end method
