.class Lcom/google/android/gms/internal/zzaz$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaz;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/view/View;Lcom/google/android/gms/internal/zzdz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzis$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzbe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzrv:Lorg/json/JSONObject;

.field final synthetic zzrw:Lcom/google/android/gms/internal/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaz;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaz$1;->zzrw:Lcom/google/android/gms/internal/zzaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaz$1;->zzrv:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzbe;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz$1;->zzrw:Lcom/google/android/gms/internal/zzaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaz$1;->zzrv:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaz;->zza(Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaz$1;->zzb(Lcom/google/android/gms/internal/zzbe;)V

    return-void
.end method
