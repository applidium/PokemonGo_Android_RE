.class public Lcom/google/android/gms/internal/zzhh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzHf:Lcom/google/android/gms/internal/zzhl;

.field private final zzzo:Lcom/google/android/gms/internal/zzen;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzen;Lcom/google/android/gms/internal/zzhk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhh;->zzzo:Lcom/google/android/gms/internal/zzen;

    new-instance v0, Lcom/google/android/gms/internal/zzhl;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzhl;-><init>(Lcom/google/android/gms/internal/zzhk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhh;->zzHf:Lcom/google/android/gms/internal/zzhl;

    return-void
.end method


# virtual methods
.method public zzgc()Lcom/google/android/gms/internal/zzen;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->zzzo:Lcom/google/android/gms/internal/zzen;

    return-object v0
.end method

.method public zzgd()Lcom/google/android/gms/internal/zzhl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->zzHf:Lcom/google/android/gms/internal/zzhl;

    return-object v0
.end method
