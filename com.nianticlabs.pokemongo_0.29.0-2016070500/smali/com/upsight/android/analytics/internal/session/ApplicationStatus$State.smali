.class public final enum Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
.super Ljava/lang/Enum;
.source "ApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

.field public static final enum BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

.field public static final enum FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 29
    new-instance v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    sget-object v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->$VALUES:[Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->$VALUES:[Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {v0}, [Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    return-object v0
.end method
