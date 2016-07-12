.class public interface abstract Lcom/google/android/gms/common/api/Api$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zzb"
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V
.end method

.method public abstract zza(Lcom/google/android/gms/common/internal/zzp;)V
.end method

.method public abstract zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzp;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zzlN()Z
.end method

.method public abstract zznz()Landroid/os/IBinder;
.end method
