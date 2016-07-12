.class public final Lcom/google/android/gms/common/stats/zzd;
.super Ljava/lang/Object;


# static fields
.field public static LOG_LEVEL_OFF:I

.field public static final zzahN:Landroid/content/ComponentName;

.field public static zzahO:I

.field public static zzahP:I

.field public static zzahQ:I

.field public static zzahR:I

.field public static zzahS:I

.field public static zzahT:I

.field public static zzahU:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzd;->zzahN:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzahO:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzahP:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzahQ:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzahR:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzahS:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzahT:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzahU:I

    return-void
.end method
