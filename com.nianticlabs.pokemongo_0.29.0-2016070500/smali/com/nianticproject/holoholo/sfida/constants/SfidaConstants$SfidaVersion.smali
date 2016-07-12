.class public final enum Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;
.super Ljava/lang/Enum;
.source "SfidaConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SfidaVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

.field public static final enum ALPHA_NO_SEC:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

.field public static final enum ALPHA_SEC:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

.field public static final enum BETA1:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

.field public static final enum BETA4:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    const-string v1, "ALPHA_NO_SEC"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ALPHA_NO_SEC:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    .line 12
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    const-string v1, "ALPHA_SEC"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ALPHA_SEC:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    .line 13
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    const-string v1, "BETA1"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->BETA1:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    .line 14
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    const-string v1, "BETA4"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->BETA4:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ALPHA_NO_SEC:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ALPHA_SEC:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->BETA1:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->BETA4:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->$VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->$VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    invoke-virtual {v0}, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    return-object v0
.end method
