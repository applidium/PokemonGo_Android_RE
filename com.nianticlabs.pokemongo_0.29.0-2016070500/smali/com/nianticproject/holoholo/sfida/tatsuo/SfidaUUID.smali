.class public Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;
.super Ljava/lang/Object;
.source "SfidaUUID.java"


# static fields
.field public static final SFIDA_BUTTON_NOTIF_CHAR_UUID:Ljava/util/UUID;

.field public static final SFIDA_DEV_CTRL_SVC_UUID:Ljava/util/UUID;

.field public static final SFIDA_FW_UPDATE_REQUEST:Ljava/util/UUID;

.field public static final SFIDA_FW_VERSION:Ljava/util/UUID;

.field public static final SFIDA_LED_VIBR_CTRL2_CHAR_UUID:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SFIDA_LED_VIBR_CTRL_CHAR_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide v6, 0x5c4c82b5b9939aedL    # 4.1445195045089013E136

    const-wide v4, 0x21c5046267cb63a3L    # 5.259754221374779E-146

    .line 10
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x5c4c82b5b9939aebL    # 4.1445195045089003E136

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_DEV_CTRL_SVC_UUID:Ljava/util/UUID;

    .line 12
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x5c4c82b5b9939aecL    # 4.144519504508901E136

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_LED_VIBR_CTRL_CHAR_UUID:Ljava/util/UUID;

    .line 15
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_LED_VIBR_CTRL2_CHAR_UUID:Ljava/util/UUID;

    .line 17
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_BUTTON_NOTIF_CHAR_UUID:Ljava/util/UUID;

    .line 19
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x5c4c82b5b9939aefL    # 4.1445195045089024E136

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_FW_UPDATE_REQUEST:Ljava/util/UUID;

    .line 21
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x5c4c82b5b9939af0L    # 4.144519504508903E136

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaUUID;->SFIDA_FW_VERSION:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
