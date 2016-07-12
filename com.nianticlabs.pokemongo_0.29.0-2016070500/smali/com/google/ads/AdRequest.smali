.class public final Lcom/google/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdRequest$Gender;,
        Lcom/google/ads/AdRequest$ErrorCode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Ads"

.field public static final TEST_EMULATOR:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "0.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
