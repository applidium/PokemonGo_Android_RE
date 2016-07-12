.class public final enum Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
.super Ljava/lang/Enum;
.source "GooglePlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/GooglePlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

.field public static final enum buy:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

.field public static final enum cancel:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

.field public static final enum refund:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    const-string v1, "buy"

    invoke-direct {v0, v1, v2}, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->buy:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    .line 42
    new-instance v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    const-string v1, "cancel"

    invoke-direct {v0, v1, v3}, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->cancel:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    .line 43
    new-instance v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    const-string v1, "refund"

    invoke-direct {v0, v1, v4}, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->refund:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    sget-object v1, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->buy:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->cancel:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->refund:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    aput-object v1, v0, v4

    sput-object v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->$VALUES:[Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    return-object v0
.end method

.method public static values()[Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->$VALUES:[Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    invoke-virtual {v0}, [Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    return-object v0
.end method
