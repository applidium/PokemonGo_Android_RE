.class public Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;
.super Ljava/lang/Object;
.source "HostConnectionPoller.java"


# instance fields
.field private connectionTimeOutPeriod:J

.field private currentRetryCount:I

.field private ip:Ljava/lang/String;

.field private maxRetryCount:I

.field private port:I

.field private socketFutureTask:Ljava/util/concurrent/Future;

.field private timeGapBetweenPolls:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->socketFutureTask:Ljava/util/concurrent/Future;

    .line 32
    const-string v0, "8.8.8.8"

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->ip:Ljava/lang/String;

    .line 33
    const/16 v0, 0x38

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->port:I

    .line 34
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->connectionTimeOutPeriod:J

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->maxRetryCount:I

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->timeGapBetweenPolls:F

    .line 37
    return-void
.end method

.method private ReportConnectionFailure()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->currentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->currentRetryCount:I

    .line 88
    iget v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->currentRetryCount:I

    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->getMaxRetryCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 91
    invoke-static {v2}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->sendSocketConnectionStatus(Z)V

    .line 94
    iput v2, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->currentRetryCount:I

    .line 96
    :cond_0
    return-void
.end method

.method private ReportConnectionSuccess()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/features/reachability/NetworkReachabilityHandler;->sendSocketConnectionStatus(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->ReportConnectionSuccess()V

    return-void
.end method

.method static synthetic access$1(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->ReportConnectionFailure()V

    return-void
.end method

.method static synthetic access$2(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->timeGapBetweenPolls:F

    return v0
.end method


# virtual methods
.method Start()V
    .locals 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->socketFutureTask:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->socketFutureTask:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 46
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 47
    .local v1, "threadPoolExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;

    invoke-direct {v0, p0}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;-><init>(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)V

    .line 81
    .local v0, "longRunningTask":Ljava/lang/Runnable;
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->socketFutureTask:Ljava/util/concurrent/Future;

    .line 82
    return-void
.end method

.method public getConnectionTimeOutPeriod()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->connectionTimeOutPeriod:J

    return-wide v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->maxRetryCount:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->port:I

    return v0
.end method

.method public getTimeGapBetweenPolls()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->timeGapBetweenPolls:F

    return v0
.end method

.method public setConnectionTimeOutPeriod(I)V
    .locals 2
    .param p1, "connectionTimeOutPeriod"    # I

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 142
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->connectionTimeOutPeriod:J

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "NativePlugins.NetworkConnectivity"

    const-string v1, "time out value should not be zero. Considering default 60 secs for timeout"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->ip:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0
    .param p1, "maxRetryCount"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->maxRetryCount:I

    .line 158
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->port:I

    .line 116
    return-void
.end method

.method public setTimeGapBetweenPolls(F)V
    .locals 0
    .param p1, "timeGapBetweenPolls"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->timeGapBetweenPolls:F

    .line 131
    return-void
.end method
