.class public Lcom/nianticproject/holoholo/sfida/service/Certificator;
.super Ljava/lang/Object;
.source "Certificator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x3e8


# instance fields
.field public final TAG:Ljava/lang/String;

.field private volatile certificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field delayHandler:Landroid/os/Handler;

.field public sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;


# direct methods
.method public constructor <init>(Lcom/nianticproject/holoholo/sfida/service/SfidaService;)V
    .locals 1
    .param p1, "sfidaService"    # Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->NO_CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->certificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->delayHandler:Landroid/os/Handler;

    .line 23
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/nianticproject/holoholo/sfida/service/Certificator;Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticproject/holoholo/sfida/service/Certificator;
    .param p1, "x1"    # Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->executeCertificateSequence(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    return-void
.end method

.method private executeCertificateSequence(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V
    .locals 4
    .param p1, "certificationState"    # Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->delayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->delayHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, p1}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;-><init>(Lcom/nianticproject/holoholo/sfida/service/Certificator;Landroid/os/Handler;Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public getCertificationState()Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->certificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    return-object v0
.end method

.method public onSfidaUpdated(Ljava/lang/String;)V
    .locals 3
    .param p1, "receivedData"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "3000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_1:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->executeCertificateSequence(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "4010"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_2:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->executeCertificateSequence(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "5000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_3:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->executeCertificateSequence(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v0, "4020"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->CERTIFICATION_COMPLETE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-direct {p0, v0}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->executeCertificateSequence(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    goto :goto_0

    .line 56
    :cond_3
    if-nez p1, :cond_4

    .line 57
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "onSfidaUpdated() rawString was null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSfidaUpdated() Unhandled raw data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCertificationState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V
    .locals 3
    .param p1, "certificationState"    # Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CertificationState ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->certificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u2192 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->certificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 30
    return-void
.end method

.method public startCertification()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->delayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;

    iget-object v2, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->delayHandler:Landroid/os/Handler;

    sget-object v3, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->ENABLE_SECURITY_SERVICE_NOTIFY:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-direct {v1, p0, v2, v3}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;-><init>(Lcom/nianticproject/holoholo/sfida/service/Certificator;Landroid/os/Handler;Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :cond_0
    return-void
.end method
