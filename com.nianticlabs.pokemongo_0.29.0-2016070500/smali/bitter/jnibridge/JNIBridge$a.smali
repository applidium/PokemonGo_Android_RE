.class final Lbitter/jnibridge/JNIBridge$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbitter/jnibridge/JNIBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    iput-wide p1, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v1, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final finalize()V
    .locals 6

    iget-object v1, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    invoke-static {v2, v3}, Lbitter/jnibridge/JNIBridge;->delete(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v1, p0, Lbitter/jnibridge/JNIBridge$a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, p0, Lbitter/jnibridge/JNIBridge$a;->b:J

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v3, v0, p2, p3}, Lbitter/jnibridge/JNIBridge;->invoke(JLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
