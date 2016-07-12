.class public abstract Lcom/nianticlabs/nia/contextservice/ContextService;
.super Ljava/lang/Object;
.source "ContextService.java"


# static fields
.field private static final handler:Landroid/os/Handler;

.field private static final handlerThread:Landroid/os/HandlerThread;

.field private static final mainHandler:Landroid/os/Handler;


# instance fields
.field protected final NULL_POINTER:J

.field protected final callbackLock:Ljava/lang/Object;

.field protected final context:Landroid/content/Context;

.field protected nativeClassPointer:J

.field private runOnPause:Ljava/lang/Runnable;

.field private runOnResume:Ljava/lang/Runnable;

.field private runOnStart:Ljava/lang/Runnable;

.field private runOnStop:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContextService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->handlerThread:Landroid/os/HandlerThread;

    .line 232
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ContextService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->handler:Landroid/os/Handler;

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->mainHandler:Landroid/os/Handler;

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->NULL_POINTER:J

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->callbackLock:Ljava/lang/Object;

    .line 198
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ContextService$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/contextservice/ContextService$1;-><init>(Lcom/nianticlabs/nia/contextservice/ContextService;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnStart:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ContextService$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/contextservice/ContextService$2;-><init>(Lcom/nianticlabs/nia/contextservice/ContextService;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnStop:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ContextService$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/contextservice/ContextService$3;-><init>(Lcom/nianticlabs/nia/contextservice/ContextService;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnPause:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ContextService$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/contextservice/ContextService$4;-><init>(Lcom/nianticlabs/nia/contextservice/ContextService;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnResume:Ljava/lang/Runnable;

    .line 32
    iput-object p1, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->context:Landroid/content/Context;

    .line 33
    iput-wide p2, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->nativeClassPointer:J

    .line 34
    return-void
.end method

.method public static assertOnServiceThread()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->onServiceThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be on the service thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    return-void
.end method

.method public static getServiceHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getServiceLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private invokeOnPause()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnPause:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method private invokeOnResume()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnResume:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method private invokeOnStart()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnStart:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private invokeOnStop()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnStop:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public static onServiceThread()Z
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ContextService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onUiThread()Z
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runOnServiceHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 111
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ContextService;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public static native setActivityProviderClass(Ljava/lang/String;)V
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->context:Landroid/content/Context;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final resetNativeClassPointer()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/nianticlabs/nia/contextservice/ContextService;->nativeClassPointer:J

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
