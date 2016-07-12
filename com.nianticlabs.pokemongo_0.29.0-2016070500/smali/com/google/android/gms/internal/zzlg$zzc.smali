.class Lcom/google/android/gms/internal/zzlg$zzc;
.super Lcom/google/android/gms/internal/zzlg$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$zzc;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public zznO()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zzg(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzli;->zzaci:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/internal/zzlg$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzlg$zza;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;Lcom/google/android/gms/signin/internal/zze;)V

    return-void
.end method
