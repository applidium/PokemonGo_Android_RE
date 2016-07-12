.class final Lcom/unity3d/player/k$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/k$2$1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/k$2$1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/k$2$1$1;->a:Lcom/unity3d/player/k$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/k$2$1$1;->a:Lcom/unity3d/player/k$2$1;

    iget-object v0, v0, Lcom/unity3d/player/k$2$1;->a:Lcom/unity3d/player/k$2;

    iget-object v0, v0, Lcom/unity3d/player/k$2;->c:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/k$2$1$1;->a:Lcom/unity3d/player/k$2$1;

    iget-object v0, v0, Lcom/unity3d/player/k$2$1;->a:Lcom/unity3d/player/k$2;

    iget-object v0, v0, Lcom/unity3d/player/k$2;->c:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/k$2$1$1;->a:Lcom/unity3d/player/k$2$1;

    iget-object v0, v0, Lcom/unity3d/player/k$2$1;->a:Lcom/unity3d/player/k$2;

    iget-object v0, v0, Lcom/unity3d/player/k$2;->c:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method
