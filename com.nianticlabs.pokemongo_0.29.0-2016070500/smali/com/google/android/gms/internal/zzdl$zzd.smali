.class Lcom/google/android/gms/internal/zzdl$zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final zzwq:Ljava/lang/String;

.field private final zzxF:Ljava/lang/String;

.field private final zzxM:I

.field private final zzxN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdl$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdl$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzxF:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzxM:I

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzxN:Ljava/util/List;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzwq:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzxN:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzwq:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzxM:I

    return v0
.end method

.method public zzdE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzxF:Ljava/lang/String;

    return-object v0
.end method

.method public zzdJ()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/internal/zzdl$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzd;->zzxN:Ljava/util/List;

    return-object v0
.end method
