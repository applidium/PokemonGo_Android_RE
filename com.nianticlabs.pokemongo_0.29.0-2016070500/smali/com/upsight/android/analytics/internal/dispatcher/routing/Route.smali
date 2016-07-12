.class Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field private mCurrentStepIndex:I

.field private mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;)V
    .locals 1
    .param p1, "route"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .prologue
    .line 32
    iget-object v0, p1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;-><init>(Ljava/util/List;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mCurrentStepIndex:I

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;

    .line 44
    .local v1, "step":Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;

    invoke-direct {v3, v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v1    # "step":Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;
    :cond_0
    return-void
.end method


# virtual methods
.method public failedOnCurrentStep(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    iget v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mCurrentStepIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->setFailureReason(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public getCurrentQueue()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    iget v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mCurrentStepIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->getQueue()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    move-result-object v0

    return-object v0
.end method

.method public getRoutingStack()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 63
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;

    .line 64
    .local v2, "step":Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->getQueue()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->getFailureReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "delivered"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->getFailureReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 72
    .end local v2    # "step":Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 64
    .restart local v2    # "step":Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;
    :cond_2
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouteStep;->getFailureReason()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getStepsCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasMoreSteps()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mCurrentStepIndex:I

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mSteps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToNextStep()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->hasMoreSteps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There are no more steps to move on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mCurrentStepIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->mCurrentStepIndex:I

    .line 105
    return-void
.end method
