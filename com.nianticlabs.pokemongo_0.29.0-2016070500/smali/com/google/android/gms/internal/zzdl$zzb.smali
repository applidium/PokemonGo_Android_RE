.class Lcom/google/android/gms/internal/zzdl$zzb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzxF:Ljava/lang/String;

.field private final zzxG:Ljava/net/URL;

.field private final zzxH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzdl$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzxI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzdl$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxF:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxG:Ljava/net/URL;

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxH:Ljava/util/ArrayList;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxI:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxH:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public zzdE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxF:Ljava/lang/String;

    return-object v0
.end method

.method public zzdF()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxG:Ljava/net/URL;

    return-object v0
.end method

.method public zzdG()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzdl$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxH:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zzdH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzb;->zzxI:Ljava/lang/String;

    return-object v0
.end method
