.class Lcom/google/android/gms/internal/zzbd$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbd;->zzt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzrC:Ljava/lang/String;

.field final synthetic zzrH:Lcom/google/android/gms/internal/zzbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbd$5;->zzrH:Lcom/google/android/gms/internal/zzbd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbd$5;->zzrC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd$5;->zzrH:Lcom/google/android/gms/internal/zzbd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbd;->zza(Lcom/google/android/gms/internal/zzbd;)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbd$5;->zzrC:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zziz;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
