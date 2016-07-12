.class public final enum Lcom/upsight/android/logger/UpsightLogger$Level;
.super Ljava/lang/Enum;
.source "UpsightLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/logger/UpsightLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/logger/UpsightLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/logger/UpsightLogger$Level;

.field public static final enum DEBUG:Lcom/upsight/android/logger/UpsightLogger$Level;

.field public static final enum ERROR:Lcom/upsight/android/logger/UpsightLogger$Level;

.field public static final enum INFO:Lcom/upsight/android/logger/UpsightLogger$Level;

.field public static final enum VERBOSE:Lcom/upsight/android/logger/UpsightLogger$Level;

.field public static final enum WARN:Lcom/upsight/android/logger/UpsightLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/upsight/android/logger/UpsightLogger$Level;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/logger/UpsightLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/logger/UpsightLogger$Level;->VERBOSE:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 33
    new-instance v0, Lcom/upsight/android/logger/UpsightLogger$Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/logger/UpsightLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/logger/UpsightLogger$Level;->DEBUG:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 34
    new-instance v0, Lcom/upsight/android/logger/UpsightLogger$Level;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/logger/UpsightLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/logger/UpsightLogger$Level;->INFO:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 35
    new-instance v0, Lcom/upsight/android/logger/UpsightLogger$Level;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v5}, Lcom/upsight/android/logger/UpsightLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/logger/UpsightLogger$Level;->WARN:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 36
    new-instance v0, Lcom/upsight/android/logger/UpsightLogger$Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/upsight/android/logger/UpsightLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/logger/UpsightLogger$Level;->ERROR:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/upsight/android/logger/UpsightLogger$Level;

    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->VERBOSE:Lcom/upsight/android/logger/UpsightLogger$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->DEBUG:Lcom/upsight/android/logger/UpsightLogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->INFO:Lcom/upsight/android/logger/UpsightLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->WARN:Lcom/upsight/android/logger/UpsightLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upsight/android/logger/UpsightLogger$Level;->ERROR:Lcom/upsight/android/logger/UpsightLogger$Level;

    aput-object v1, v0, v6

    sput-object v0, Lcom/upsight/android/logger/UpsightLogger$Level;->$VALUES:[Lcom/upsight/android/logger/UpsightLogger$Level;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/logger/UpsightLogger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/upsight/android/logger/UpsightLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/logger/UpsightLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/logger/UpsightLogger$Level;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/upsight/android/logger/UpsightLogger$Level;->$VALUES:[Lcom/upsight/android/logger/UpsightLogger$Level;

    invoke-virtual {v0}, [Lcom/upsight/android/logger/UpsightLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/logger/UpsightLogger$Level;

    return-object v0
.end method
