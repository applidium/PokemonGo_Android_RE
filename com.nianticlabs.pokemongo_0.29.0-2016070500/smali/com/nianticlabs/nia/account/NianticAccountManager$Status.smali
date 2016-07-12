.class public final enum Lcom/nianticlabs/nia/account/NianticAccountManager$Status;
.super Ljava/lang/Enum;
.source "NianticAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/account/NianticAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/nia/account/NianticAccountManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

.field public static final enum NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

.field public static final enum OK:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

.field public static final enum SIGNING_OUT:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

.field public static final enum UNDEFINED:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

.field public static final enum USER_CANCELED_LOGIN:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->UNDEFINED:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    .line 30
    new-instance v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3, v3}, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->OK:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    .line 31
    new-instance v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v1, "NON_RECOVERABLE_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    .line 32
    new-instance v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v1, "SIGNING_OUT"

    invoke-direct {v0, v1, v5, v5}, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->SIGNING_OUT:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    .line 33
    new-instance v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v1, "USER_CANCELED_LOGIN"

    invoke-direct {v0, v1, v6, v6}, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->USER_CANCELED_LOGIN:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    sget-object v1, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->UNDEFINED:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->OK:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->SIGNING_OUT:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->USER_CANCELED_LOGIN:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->$VALUES:[Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->id:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/nia/account/NianticAccountManager$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/nia/account/NianticAccountManager$Status;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->$VALUES:[Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    invoke-virtual {v0}, [Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    return-object v0
.end method
