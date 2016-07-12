.class public Lcom/google/android/gms/internal/zzht;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzht$zza;
    }
.end annotation


# instance fields
.field private zzGb:Z

.field private final zzHE:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzht$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzHF:Ljava/lang/String;

.field private final zzHG:Ljava/lang/String;

.field private zzHH:J

.field private zzHI:J

.field private zzHJ:J

.field private zzHK:J

.field private zzHL:J

.field private zzHM:J

.field private final zzpV:Lcom/google/android/gms/internal/zzhu;

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHI:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzht;->zzGb:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHJ:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzht;->zzHK:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHL:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzht;->zzHF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzht;->zzHG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzHE:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzht;-><init>(Lcom/google/android/gms/internal/zzhu;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzht;->zzHF:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzht;->zzHG:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzht;->zzGb:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzht;->zzHL:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzht;->zzHI:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzht;->zzHJ:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzht;->zzHK:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzht;->zzHH:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzHE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzht$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht$zza;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public zzgf()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHI:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHI:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzht;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhu;->zzgn()Lcom/google/android/gms/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhv;->zzgf()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgg()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzht$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzht$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht$zza;->zzgk()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzht;->zzHE:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHK:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHK:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhu;->zzgn()Lcom/google/android/gms/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhv;->zzgg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzht;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgh()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzHE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzHE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzht$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht$zza;->zzgi()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht$zza;->zzgj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzht;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzi(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHL:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhu;->zzgn()Lcom/google/android/gms/internal/zzhv;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHL:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzhv;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzl(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzht;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzm(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzht;->zzHH:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzht;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzy(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHJ:J

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHJ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHI:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzht;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzz(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzht;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzht;->zzHM:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzht;->zzGb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzht;->zzpV:Lcom/google/android/gms/internal/zzhu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzhu;->zza(Lcom/google/android/gms/internal/zzht;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
