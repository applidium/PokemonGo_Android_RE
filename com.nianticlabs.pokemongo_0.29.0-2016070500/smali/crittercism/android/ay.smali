.class public final Lcrittercism/android/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lcrittercism/android/az;


# direct methods
.method public constructor <init>(Lcrittercism/android/az;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcrittercism/android/ay;->b:Lcrittercism/android/az;

    .line 14
    iput-object p2, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ay;->b:Lcrittercism/android/az;

    invoke-virtual {v0, p2}, Lcrittercism/android/az;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v0, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lcrittercism/android/ay;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v1, v1, Lcrittercism/android/ay;

    if-nez v1, :cond_1

    .line 31
    iget-object v1, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    throw v0

    .line 27
    :catch_1
    move-exception v0

    .line 28
    :try_start_2
    const-string v1, "Unable to send crash"

    invoke-static {v1, v0}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    iget-object v0, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lcrittercism/android/ay;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcrittercism/android/ay;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
