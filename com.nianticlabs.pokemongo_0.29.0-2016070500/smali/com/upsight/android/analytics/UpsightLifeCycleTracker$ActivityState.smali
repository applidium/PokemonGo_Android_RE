.class public final enum Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
.super Ljava/lang/Enum;
.source "UpsightLifeCycleTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

.field public static final enum CREATED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

.field public static final enum DESTROYED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

.field public static final enum PAUSED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

.field public static final enum RESUMED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

.field public static final enum STARTED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

.field public static final enum STOPPED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->CREATED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .line 23
    new-instance v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STARTED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .line 24
    new-instance v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v5}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->RESUMED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .line 25
    new-instance v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->PAUSED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .line 26
    new-instance v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v7}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STOPPED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .line 27
    new-instance v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    const-string v1, "DESTROYED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->DESTROYED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->CREATED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STARTED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->RESUMED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->PAUSED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STOPPED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->DESTROYED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->$VALUES:[Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->$VALUES:[Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    invoke-virtual {v0}, [Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    return-object v0
.end method
