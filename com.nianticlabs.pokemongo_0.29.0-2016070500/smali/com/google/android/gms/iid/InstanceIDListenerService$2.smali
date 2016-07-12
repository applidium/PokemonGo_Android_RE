.class Lcom/google/android/gms/iid/InstanceIDListenerService$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/iid/InstanceIDListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaDJ:Lcom/google/android/gms/iid/InstanceIDListenerService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/InstanceIDListenerService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/InstanceIDListenerService$2;->zzaDJ:Lcom/google/android/gms/iid/InstanceIDListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "InstanceID"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "InstanceID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received GSF callback using dynamic receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService$2;->zzaDJ:Lcom/google/android/gms/iid/InstanceIDListenerService;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzn(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService$2;->zzaDJ:Lcom/google/android/gms/iid/InstanceIDListenerService;

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    return-void
.end method
