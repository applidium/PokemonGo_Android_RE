.class public final Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final zzEA:Ljava/lang/String;

.field public final zzEB:J

.field public final zzEC:Ljava/lang/String;

.field public final zzED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzEE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzEG:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

.field public final zzEH:Ljava/lang/String;

.field public final zzEm:Landroid/os/Bundle;

.field public final zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzEo:Landroid/content/pm/PackageInfo;

.field public final zzEq:Ljava/lang/String;

.field public final zzEr:Ljava/lang/String;

.field public final zzEs:Landroid/os/Bundle;

.field public final zzEt:I

.field public final zzEu:Landroid/os/Bundle;

.field public final zzEv:Z

.field public final zzEw:Landroid/os/Messenger;

.field public final zzEx:I

.field public final zzEy:I

.field public final zzEz:F

.field public final zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field public final zzqD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzqg:Ljava/lang/String;

.field public final zzqh:Ljava/lang/String;

.field public final zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Lcom/google/android/gms/ads/internal/request/CapabilityParcel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEm:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEo:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEq:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEr:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEs:Landroid/os/Bundle;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEv:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEw:Landroid/os/Messenger;

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEx:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEy:I

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEz:F

    if-eqz p11, :cond_0

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEt:I

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqD:Ljava/util/List;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEE:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEu:Landroid/os/Bundle;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEA:Ljava/lang/String;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEB:J

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEC:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzED:Ljava/util/List;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqg:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEG:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEH:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEt:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqD:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzEE:Ljava/util/List;

    goto :goto_0
.end method
