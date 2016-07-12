.class public final Lcom/google/android/gms/common/internal/zzj$zzd;
.super Lcom/google/android/gms/common/internal/zzr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field private zzafM:Lcom/google/android/gms/common/internal/zzj;

.field private final zzafN:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzr$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafM:Lcom/google/android/gms/common/internal/zzj;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafN:I

    return-void
.end method

.method private zzpj()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafM:Lcom/google/android/gms/common/internal/zzj;

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafM:Lcom/google/android/gms/common/internal/zzj;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafM:Lcom/google/android/gms/common/internal/zzj;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafN:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/zzj;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj$zzd;->zzpj()V

    return-void
.end method

.method public zzb(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafM:Lcom/google/android/gms/common/internal/zzj;

    const-string v1, "onAccountValidationComplete can be called only once per call to validateAccount"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafM:Lcom/google/android/gms/common/internal/zzj;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzj$zzd;->zzafN:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/common/internal/zzj;->zza(ILandroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj$zzd;->zzpj()V

    return-void
.end method
