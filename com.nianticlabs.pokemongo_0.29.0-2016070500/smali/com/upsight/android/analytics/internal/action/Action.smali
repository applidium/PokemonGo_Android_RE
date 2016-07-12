.class public abstract Lcom/upsight/android/analytics/internal/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/action/Actionable;",
        "U:",
        "Lcom/upsight/android/analytics/internal/action/ActionContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private mParams:Lcom/fasterxml/jackson/databind/JsonNode;

.field private mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    .local p1, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;

    .line 43
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/action/Action;->mType:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected optParamInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 90
    .local v0, "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isInt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    .line 94
    .end local v0    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected optParamJsonArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 122
    .local v0, "jsonArray":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 126
    .end local v0    # "jsonArray":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected optParamJsonObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 104
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 106
    .local v0, "jsonObject":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 110
    .end local v0    # "jsonObject":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected optParamString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 74
    .local v0, "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 78
    .end local v0    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
