.class final Lcom/unity3d/player/UnityPlayer$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setFullscreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$5;->b:Lcom/unity3d/player/UnityPlayer;

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/unity3d/player/q;->i:Lcom/unity3d/player/f;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$5;->b:Lcom/unity3d/player/UnityPlayer;

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer$5;->a:Z

    invoke-interface {v0, v1, v2}, Lcom/unity3d/player/f;->a(Landroid/view/View;Z)V

    return-void
.end method
