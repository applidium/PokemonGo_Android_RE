.class final Lcom/unity3d/player/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/k;->a(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;

.field final synthetic b:Lcom/unity3d/player/k;


# direct methods
.method constructor <init>(Lcom/unity3d/player/k;Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/k$1;->b:Lcom/unity3d/player/k;

    iput-object p2, p0, Lcom/unity3d/player/k$1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/k$1;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/k$1;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/k$1;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->displayChanged(ILandroid/view/Surface;)Z

    return-void
.end method
