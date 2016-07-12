.class public Lcom/google/android/gms/playlog/internal/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/playlog/internal/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final zzaRM:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public final zzaRN:Lcom/google/android/gms/playlog/internal/LogEvent;

.field public final zzaRO:Lcom/google/android/gms/internal/zzsi$zzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRM:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/LogEvent;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRN:Lcom/google/android/gms/playlog/internal/LogEvent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRO:Lcom/google/android/gms/internal/zzsi$zzd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;Lcom/google/android/gms/playlog/internal/zzb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/zzb$zza;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    return-void
.end method
