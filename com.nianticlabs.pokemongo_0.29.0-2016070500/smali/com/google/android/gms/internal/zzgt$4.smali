.class final Lcom/google/android/gms/internal/zzgt$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzja$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;)Lcom/google/android/gms/internal/zzja$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzFG:Ljava/lang/String;

.field final synthetic zzFH:Lcom/google/android/gms/internal/zzce;

.field final synthetic zzoD:Lcom/google/android/gms/internal/zzcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgt$4;->zzoD:Lcom/google/android/gms/internal/zzcg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgt$4;->zzFH:Lcom/google/android/gms/internal/zzce;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgt$4;->zzFG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$4;->zzoD:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$4;->zzFH:Lcom/google/android/gms/internal/zzce;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$4;->zzoD:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcg;->zzdo()V

    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$4;->zzFG:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
