.class public final Lcom/google/android/gms/internal/zzgv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private zzBY:Ljava/lang/String;

.field private zzFO:Ljava/lang/String;

.field private zzFP:Lcom/google/android/gms/internal/zzin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzin",
            "<",
            "Lcom/google/android/gms/internal/zzgx;",
            ">;"
        }
    .end annotation
.end field

.field zzFQ:Lcom/google/android/gms/internal/zzdz$zzd;

.field public final zzFR:Lcom/google/android/gms/internal/zzdk;

.field public final zzFS:Lcom/google/android/gms/internal/zzdk;

.field zzoM:Lcom/google/android/gms/internal/zziz;

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzpd:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzin;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzFP:Lcom/google/android/gms/internal/zzin;

    new-instance v0, Lcom/google/android/gms/internal/zzgv$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgv$1;-><init>(Lcom/google/android/gms/internal/zzgv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzFR:Lcom/google/android/gms/internal/zzdk;

    new-instance v0, Lcom/google/android/gms/internal/zzgv$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgv$2;-><init>(Lcom/google/android/gms/internal/zzgv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzFS:Lcom/google/android/gms/internal/zzdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgv;->zzFO:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv;->zzBY:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgv;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzpd:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzin;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzFP:Lcom/google/android/gms/internal/zzin;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzgv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzBY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzgv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzFO:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzdz$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv;->zzFQ:Lcom/google/android/gms/internal/zzdz$zzd;

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zziz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv;->zzoM:Lcom/google/android/gms/internal/zziz;

    return-void
.end method

.method public zzfR()Lcom/google/android/gms/internal/zzdz$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzFQ:Lcom/google/android/gms/internal/zzdz$zzd;

    return-object v0
.end method

.method public zzfS()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzgx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzFP:Lcom/google/android/gms/internal/zzin;

    return-object v0
.end method

.method public zzfT()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzoM:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgv;->zzoM:Lcom/google/android/gms/internal/zziz;

    :cond_0
    return-void
.end method
