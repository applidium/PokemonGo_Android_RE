.class public final enum Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;
.super Ljava/lang/Enum;
.source "Enums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Enums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eShareOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum FB:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum GOOGLE_PLUS:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum INSTAGRAM:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum MAIL:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum MESSAGE:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum TWITTER:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum UNDEFINED:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

.field public static final enum WHATSAPP:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->UNDEFINED:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MESSAGE:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "MAIL"

    invoke-direct {v0, v1, v5}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MAIL:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "FB"

    invoke-direct {v0, v1, v6}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->FB:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "TWITTER"

    invoke-direct {v0, v1, v7}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->TWITTER:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "WHATSAPP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->WHATSAPP:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "GOOGLE_PLUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->GOOGLE_PLUS:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    new-instance v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    const-string v1, "INSTAGRAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->INSTAGRAM:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->UNDEFINED:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MESSAGE:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MAIL:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->FB:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->TWITTER:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->WHATSAPP:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->GOOGLE_PLUS:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->INSTAGRAM:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    return-object v0
.end method

.method public static values()[Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    array-length v1, v0

    new-array v2, v1, [Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
