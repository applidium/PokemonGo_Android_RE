.class Lcom/google/unity/GoogleUnityActivity$5$1;
.super Ljava/lang/Object;
.source "GoogleUnityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/GoogleUnityActivity$5;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/unity/GoogleUnityActivity$5;


# direct methods
.method constructor <init>(Lcom/google/unity/GoogleUnityActivity$5;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity$5$1;->this$1:Lcom/google/unity/GoogleUnityActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$5$1;->this$1:Lcom/google/unity/GoogleUnityActivity$5;

    iget-object v0, v0, Lcom/google/unity/GoogleUnityActivity$5;->this$0:Lcom/google/unity/GoogleUnityActivity;

    # invokes: Lcom/google/unity/GoogleUnityActivity;->setImmersiveMode()V
    invoke-static {v0}, Lcom/google/unity/GoogleUnityActivity;->access$200(Lcom/google/unity/GoogleUnityActivity;)V

    .line 333
    return-void
.end method
