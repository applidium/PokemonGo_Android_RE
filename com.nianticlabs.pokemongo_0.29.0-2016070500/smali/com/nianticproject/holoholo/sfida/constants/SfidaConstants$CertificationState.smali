.class public final enum Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;
.super Ljava/lang/Enum;
.source "SfidaConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field public static final enum CERTIFICATION_COMPLETE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field public static final enum DUMMY_CERTIFICATION_CHALLENGE_1:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field public static final enum DUMMY_CERTIFICATION_CHALLENGE_2:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field public static final enum DUMMY_CERTIFICATION_CHALLENGE_3:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field public static final enum ENABLE_SECURITY_SERVICE_NOTIFY:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field public static final enum NO_CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    const-string v1, "NO_CERTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->NO_CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 31
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    const-string v1, "ENABLE_SECURITY_SERVICE_NOTIFY"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->ENABLE_SECURITY_SERVICE_NOTIFY:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 32
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    const-string v1, "DUMMY_CERTIFICATION_CHALLENGE_1"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_1:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 33
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    const-string v1, "DUMMY_CERTIFICATION_CHALLENGE_2"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_2:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 34
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    const-string v1, "DUMMY_CERTIFICATION_CHALLENGE_3"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_3:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 35
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    const-string v1, "CERTIFICATION_COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->CERTIFICATION_COMPLETE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->NO_CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->ENABLE_SECURITY_SERVICE_NOTIFY:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_1:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_2:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->DUMMY_CERTIFICATION_CHALLENGE_3:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->CERTIFICATION_COMPLETE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->$VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->$VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-virtual {v0}, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    return-object v0
.end method
