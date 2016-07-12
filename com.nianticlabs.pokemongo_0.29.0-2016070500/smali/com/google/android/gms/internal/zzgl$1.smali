.class Lcom/google/android/gms/internal/zzgl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgl;->zzbn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzDD:Lcom/google/android/gms/internal/zzgl;

.field final synthetic zzpF:Lcom/google/android/gms/internal/zzhs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzhs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgl$1;->zzDD:Lcom/google/android/gms/internal/zzgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgl$1;->zzpF:Lcom/google/android/gms/internal/zzhs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl$1;->zzDD:Lcom/google/android/gms/internal/zzgl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzgg$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgl$1;->zzpF:Lcom/google/android/gms/internal/zzhs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgg$zza;->zzb(Lcom/google/android/gms/internal/zzhs;)V

    return-void
.end method
