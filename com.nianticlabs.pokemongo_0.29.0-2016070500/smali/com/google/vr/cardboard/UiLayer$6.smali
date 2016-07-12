.class Lcom/google/vr/cardboard/UiLayer$6;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput-object p2, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$400(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
