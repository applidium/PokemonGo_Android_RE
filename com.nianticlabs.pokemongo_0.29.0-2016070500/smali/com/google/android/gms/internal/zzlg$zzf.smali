.class Lcom/google/android/gms/internal/zzlg$zzf;
.super Lcom/google/android/gms/internal/zzlg$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzf"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;

.field private final zzabX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabX:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public zznO()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzaci:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzh(Lcom/google/android/gms/internal/zzlg;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzlg;->zzg(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
