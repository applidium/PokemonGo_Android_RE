.class public final Lcom/google/android/gms/internal/zzml;
.super Ljava/lang/Object;


# static fields
.field private static zzaij:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzml;->zzaij:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zzan(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static zzca(I)I
    .locals 1

    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static zzcb(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
