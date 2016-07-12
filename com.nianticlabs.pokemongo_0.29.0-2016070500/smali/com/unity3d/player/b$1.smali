.class final Lcom/unity3d/player/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/b;


# direct methods
.method constructor <init>(Lcom/unity3d/player/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-static {v0}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b;)Landroid/view/SurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    new-instance v1, Landroid/view/SurfaceView;

    sget-object v2, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/t;

    invoke-virtual {v2}, Lcom/unity3d/player/t;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-static {v0}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-static {v1}, Lcom/unity3d/player/b;->b(Lcom/unity3d/player/b;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-static {v0}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v0, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/t;

    iget-object v1, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-static {v1}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/t;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/b$1;->a:Lcom/unity3d/player/b;

    invoke-static {v0}, Lcom/unity3d/player/b;->a(Lcom/unity3d/player/b;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method
