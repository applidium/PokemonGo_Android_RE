.class public final enum Lcom/nianticlabs/nia/contextservice/ServiceStatus;
.super Ljava/lang/Enum;
.source "ServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/nia/contextservice/ServiceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/nia/contextservice/ServiceStatus;

.field public static final enum FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

.field public static final enum INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

.field public static final enum PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

.field public static final enum RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

.field public static final enum STOPPED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

.field public static final enum UNDEFINED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->UNDEFINED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 5
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v4}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->STOPPED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 6
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v5}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 7
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v6}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 8
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 9
    new-instance v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    const-string v1, "PERMISSION_DENIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->UNDEFINED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->STOPPED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->RUNNING:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->$VALUES:[Lcom/nianticlabs/nia/contextservice/ServiceStatus;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/nia/contextservice/ServiceStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->$VALUES:[Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-virtual {v0}, [Lcom/nianticlabs/nia/contextservice/ServiceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    return-object v0
.end method
