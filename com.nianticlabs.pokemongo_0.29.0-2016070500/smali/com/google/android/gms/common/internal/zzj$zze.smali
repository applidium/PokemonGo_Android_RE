.class public final Lcom/google/android/gms/common/internal/zzj$zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzafK:Lcom/google/android/gms/common/internal/zzj;

.field private final zzafN:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafN:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj$zze;, "Lcom/google/android/gms/common/internal/zzj<TT;>.zze;"
    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzs$zza;->zzaK(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/internal/zzs;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafN:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zzbF(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/internal/zzj$zze;, "Lcom/google/android/gms/common/internal/zzj<TT;>.zze;"
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafN:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
