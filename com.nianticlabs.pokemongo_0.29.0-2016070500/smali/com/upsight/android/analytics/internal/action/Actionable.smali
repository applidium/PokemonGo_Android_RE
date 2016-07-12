.class public abstract Lcom/upsight/android/analytics/internal/action/Actionable;
.super Ljava/lang/Object;
.source "Actionable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/action/Actionable$1;,
        Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;
    }
.end annotation


# instance fields
.field private mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

.field private mId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/ActionMap;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/analytics/internal/action/Actionable;",
            "U:",
            "Lcom/upsight/android/analytics/internal/action/ActionContext;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/ActionMap",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "actionMap":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    .line 36
    return-void
.end method


# virtual methods
.method public executeActions(Ljava/lang/String;)V
    .locals 1
    .param p1, "trigger"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0, p1, p0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->executeActions(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)V

    .line 61
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public signalActionCompleted(Lcom/squareup/otto/Bus;)V
    .locals 3
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->signalActionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable$1;)V

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public signalActionMapCompleted(Lcom/squareup/otto/Bus;)V
    .locals 3
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mActionMap:Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->signalActionMapCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Actionable;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable$1;)V

    invoke-virtual {p1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method
