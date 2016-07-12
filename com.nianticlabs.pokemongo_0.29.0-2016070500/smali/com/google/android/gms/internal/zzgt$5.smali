.class Lcom/google/android/gms/internal/zzgt$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdz$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdz$zzb",
        "<",
        "Lcom/google/android/gms/internal/zzbb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzFL:Lcom/google/android/gms/internal/zzgt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgt$5;->zzFL:Lcom/google/android/gms/internal/zzgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbb;)V
    .locals 2

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzdj;->zzxv:Lcom/google/android/gms/internal/zzdk;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgt$5;->zza(Lcom/google/android/gms/internal/zzbb;)V

    return-void
.end method
