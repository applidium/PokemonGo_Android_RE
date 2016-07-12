.class final Lcom/unity3d/player/s$2;
.super Landroid/widget/EditText;


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
.method constructor <init>(Lcom/unity3d/player/s;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/s$2;->a:Lcom/unity3d/player/s;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/s$2;->a:Lcom/unity3d/player/s;

    iget-object v2, p0, Lcom/unity3d/player/s$2;->a:Lcom/unity3d/player/s;

    invoke-static {v2}, Lcom/unity3d/player/s;->a(Lcom/unity3d/player/s;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/s;->a(Lcom/unity3d/player/s;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/s$2;->a:Lcom/unity3d/player/s;

    invoke-static {v0}, Lcom/unity3d/player/s;->b(Lcom/unity3d/player/s;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
