.class Lcom/google/unity/GoogleUnityActivity$5;
.super Ljava/lang/Object;
.source "GoogleUnityActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/GoogleUnityActivity;->startImmersiveMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/GoogleUnityActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/unity/GoogleUnityActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity$5;->this$0:Lcom/google/unity/GoogleUnityActivity;

    iput-object p2, p0, Lcom/google/unity/GoogleUnityActivity$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 328
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$5;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/unity/GoogleUnityActivity$5$1;

    invoke-direct {v1, p0}, Lcom/google/unity/GoogleUnityActivity$5$1;-><init>(Lcom/google/unity/GoogleUnityActivity$5;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$5;->this$0:Lcom/google/unity/GoogleUnityActivity;

    iget-object v0, v0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$5;->this$0:Lcom/google/unity/GoogleUnityActivity;

    iget-object v0, v0, Lcom/google/unity/GoogleUnityActivity;->mAndroidInputListener:Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;

    invoke-interface {v0, p1}, Lcom/google/unity/GoogleUnityActivity$AndroidInputListener;->onSystemUiVisibilityChange(I)V

    .line 339
    :cond_1
    return-void
.end method
