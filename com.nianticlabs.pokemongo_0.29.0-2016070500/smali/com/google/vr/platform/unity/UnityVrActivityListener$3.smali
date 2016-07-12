.class Lcom/google/vr/platform/unity/UnityVrActivityListener$3;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectKeyPress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;I)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    iput p2, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    iget v1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$3;->val$keyCode:I

    invoke-virtual {v0, v1}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->injectKeyUp(I)V

    .line 312
    return-void
.end method
