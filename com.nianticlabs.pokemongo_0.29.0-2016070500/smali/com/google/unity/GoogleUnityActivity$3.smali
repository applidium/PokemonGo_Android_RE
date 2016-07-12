.class Lcom/google/unity/GoogleUnityActivity$3;
.super Ljava/lang/Object;
.source "GoogleUnityActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 124
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity$3;->this$0:Lcom/google/unity/GoogleUnityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$3;->this$0:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, p3}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$3;->this$0:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, p2, p3}, Lcom/google/unity/GoogleUnityActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity$3;->this$0:Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0, p2, p3}, Lcom/google/unity/GoogleUnityActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
