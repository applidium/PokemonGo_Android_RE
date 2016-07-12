.class Lcom/google/android/gms/internal/zzja$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private zzJX:Lcom/google/android/gms/ads/internal/overlay/zzg;

.field private zzKj:Lcom/google/android/gms/internal/zziz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/ads/internal/overlay/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzKj:Lcom/google/android/gms/internal/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzJX:Lcom/google/android/gms/ads/internal/overlay/zzg;

    return-void
.end method


# virtual methods
.method public zzaV()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzJX:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzaV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzKj:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzgY()V

    return-void
.end method

.method public zzaW()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzJX:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzaW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzc;->zzKj:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzeJ()V

    return-void
.end method
