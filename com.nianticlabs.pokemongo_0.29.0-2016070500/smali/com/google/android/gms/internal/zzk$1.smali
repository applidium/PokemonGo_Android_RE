.class Lcom/google/android/gms/internal/zzk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzk;->zzd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQ:Ljava/lang/String;

.field final synthetic zzR:J

.field final synthetic zzS:Lcom/google/android/gms/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzk;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzk$1;->zzS:Lcom/google/android/gms/internal/zzk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzk$1;->zzQ:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzk$1;->zzR:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk$1;->zzS:Lcom/google/android/gms/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzk;->zzd(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzs$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzk$1;->zzQ:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzk$1;->zzR:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzs$zza;->zza(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk$1;->zzS:Lcom/google/android/gms/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzk;->zzd(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzs$zza;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzs$zza;->zzd(Ljava/lang/String;)V

    return-void
.end method
