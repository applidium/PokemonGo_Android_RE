.class Lcom/google/android/gms/dynamic/zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/dynamic/zzf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzapr:Lcom/google/android/gms/dynamic/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza$1;->zzapr:Lcom/google/android/gms/dynamic/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$1;->zzapr:Lcom/google/android/gms/dynamic/zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/dynamic/zza;->zza(Lcom/google/android/gms/dynamic/zza;Lcom/google/android/gms/dynamic/LifecycleDelegate;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$1;->zzapr:Lcom/google/android/gms/dynamic/zza;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zza;->zza(Lcom/google/android/gms/dynamic/zza;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/zza$zza;

    iget-object v2, p0, Lcom/google/android/gms/dynamic/zza$1;->zzapr:Lcom/google/android/gms/dynamic/zza;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zza;->zzb(Lcom/google/android/gms/dynamic/zza;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/dynamic/zza$zza;->zzb(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$1;->zzapr:Lcom/google/android/gms/dynamic/zza;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zza;->zza(Lcom/google/android/gms/dynamic/zza;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$1;->zzapr:Lcom/google/android/gms/dynamic/zza;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamic/zza;->zza(Lcom/google/android/gms/dynamic/zza;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
