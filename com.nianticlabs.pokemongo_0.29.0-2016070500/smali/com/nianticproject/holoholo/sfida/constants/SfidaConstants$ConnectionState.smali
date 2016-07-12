.class public final enum Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;
.super Ljava/lang/Enum;
.source "SfidaConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field public static final enum BONDING:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field public static final enum CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field public static final enum CONNECTED:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field public static final enum CONNECT_GATT:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field public static final enum DISCOVERING_SERVICE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field public static final enum NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

.field public static final enum RE_BOND:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    const-string v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 20
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    const-string v1, "BONDING"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->BONDING:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 21
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    const-string v1, "CONNECT_GATT"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CONNECT_GATT:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 22
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    const-string v1, "DISCOVERING_SERVICE"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->DISCOVERING_SERVICE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 23
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    const-string v1, "RE_BOND"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->RE_BOND:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 24
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    const-string v1, "CERTIFICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 25
    new-instance v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CONNECTED:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->NO_CONNECTION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->BONDING:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CONNECT_GATT:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->DISCOVERING_SERVICE:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->RE_BOND:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CERTIFICATION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->CONNECTED:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->$VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->$VALUES:[Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    invoke-virtual {v0}, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$ConnectionState;

    return-object v0
.end method
