.class public final Lcom/google/android/gms/internal/zzhs$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzHA:J

.field public final zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field public final zzHw:Lorg/json/JSONObject;

.field public final zzHx:Lcom/google/android/gms/internal/zzee;

.field public final zzHz:J

.field public final zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhs$zza;->zzHx:Lcom/google/android/gms/internal/zzee;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput p5, p0, Lcom/google/android/gms/internal/zzhs$zza;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzhs$zza;->zzHz:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzhs$zza;->zzHA:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzhs$zza;->zzHw:Lorg/json/JSONObject;

    return-void
.end method
