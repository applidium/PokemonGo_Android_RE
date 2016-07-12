.class final Lcom/unity3d/player/UnityPlayer$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->showVideoPlayer(Ljava/lang/String;IIIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IIIZII)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$12;->a:Ljava/lang/String;

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$12;->b:I

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$12;->c:I

    iput p5, p0, Lcom/unity3d/player/UnityPlayer$12;->d:I

    iput-boolean p6, p0, Lcom/unity3d/player/UnityPlayer$12;->e:Z

    iput p7, p0, Lcom/unity3d/player/UnityPlayer$12;->f:I

    iput p8, p0, Lcom/unity3d/player/UnityPlayer$12;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/w;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    iget-object v12, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    new-instance v0, Lcom/unity3d/player/w;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->n(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$12;->a:Ljava/lang/String;

    iget v4, p0, Lcom/unity3d/player/UnityPlayer$12;->b:I

    iget v5, p0, Lcom/unity3d/player/UnityPlayer$12;->c:I

    iget v6, p0, Lcom/unity3d/player/UnityPlayer$12;->d:I

    iget-boolean v7, p0, Lcom/unity3d/player/UnityPlayer$12;->e:Z

    iget v8, p0, Lcom/unity3d/player/UnityPlayer$12;->f:I

    int-to-long v8, v8

    iget v10, p0, Lcom/unity3d/player/UnityPlayer$12;->g:I

    int-to-long v10, v10

    invoke-direct/range {v0 .. v11}, Lcom/unity3d/player/w;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;Ljava/lang/String;IIIZJJ)V

    invoke-static {v12, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/w;)Lcom/unity3d/player/w;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->q(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/w;->requestFocus()Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->g(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/t;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$12;->h:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->f(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/t;->d(Landroid/view/View;)V

    goto :goto_0
.end method
