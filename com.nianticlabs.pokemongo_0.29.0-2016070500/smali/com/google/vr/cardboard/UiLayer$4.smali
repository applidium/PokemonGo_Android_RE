.class Lcom/google/vr/cardboard/UiLayer$4;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Z)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$4;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput-boolean p2, p0, Lcom/google/vr/cardboard/UiLayer$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$4;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$100(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer$4;->val$enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
