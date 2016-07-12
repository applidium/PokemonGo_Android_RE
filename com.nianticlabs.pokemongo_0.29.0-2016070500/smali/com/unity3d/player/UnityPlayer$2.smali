.class final Lcom/unity3d/player/UnityPlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
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

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, -0x2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->l(Lcom/unity3d/player/UnityPlayer;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->m(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v4}, Lcom/unity3d/player/UnityPlayer;->n(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;

    move-result-object v4

    const/4 v5, 0x0

    aget v0, v1, v0

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v2, v3}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->m(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->m(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->m(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->m(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$2;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->m(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->bringChildToFront(Landroid/view/View;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x101007a
        0x1010289
        0x1010079
        0x1010288
    .end array-data
.end method
