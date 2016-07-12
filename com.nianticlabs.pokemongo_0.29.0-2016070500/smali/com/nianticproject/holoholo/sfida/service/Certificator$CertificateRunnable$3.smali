.class Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$3;
.super Ljava/lang/Object;
.source "Certificator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->onReceivedDummyCertificationChallenge3()V
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
    .line 216
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$3;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$3;->this$1:Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->onCertificationComplete()V

    .line 220
    return-void
.end method
