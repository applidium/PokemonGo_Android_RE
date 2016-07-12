.class Lcom/google/unity/GoogleUnityActivity$2;
.super Ljava/lang/Object;
.source "GoogleUnityActivity.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/GoogleUnityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/GoogleUnityActivity;


# direct methods
.method constructor <init>(Lcom/google/unity/GoogleUnityActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity$2;->this$0:Lcom/google/unity/GoogleUnityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$2;->this$0:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, p2}, Lcom/google/unity/GoogleUnityActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
