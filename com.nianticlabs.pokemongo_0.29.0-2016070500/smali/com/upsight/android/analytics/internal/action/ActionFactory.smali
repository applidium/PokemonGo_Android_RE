.class public interface abstract Lcom/upsight/android/analytics/internal/action/ActionFactory;
.super Ljava/lang/Object;
.source "ActionFactory.java"


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


# static fields
.field public static final KEY_ACTION_PARAMS:Ljava/lang/String; = "parameters"

.field public static final KEY_ACTION_TYPE:Ljava/lang/String; = "action_type"


# virtual methods
.method public abstract create(Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/internal/action/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")",
            "Lcom/upsight/android/analytics/internal/action/Action",
            "<TT;TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation
.end method
