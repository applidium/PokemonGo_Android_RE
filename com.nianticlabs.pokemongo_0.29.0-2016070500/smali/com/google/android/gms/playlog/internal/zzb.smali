.class public Lcom/google/android/gms/playlog/internal/zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/playlog/internal/zzb$1;,
        Lcom/google/android/gms/playlog/internal/zzb$zza;
    }
.end annotation


# instance fields
.field private final zzaRK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/playlog/internal/zzb$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaRL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/internal/zzb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    iput p1, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRL:I

    return-void
.end method

.method private zzBu()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzb;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzb;->getCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRL:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public zzBt()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/playlog/internal/zzb$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/playlog/internal/zzb$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/playlog/internal/zzb$zza;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;Lcom/google/android/gms/playlog/internal/zzb$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/zzb;->zzBu()V

    return-void
.end method
