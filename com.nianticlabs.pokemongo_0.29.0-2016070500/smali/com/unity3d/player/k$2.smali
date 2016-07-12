.class final Lcom/unity3d/player/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/k;->a(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/Display;

.field final synthetic c:Lcom/unity3d/player/UnityPlayer;

.field final synthetic d:Lcom/unity3d/player/k;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k;Landroid/content/Context;Landroid/view/Display;Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    iput-object p2, p0, Lcom/unity3d/player/k$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/unity3d/player/k$2;->b:Landroid/view/Display;

    iput-object p4, p0, Lcom/unity3d/player/k$2;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    invoke-static {v0}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    invoke-static {v0}, Lcom/unity3d/player/k;->b(Lcom/unity3d/player/k;)Landroid/app/Presentation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    invoke-static {v0}, Lcom/unity3d/player/k;->b(Lcom/unity3d/player/k;)Landroid/app/Presentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    new-instance v2, Lcom/unity3d/player/k$2$1;

    iget-object v3, p0, Lcom/unity3d/player/k$2;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/unity3d/player/k$2;->b:Landroid/view/Display;

    invoke-direct {v2, p0, v3, v4}, Lcom/unity3d/player/k$2$1;-><init>(Lcom/unity3d/player/k$2;Landroid/content/Context;Landroid/view/Display;)V

    invoke-static {v0, v2}, Lcom/unity3d/player/k;->a(Lcom/unity3d/player/k;Landroid/app/Presentation;)Landroid/app/Presentation;

    iget-object v0, p0, Lcom/unity3d/player/k$2;->d:Lcom/unity3d/player/k;

    invoke-static {v0}, Lcom/unity3d/player/k;->b(Lcom/unity3d/player/k;)Landroid/app/Presentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
