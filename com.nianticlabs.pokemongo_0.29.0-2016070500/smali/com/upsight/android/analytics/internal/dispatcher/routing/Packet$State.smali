.class public final enum Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
.super Ljava/lang/Enum;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

.field public static final enum DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

.field public static final enum TRASHED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

.field public static final enum UNDELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    const-string v1, "UNDELIVERED"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->UNDELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 19
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    const-string v1, "DELIVERED"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 20
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    const-string v1, "TRASHED"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->TRASHED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    sget-object v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->UNDELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->DELIVERED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->TRASHED:Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->$VALUES:[Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->$VALUES:[Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    invoke-virtual {v0}, [Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet$State;

    return-object v0
.end method
