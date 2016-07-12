.class Lcom/google/vr/platform/unity/UnityVrActivityListener$1;
.super Ljava/lang/Object;
.source "UnityVrActivityListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/platform/unity/UnityVrActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;


# direct methods
.method constructor <init>(Lcom/google/vr/platform/unity/UnityVrActivityListener;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/vr/platform/unity/UnityVrActivityListener$1;->this$0:Lcom/google/vr/platform/unity/UnityVrActivityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 77
    # invokes: Lcom/google/vr/platform/unity/UnityVrActivityListener;->vrBackButtonPressed()V
    invoke-static {}, Lcom/google/vr/platform/unity/UnityVrActivityListener;->access$000()V

    .line 78
    return-void
.end method
