.class public final enum Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;
.super Ljava/lang/Enum;
.source "Enums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eNotificationRepeatInterval"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAY:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

.field private static final synthetic ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

.field public static final enum HOUR:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

.field public static final enum MINUTE:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

.field public static final enum MONTH:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

.field public static final enum NONE:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

.field public static final enum WEEK:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

.field public static final enum YEAR:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->NONE:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    const-string v1, "MINUTE"

    invoke-direct {v0, v1, v4}, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->MINUTE:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    const-string v1, "HOUR"

    invoke-direct {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->HOUR:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v6}, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->DAY:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    const-string v1, "WEEK"

    invoke-direct {v0, v1, v7}, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->WEEK:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    const-string v1, "MONTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->MONTH:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    const-string v1, "YEAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->YEAR:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->NONE:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->MINUTE:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->HOUR:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->DAY:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    aput-object v1, v0, v6

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->WEEK:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->MONTH:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->YEAR:Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    aput-object v2, v0, v1

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    return-object v0
.end method

.method public static values()[Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    array-length v1, v0

    new-array v2, v1, [Lcom/voxelbusters/nativeplugins/defines/Enums$eNotificationRepeatInterval;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
