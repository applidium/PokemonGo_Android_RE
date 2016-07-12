.class Lcom/google/vr/cardboard/UiLayer$3;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->attachUiLayer(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$parentView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$3;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput-object p2, p0, Lcom/google/vr/cardboard/UiLayer$3;->val$parentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 176
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$3;->val$parentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$3;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$200(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$3;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$100(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$3;->val$parentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$3;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$100(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
