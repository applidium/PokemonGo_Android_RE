.class public Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
.super Ljava/lang/Object;
.source "SfidaWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;,
        Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_RETRY_MAX:I = 0x3

.field private static final DEFAULT_TIME_OUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;


# instance fields
.field private listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

.field private retryCount:I

.field private watchDogTimer:Landroid/os/Handler;

.field private watchingUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    invoke-direct {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;-><init>()V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->instance:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchDogTimer:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)I
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    .prologue
    .line 15
    iget v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)I
    .locals 2
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    .prologue
    .line 15
    iget v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;)Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    return-object v0
.end method

.method public static getInstance()Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->instance:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;

    return-object v0
.end method


# virtual methods
.method public startWatch(Ljava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "listener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .prologue
    .line 60
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->TAG:Ljava/lang/String;

    const-string v1, "startWatch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/16 v0, 0xbb8

    invoke-virtual {p0, p1, p2, v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->startWatch(Ljava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;I)V

    .line 62
    return-void
.end method

.method public startWatch(Ljava/util/UUID;Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;I)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "listener"    # Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
    .param p3, "timeout"    # I

    .prologue
    .line 46
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->TAG:Ljava/lang/String;

    const-string v1, "startWatch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .line 49
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchingUuid:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchingUuid:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchingUuid:Ljava/util/UUID;

    .line 55
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchDogTimer:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchDogTimer:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$WatchDogRunnable;-><init>(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;Ljava/util/UUID;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method

.method public stopWatch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->TAG:Ljava/lang/String;

    const-string v1, "stopWatch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->retryCount:I

    .line 67
    iput-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->listener:Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;

    .line 68
    iput-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchingUuid:Ljava/util/UUID;

    .line 69
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;->watchDogTimer:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
