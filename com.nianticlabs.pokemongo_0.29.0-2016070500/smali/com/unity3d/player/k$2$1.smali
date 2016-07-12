.class final Lcom/unity3d/player/k$2$1;
.super Landroid/app/Presentation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/k$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/k$2;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k$2;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/k$2$1;->a:Lcom/unity3d/player/k$2;

    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/unity3d/player/k$2$1;->a:Lcom/unity3d/player/k$2;

    iget-object v1, v1, Lcom/unity3d/player/k$2;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/k$2$1$1;

    invoke-direct {v2, p0}, Lcom/unity3d/player/k$2$1$1;-><init>(Lcom/unity3d/player/k$2$1;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/k$2$1;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final onDisplayRemoved()V
    .locals 3

    invoke-virtual {p0}, Lcom/unity3d/player/k$2$1;->dismiss()V

    iget-object v0, p0, Lcom/unity3d/player/k$2$1;->a:Lcom/unity3d/player/k$2;

    iget-object v0, v0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    invoke-static {v0}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/k$2$1;->a:Lcom/unity3d/player/k$2;

    iget-object v0, v0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k;Landroid/app/Presentation;)Landroid/app/Presentation;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
