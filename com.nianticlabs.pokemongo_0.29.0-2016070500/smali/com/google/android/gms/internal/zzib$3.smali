.class final Lcom/google/android/gms/internal/zzib$3;
.super Lcom/google/android/gms/internal/zzib$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzib;->zza(Landroid/content/Context;I)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzIq:I

.field final synthetic zzry:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib$3;->zzry:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/internal/zzib$3;->zzIq:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzib$zza;-><init>(Lcom/google/android/gms/internal/zzib$1;)V

    return-void
.end method


# virtual methods
.method public zzbn()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$3;->zzry:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzib;->zzG(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "webview_cache_version"

    iget v2, p0, Lcom/google/android/gms/internal/zzib$3;->zzIq:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
