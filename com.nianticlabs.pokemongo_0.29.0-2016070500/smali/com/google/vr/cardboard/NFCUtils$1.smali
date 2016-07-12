.class Lcom/google/vr/cardboard/NFCUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "NFCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/NFCUtils;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/NFCUtils;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/NFCUtils;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/vr/cardboard/NFCUtils$1;->this$0:Lcom/google/vr/cardboard/NFCUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    # getter for: Lcom/google/vr/cardboard/NFCUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/cardboard/NFCUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got an NFC tag!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, p0, Lcom/google/vr/cardboard/NFCUtils$1;->this$0:Lcom/google/vr/cardboard/NFCUtils;

    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/NFCUtils;->onNFCTagDetected(Landroid/nfc/Tag;)V

    .line 35
    return-void
.end method
