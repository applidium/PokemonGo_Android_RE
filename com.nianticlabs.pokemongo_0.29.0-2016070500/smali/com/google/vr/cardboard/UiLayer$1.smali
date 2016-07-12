.class Lcom/google/vr/cardboard/UiLayer$1;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$1;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/cardboard/UiUtils;->launchOrInstallCardboard(Landroid/content/Context;)V

    .line 111
    return-void
.end method
