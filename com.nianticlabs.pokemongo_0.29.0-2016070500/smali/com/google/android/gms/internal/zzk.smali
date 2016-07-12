.class public abstract Lcom/google/android/gms/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/zzk",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final zzD:Lcom/google/android/gms/internal/zzs$zza;

.field private final zzE:I

.field private final zzF:Ljava/lang/String;

.field private final zzG:I

.field private final zzH:Lcom/google/android/gms/internal/zzm$zza;

.field private zzI:Ljava/lang/Integer;

.field private zzJ:Lcom/google/android/gms/internal/zzl;

.field private zzK:Z

.field private zzL:Z

.field private zzM:Z

.field private zzN:J

.field private zzO:Lcom/google/android/gms/internal/zzo;

.field private zzP:Lcom/google/android/gms/internal/zzb$zza;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zza;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/internal/zzs$zza;->zzak:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzs$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzs$zza;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzD:Lcom/google/android/gms/internal/zzs$zza;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzk;->zzK:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzk;->zzL:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzk;->zzM:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzk;->zzN:J

    iput-object v1, p0, Lcom/google/android/gms/internal/zzk;->zzP:Lcom/google/android/gms/internal/zzb$zza;

    iput p1, p0, Lcom/google/android/gms/internal/zzk;->zzE:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzk;->zzF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzk;->zzH:Lcom/google/android/gms/internal/zzm$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzk;->zza(Lcom/google/android/gms/internal/zzo;)Lcom/google/android/gms/internal/zzk;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzk;->zzb(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzk;->zzG:I

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private zza(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzs$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzD:Lcom/google/android/gms/internal/zzs$zza;

    return-object v0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzk;, "Lcom/google/android/gms/internal/zzk<TT;>;"
    check-cast p1, Lcom/google/android/gms/internal/zzk;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzk;->zzc(Lcom/google/android/gms/internal/zzk;)I

    move-result v0

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzk;->zzE:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzF:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzk;->zzL:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzk;->zzL:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzs()Lcom/google/android/gms/internal/zzk$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzk;->zzI:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/zzk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzI:Ljava/lang/Integer;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzb$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzk;->zzP:Lcom/google/android/gms/internal/zzb$zza;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzl;)Lcom/google/android/gms/internal/zzk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzl;",
            ")",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzk;->zzJ:Lcom/google/android/gms/internal/zzl;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzo;)Lcom/google/android/gms/internal/zzk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzo;",
            ")",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzk;->zzO:Lcom/google/android/gms/internal/zzo;

    return-object p0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzi;",
            ")",
            "Lcom/google/android/gms/internal/zzm",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract zza(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzr;
    .locals 0

    return-object p1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzk;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzk",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzs()Lcom/google/android/gms/internal/zzk$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzk;->zzs()Lcom/google/android/gms/internal/zzk$zza;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzI:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzk;->zzI:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzk$zza;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzk$zza;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzH:Lcom/google/android/gms/internal/zzm$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzH:Lcom/google/android/gms/internal/zzm$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzm$zza;->zze(Lcom/google/android/gms/internal/zzr;)V

    :cond_0
    return-void
.end method

.method public zzc(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/internal/zzs$zza;->zzak:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzD:Lcom/google/android/gms/internal/zzs$zza;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzs$zza;->zza(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzk;->zzN:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzk;->zzN:J

    goto :goto_0
.end method

.method zzd(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzJ:Lcom/google/android/gms/internal/zzl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzJ:Lcom/google/android/gms/internal/zzl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzl;->zzf(Lcom/google/android/gms/internal/zzk;)V

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzs$zza;->zzak:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/zzk$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzk$1;-><init>(Lcom/google/android/gms/internal/zzk;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzk;->zzD:Lcom/google/android/gms/internal/zzs$zza;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/zzs$zza;->zza(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzD:Lcom/google/android/gms/internal/zzs$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzs$zza;->zzd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzk;->zzN:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzk;->zzG:I

    return v0
.end method

.method public zzh()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzi()Lcom/google/android/gms/internal/zzb$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzP:Lcom/google/android/gms/internal/zzb$zza;

    return-object v0
.end method

.method protected zzj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzn()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected zzk()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzm()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzn()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzo()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public zzp()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzq()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzn()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzk;->zzo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzk;->zza(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzk;->zzK:Z

    return v0
.end method

.method public zzs()Lcom/google/android/gms/internal/zzk$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzk$zza;->zzU:Lcom/google/android/gms/internal/zzk$zza;

    return-object v0
.end method

.method public final zzt()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzO:Lcom/google/android/gms/internal/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzo;->zzd()I

    move-result v0

    return v0
.end method

.method public zzu()Lcom/google/android/gms/internal/zzo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzk;->zzO:Lcom/google/android/gms/internal/zzo;

    return-object v0
.end method

.method public zzv()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzk;->zzM:Z

    return-void
.end method

.method public zzw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzk;->zzM:Z

    return v0
.end method
