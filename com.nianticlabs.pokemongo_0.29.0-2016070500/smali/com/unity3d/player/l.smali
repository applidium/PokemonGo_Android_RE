.class public final Lcom/unity3d/player/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/h;


# instance fields
.field private a:Landroid/view/Choreographer;

.field private b:J

.field private c:Landroid/view/Choreographer$FrameCallback;

.field private d:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unity3d/player/l;->b:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/l;->d:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/l;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/l;->d:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b(Lcom/unity3d/player/l;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic c(Lcom/unity3d/player/l;)Landroid/view/Choreographer$FrameCallback;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/l;->c:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/l;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/unity3d/player/l;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/unity3d/player/l;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final a(Lcom/unity3d/player/UnityPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/l;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "Choreographer available: Enabling VSYNC timing"

    invoke-static {v0, v1}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    new-instance v0, Lcom/unity3d/player/l$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/l$1;-><init>(Lcom/unity3d/player/l;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/l;->c:Landroid/view/Choreographer$FrameCallback;

    iget-object v0, p0, Lcom/unity3d/player/l;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/unity3d/player/l;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/l;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
