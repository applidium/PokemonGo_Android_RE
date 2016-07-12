.class final Lcom/unity3d/player/a$2;
.super Lcom/unity3d/player/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/hardware/Camera;

.field final synthetic b:Lcom/unity3d/player/a;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a;)V
    .locals 1

    iput-object p1, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/unity3d/player/b;-><init>(I)V

    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    iget-object v0, v0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/unity3d/player/a$2;->a:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;)[Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    iget-object v0, v0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/unity3d/player/a$2;->a:Landroid/hardware/Camera;

    if-eq v0, v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    iget-object v0, v0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    iget-object v0, v0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to initialize webcam data stream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;)[Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    iget-object v0, v0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/unity3d/player/a$2;->a:Landroid/hardware/Camera;

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    iget-object v0, v0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
