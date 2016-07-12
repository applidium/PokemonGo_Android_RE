.class final Lcom/unity3d/player/UnityPlayer$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->hideVideoPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/w;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->g(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/t;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->f(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/t;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/w;)Lcom/unity3d/player/w;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    goto :goto_0
.end method
