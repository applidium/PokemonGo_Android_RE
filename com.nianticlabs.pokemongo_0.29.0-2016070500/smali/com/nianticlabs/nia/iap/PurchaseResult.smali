.class final enum Lcom/nianticlabs/nia/iap/PurchaseResult;
.super Ljava/lang/Enum;
.source "PurchaseResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/nia/iap/PurchaseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum BALANCE_TOO_LOW:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum IN_PROGRESS:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum NO_PURCHASE:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum PURCHASE_DEFERRED:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum SUCCESS:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum UNDEFINED:Lcom/nianticlabs/nia/iap/PurchaseResult;

.field public static final enum USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->UNDEFINED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 10
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "NO_PURCHASE"

    invoke-direct {v0, v1, v4}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->NO_PURCHASE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 12
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 14
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "BALANCE_TOO_LOW"

    invoke-direct {v0, v1, v6}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BALANCE_TOO_LOW:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 16
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "SKU_NOT_AVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 18
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->IN_PROGRESS:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 20
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SUCCESS:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 22
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "PURCHASE_DEFERRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->PURCHASE_DEFERRED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 24
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "USER_CANCELLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 26
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    const-string v1, "BILLING_UNAVAILABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/nia/iap/PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    .line 6
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/nianticlabs/nia/iap/PurchaseResult;

    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseResult;->UNDEFINED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseResult;->NO_PURCHASE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseResult;->BALANCE_TOO_LOW:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticlabs/nia/iap/PurchaseResult;->IN_PROGRESS:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticlabs/nia/iap/PurchaseResult;->SUCCESS:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticlabs/nia/iap/PurchaseResult;->PURCHASE_DEFERRED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->$VALUES:[Lcom/nianticlabs/nia/iap/PurchaseResult;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/PurchaseResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/nia/iap/PurchaseResult;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/nia/iap/PurchaseResult;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->$VALUES:[Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-virtual {v0}, [Lcom/nianticlabs/nia/iap/PurchaseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/nia/iap/PurchaseResult;

    return-object v0
.end method
