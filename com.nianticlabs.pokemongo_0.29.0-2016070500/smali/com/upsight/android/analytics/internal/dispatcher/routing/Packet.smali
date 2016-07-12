.class public Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    }
.end annotation


# instance fields
.field private final mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

.field private final mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

.field private mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

.field private mTriedOnCurrentStep:Z


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord;Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "route"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->UNDELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 44
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 45
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    .line 46
    return-void
.end method


# virtual methods
.method public failAndRoute(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Packet could not be failed because it was already delivered successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->failedOnCurrentStep(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->hasMoreSteps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    .line 82
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->moveToNextStep()V

    .line 84
    :cond_1
    return-void
.end method

.method public getDeliveryHistory()Ljava/lang/String;
    .locals 8

    .prologue
    .line 112
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v6}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->getRoutingStack()[Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "stack":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 116
    .local v5, "stackItem":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v5    # "stackItem":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mEvent:Lcom/upsight/android/analytics/internal/DataStoreRecord;

    return-object v0
.end method

.method public getState()Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    return-object v0
.end method

.method public hasMoreOptionsToTry()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->hasMoreSteps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDelivered()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 60
    return-void
.end method

.method public markTrashed()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->TRASHED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mState:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 67
    return-void
.end method

.method public routeToNext()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mTriedOnCurrentStep:Z

    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->mRoute:Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Route;->getCurrentQueue()Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->enqueuePacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V

    .line 106
    return-void
.end method
