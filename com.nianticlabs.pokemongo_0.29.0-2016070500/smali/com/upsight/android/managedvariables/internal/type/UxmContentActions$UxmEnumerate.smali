.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UxmEnumerate"
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


# direct methods
.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 144
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;->execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .locals 8
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmEnumerate;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v0

    .line 154
    .local v0, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;
    iget-object v4, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-string v5, "com.upsight.extension.managedvariables"

    invoke-virtual {v4, v5}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v4

    invoke-virtual {v4}, Lcom/upsight/android/UpsightExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;

    check-cast v4, Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;

    invoke-interface {v4}, Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;->uxmSchema()Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    move-result-object v4

    iget-object v3, v4, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mSchemaJsonString:Ljava/lang/String;

    .line 162
    .local v3, "uxmSchemaString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, "uxmSchema":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;->createBuilder(Lorg/json/JSONArray;)Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4, v5}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2    # "uxmSchema":Lorg/json/JSONArray;
    :goto_0
    iget-object v4, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {p1, v4}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 170
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Lorg/json/JSONException;
    iget-object v4, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v5, "Upsight"

    const-string v6, "Failed to send UXM enumerate event"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
