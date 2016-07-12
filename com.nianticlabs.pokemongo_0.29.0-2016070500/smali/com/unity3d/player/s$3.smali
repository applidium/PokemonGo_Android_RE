.class final Lcom/unity3d/player/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/s;->createSoftInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/s;


# direct methods
.method constructor <init>(Lcom/unity3d/player/s;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/s$3;->a:Lcom/unity3d/player/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/s$3;->a:Lcom/unity3d/player/s;

    iget-object v1, p0, Lcom/unity3d/player/s$3;->a:Lcom/unity3d/player/s;

    invoke-static {v1}, Lcom/unity3d/player/s;->a(Lcom/unity3d/player/s;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/s;->a(Lcom/unity3d/player/s;Ljava/lang/String;Z)V

    :cond_0
    return v2
.end method
