.class Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;
.super Ljava/lang/Object;
.source "Certificator.java"

# interfaces
.implements Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->onReceivedSecurityServiceNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;


# direct methods
.method constructor <init>(Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->getCertificationState()Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->ENABLE_SECURITY_SERVICE_NOTIFY:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->ENABLE_SECURITY_SERVICE_NOTIFY:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    # invokes: Lcom/nianticproject/holoholo/sfida/service/Certificator;->executeCertificateSequence(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V
    invoke-static {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->access$000(Lcom/nianticproject/holoholo/sfida/service/Certificator;Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring timeout event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reachedRetryCountMax()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "reachedRetryCountMax()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->disconnectBluetooth()Z

    .line 142
    return-void
.end method
