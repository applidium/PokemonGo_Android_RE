.class final enum Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;
.super Ljava/lang/Enum;
.source "GoogleApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

.field public static final enum STARTED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

.field public static final enum STARTING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

.field public static final enum START_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

.field public static final enum STOPPED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

.field public static final enum STOPPING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

.field public static final enum STOP_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 47
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    const-string v1, "START_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->START_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 48
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 49
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 50
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    const-string v1, "STOP_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOP_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 51
    new-instance v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->START_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STARTED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPING:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOP_FAILED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->STOPPED:Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->$VALUES:[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->$VALUES:[Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    invoke-virtual {v0}, [Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/nia/contextservice/GoogleApiManager$State;

    return-object v0
.end method
