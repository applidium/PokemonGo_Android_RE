.class Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;
.super Ljava/lang/Object;
.source "RouteStep.java"


# instance fields
.field private mFailureReason:Ljava/lang/String;

.field private mQueue:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;)V
    .locals 0
    .param p1, "queue"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->mQueue:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;)V
    .locals 1
    .param p1, "step"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;

    .prologue
    .line 29
    iget-object v0, p1, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->mQueue:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->mFailureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->mQueue:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    return-object v0
.end method

.method public setFailureReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "failureReason"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->mFailureReason:Ljava/lang/String;

    .line 55
    return-void
.end method
