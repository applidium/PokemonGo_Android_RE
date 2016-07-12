.class public final enum Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;
.super Ljava/lang/Enum;
.source "Enums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eLoadScoresType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

.field public static final enum More:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

.field public static final enum PlayerCentered:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

.field public static final enum Top:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    const-string v1, "PlayerCentered"

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->PlayerCentered:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3}, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->Top:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    const-string v1, "More"

    invoke-direct {v0, v1, v4}, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->More:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->PlayerCentered:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->Top:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->More:Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    return-object v0
.end method

.method public static values()[Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    array-length v1, v0

    new-array v2, v1, [Lcom/voxelbusters/nativeplugins/defines/Enums$eLoadScoresType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
