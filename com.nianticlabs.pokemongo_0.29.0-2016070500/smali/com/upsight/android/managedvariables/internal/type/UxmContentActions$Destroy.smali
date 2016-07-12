.class Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$Destroy;
.super Lcom/upsight/android/analytics/internal/action/Action;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Destroy"
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
    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/action/Action;-><init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 396
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p4, "x3"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$1;

    .prologue
    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$Destroy;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 392
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .end local p1    # "x0":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$Destroy;->execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V

    return-void
.end method

.method public execute(Lcom/upsight/android/managedvariables/internal/type/UxmContent;)V
    .locals 2
    .param p1, "content"    # Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$Destroy;->getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    iget-object v0, v1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 402
    .local v0, "bus":Lcom/squareup/otto/Bus;
    invoke-virtual {p1, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionCompleted(Lcom/squareup/otto/Bus;)V

    .line 403
    invoke-virtual {p1, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->signalActionMapCompleted(Lcom/squareup/otto/Bus;)V

    .line 404
    return-void
.end method
