.class final enum Lcom/voxelbusters/nativeplugins/features/ui/eUiType;
.super Ljava/lang/Enum;
.source "UiHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxelbusters/nativeplugins/features/ui/eUiType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALERT_DIALOG:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

.field private static final synthetic ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

.field public static final enum LOGIN_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

.field public static final enum SINGLE_FIELD_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    const-string v1, "ALERT_DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ALERT_DIALOG:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    new-instance v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    const-string v1, "SINGLE_FIELD_PROMPT"

    invoke-direct {v0, v1, v3}, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->SINGLE_FIELD_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    new-instance v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    const-string v1, "LOGIN_PROMPT"

    invoke-direct {v0, v1, v4}, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->LOGIN_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    sget-object v1, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ALERT_DIALOG:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->SINGLE_FIELD_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->LOGIN_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/nativeplugins/features/ui/eUiType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    return-object v0
.end method

.method public static values()[Lcom/voxelbusters/nativeplugins/features/ui/eUiType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    array-length v1, v0

    new-array v2, v1, [Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
