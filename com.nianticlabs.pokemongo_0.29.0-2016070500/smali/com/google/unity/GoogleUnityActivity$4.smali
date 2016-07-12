.class Lcom/google/unity/GoogleUnityActivity$4;
.super Ljava/lang/Object;
.source "GoogleUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/GoogleUnityActivity;->showAndroidViewLayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/GoogleUnityActivity;

.field final synthetic val$layoutResId:I

.field final synthetic val$self:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/unity/GoogleUnityActivity;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    iput-object p2, p0, Lcom/google/unity/GoogleUnityActivity$4;->val$self:Landroid/app/Activity;

    iput p3, p0, Lcom/google/unity/GoogleUnityActivity$4;->val$layoutResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 163
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 165
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # setter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v5}, Lcom/google/unity/GoogleUnityActivity;->access$002(Lcom/google/unity/GoogleUnityActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity$4;->val$self:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/google/unity/GoogleUnityActivity;->access$002(Lcom/google/unity/GoogleUnityActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 170
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 172
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->val$self:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    iget v2, p0, Lcom/google/unity/GoogleUnityActivity$4;->val$layoutResId:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/google/unity/GoogleUnityActivity;->access$102(Lcom/google/unity/GoogleUnityActivity;Landroid/view/View;)Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/unity/GoogleUnityActivity;->access$100(Lcom/google/unity/GoogleUnityActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 181
    iget-object v1, p0, Lcom/google/unity/GoogleUnityActivity$4;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # getter for: Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/google/unity/GoogleUnityActivity;->access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/google/unity/GoogleUnityActivity$4;->val$self:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 182
    return-void
.end method
