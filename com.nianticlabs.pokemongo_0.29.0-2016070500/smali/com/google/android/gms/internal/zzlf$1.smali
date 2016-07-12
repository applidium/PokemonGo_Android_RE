.class Lcom/google/android/gms/internal/zzlf$1;
.super Lcom/google/android/gms/internal/zzli$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlf;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabs:Lcom/google/android/gms/internal/zzlf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlf;Lcom/google/android/gms/internal/zzlj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf$1;->zzabs:Lcom/google/android/gms/internal/zzlf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzli$zzb;-><init>(Lcom/google/android/gms/internal/zzlj;)V

    return-void
.end method


# virtual methods
.method public zznO()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf$1;->zzabs:Lcom/google/android/gms/internal/zzlf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlf;->onConnectionSuspended(I)V

    return-void
.end method
