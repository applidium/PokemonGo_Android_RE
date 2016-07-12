.class Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;
.super Ljava/lang/Object;
.source "SfidaWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchDogRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;Ljava/util/UUID;)V
    .locals 0
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->uuid:Ljava/util/UUID;

    .line 78
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$000(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 83
    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reached retry limit."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->stopWatch()V

    .line 85
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$200(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$200(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;->reachedRetryCountMax()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$200(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$200(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->uuid:Ljava/util/UUID;

    invoke-interface {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;->onTimeout(Ljava/util/UUID;)V

    .line 91
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    # operator++ for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$008(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)I

    .line 92
    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SFIDA connection TIMEOUT. UUID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "retryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    # getter for: Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I
    invoke-static {v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->access$000(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
