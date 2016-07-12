.class final Lcom/unity3d/player/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/l;->a(Lcom/unity3d/player/UnityPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;

.field final synthetic b:Lcom/unity3d/player/l;


# direct methods
.method constructor <init>(Lcom/unity3d/player/l;Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/l$1;->b:Lcom/unity3d/player/l;

    iput-object p2, p0, Lcom/unity3d/player/l$1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->lockNativeAccess()V

    invoke-static {}, Lcom/unity3d/player/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/l$1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeAddVSyncTime(J)V

    :cond_0
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->unlockNativeAccess()V

    iget-object v0, p0, Lcom/unity3d/player/l$1;->b:Lcom/unity3d/player/l;

    invoke-static {v0}, Lcom/unity3d/player/l;->a(Lcom/unity3d/player/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/l$1;->b:Lcom/unity3d/player/l;

    invoke-static {v0}, Lcom/unity3d/player/l;->b(Lcom/unity3d/player/l;)Landroid/view/Choreographer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/l$1;->b:Lcom/unity3d/player/l;

    invoke-static {v0}, Lcom/unity3d/player/l;->b(Lcom/unity3d/player/l;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/l$1;->b:Lcom/unity3d/player/l;

    invoke-static {v1}, Lcom/unity3d/player/l;->c(Lcom/unity3d/player/l;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/l$1;->b:Lcom/unity3d/player/l;

    invoke-static {v0}, Lcom/unity3d/player/l;->a(Lcom/unity3d/player/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
