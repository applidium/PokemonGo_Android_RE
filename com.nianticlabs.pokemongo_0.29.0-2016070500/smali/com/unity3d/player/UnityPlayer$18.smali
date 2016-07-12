.class final Lcom/unity3d/player/UnityPlayer$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$18;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->i(Lcom/unity3d/player/UnityPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->h(Lcom/unity3d/player/UnityPlayer;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method
