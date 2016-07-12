.class Lcom/google/vr/platform/unity/UnityVrActivityListener$2;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectSingleTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

.field final synthetic val$time:J

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;IIJ)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    iput p2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$x:I

    iput p3, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$y:I

    iput-wide p4, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    iget v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$x:I

    iget v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$y:I

    iget-wide v4, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$time:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectTouchUp(IIJ)V

    .line 290
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    const/4 v1, 0x0

    # setter for: Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapInProgress:Z
    invoke-static {v0, v1}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$102(Lcom/google/vr/platform/unity/UnityVrActivityListener;Z)Z

    .line 291
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    # getter for: Lcom/google/vr/platform/unity/UnityVrActivityListener;->tapIsTrigger:Z
    invoke-static {v0}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$200(Lcom/google/vr/platform/unity/UnityVrActivityListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$x:I

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    # getter for: Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchX:I
    invoke-static {v1}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$300(Lcom/google/vr/platform/unity/UnityVrActivityListener;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->val$y:I

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    # getter for: Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchY:I
    invoke-static {v1}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$400(Lcom/google/vr/platform/unity/UnityVrActivityListener;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    iget-object v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    # getter for: Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchX:I
    invoke-static {v1}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$300(Lcom/google/vr/platform/unity/UnityVrActivityListener;)I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$2;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    # getter for: Lcom/google/vr/platform/unity/UnityVrActivityListener;->touchY:I
    invoke-static {v2}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$400(Lcom/google/vr/platform/unity/UnityVrActivityListener;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectMouseMove(II)V

    .line 294
    :cond_1
    return-void
.end method
