.class public final enum Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;
.super Ljava/lang/Enum;
.source "SharingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eShareCategeories"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

.field public static final enum TEXT:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

.field public static final enum UNDEFINED:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;->UNDEFINED:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    new-instance v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;->TEXT:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    sget-object v1, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;->UNDEFINED:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;->TEXT:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    aput-object v1, v0, v3

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    return-object v0
.end method

.method public static values()[Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;->ENUM$VALUES:[Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    array-length v1, v0

    new-array v2, v1, [Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
