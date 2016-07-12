.class public final Lcom/google/android/gms/internal/zzax;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzqS:Ljava/lang/String;

.field private final zzqT:Lorg/json/JSONObject;

.field private final zzqU:Ljava/lang/String;

.field private final zzqV:Ljava/lang/String;

.field private final zzqW:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzqV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzax;->zzqT:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzax;->zzqU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzax;->zzqS:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzax;->zzqW:Z

    return-void
.end method


# virtual methods
.method public zzbU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzqS:Ljava/lang/String;

    return-object v0
.end method

.method public zzbV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzqV:Ljava/lang/String;

    return-object v0
.end method

.method public zzbW()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzqT:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zzbX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzqU:Ljava/lang/String;

    return-object v0
.end method

.method public zzbY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzqW:Z

    return v0
.end method
