.class final Lcom/google/android/gms/internal/zzib$4;
.super Lcom/google/android/gms/internal/zzib$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzib;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzIp:Lcom/google/android/gms/internal/zzib$zzb;

.field final synthetic zzry:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib$4;->zzry:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzib$4;->zzIp:Lcom/google/android/gms/internal/zzib$zzb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzib$zza;-><init>(Lcom/google/android/gms/internal/zzib$1;)V

    return-void
.end method


# virtual methods
.method public zzbn()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$4;->zzry:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzib;->zzG(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "webview_cache_version"

    const-string v3, "webview_cache_version"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$4;->zzIp:Lcom/google/android/gms/internal/zzib$zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$4;->zzIp:Lcom/google/android/gms/internal/zzib$zzb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzib$zzb;->zzd(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
