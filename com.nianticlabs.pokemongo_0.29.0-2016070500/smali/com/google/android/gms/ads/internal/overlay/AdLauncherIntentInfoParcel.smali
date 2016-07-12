.class public final Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/overlay/zzb;


# instance fields
.field public final intentAction:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final versionCode:I

.field public final zzAL:Ljava/lang/String;

.field public final zzAM:Ljava/lang/String;

.field public final zzAN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/overlay/zzb;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "intentAction"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Ljava/lang/String;
    .param p7, "intentFlagsString"    # Ljava/lang/String;
    .param p8, "intentExtrasString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->intentAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->zzAL:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->zzAM:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->zzAN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "intentFlagsString"    # Ljava/lang/String;
    .param p7, "intentExtrasString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzb;->zza(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method
