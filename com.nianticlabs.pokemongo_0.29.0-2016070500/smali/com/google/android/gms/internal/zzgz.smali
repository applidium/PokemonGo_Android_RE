.class public final Lcom/google/android/gms/internal/zzgz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgz$zza;
    }
.end annotation


# instance fields
.field private zzGO:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzgz$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzGO:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public zzC(Landroid/content/Context;)Lcom/google/android/gms/internal/zzgy;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgz;->zzGO:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgz$zza;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgz$zza;->hasExpired()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzby;->zzvm:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzgy$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgz$zza;->zzGQ:Lcom/google/android/gms/internal/zzgy;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/zzgy$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgy;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy$zza;->zzfX()Lcom/google/android/gms/internal/zzgy;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgz;->zzGO:Ljava/util/WeakHashMap;

    new-instance v2, Lcom/google/android/gms/internal/zzgz$zza;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzgz$zza;-><init>(Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zzgy;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzgy$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzgy$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgy$zza;->zzfX()Lcom/google/android/gms/internal/zzgy;

    move-result-object v0

    goto :goto_0
.end method
