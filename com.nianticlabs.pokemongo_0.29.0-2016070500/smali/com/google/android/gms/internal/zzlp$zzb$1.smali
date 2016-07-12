.class Lcom/google/android/gms/internal/zzlp$zzb$1;
.super Lcom/google/android/gms/internal/zzll;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlp$zzb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacW:Landroid/app/Dialog;

.field final synthetic zzacX:Lcom/google/android/gms/internal/zzlp$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlp$zzb;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp$zzb$1;->zzacX:Lcom/google/android/gms/internal/zzlp$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp$zzb$1;->zzacW:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzll;-><init>()V

    return-void
.end method


# virtual methods
.method protected zzoi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb$1;->zzacX:Lcom/google/android/gms/internal/zzlp$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zzc(Lcom/google/android/gms/internal/zzlp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb$1;->zzacW:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
