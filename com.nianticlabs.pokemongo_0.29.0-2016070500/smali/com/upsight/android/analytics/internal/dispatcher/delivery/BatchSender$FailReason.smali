.class final enum Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;
.super Ljava/lang/Enum;
.source "BatchSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FailReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

.field public static final enum NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

.field public static final enum SERVER:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->SERVER:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    sget-object v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->SERVER:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->$VALUES:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->$VALUES:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    invoke-virtual {v0}, [Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    return-object v0
.end method
