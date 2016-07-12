.class public Lcom/google/android/gms/internal/zzhu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzib$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzGg:Z

.field private zzGh:Z

.field private final zzHP:Ljava/lang/String;

.field private final zzHQ:Lcom/google/android/gms/internal/zzhv;

.field private zzHR:Ljava/math/BigInteger;

.field private final zzHS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzht;",
            ">;"
        }
    .end annotation
.end field

.field private final zzHT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhx;",
            ">;"
        }
    .end annotation
.end field

.field private zzHU:Z

.field private zzHV:I

.field private zzHW:Lcom/google/android/gms/internal/zzca;

.field private zzHX:Lcom/google/android/gms/internal/zzbk;

.field private final zzHY:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private zzHZ:Ljava/lang/Boolean;

.field private zzIa:Ljava/lang/String;

.field private zzIb:Z

.field private zzIc:Z

.field private zzov:Lcom/google/android/gms/internal/zzay;

.field private zzpA:Z

.field private zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpd:Ljava/lang/Object;

.field private zzsa:Lcom/google/android/gms/internal/zzbj;

.field private zzsb:Lcom/google/android/gms/internal/zzbi;

.field private final zzsc:Lcom/google/android/gms/internal/zzgq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzid;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHR:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHS:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHT:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHU:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzhu;->zzGg:Z

    iput v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHV:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzpA:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHW:Lcom/google/android/gms/internal/zzca;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzhu;->zzGh:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsa:Lcom/google/android/gms/internal/zzbj;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHX:Lcom/google/android/gms/internal/zzbk;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsb:Lcom/google/android/gms/internal/zzbi;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHY:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsc:Lcom/google/android/gms/internal/zzgq;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHZ:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzIb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzIc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzid;->zzgD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzhv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHP:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzhv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHQ:Lcom/google/android/gms/internal/zzhv;

    return-void
.end method


# virtual methods
.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHP:Ljava/lang/String;

    return-object v0
.end method

.method public zzA(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhu;->zzGh:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzB(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhu;->zzIb:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzE(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbk;
    .locals 9

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuT:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzgl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzsa:Lcom/google/android/gms/internal/zzbj;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzbj;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/zzbj;-><init>(Landroid/app/Application;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsa:Lcom/google/android/gms/internal/zzbj;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzsb:Lcom/google/android/gms/internal/zzbi;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzsb:Lcom/google/android/gms/internal/zzbi;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHX:Lcom/google/android/gms/internal/zzbk;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzbk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsa:Lcom/google/android/gms/internal/zzbj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhu;->zzsb:Lcom/google/android/gms/internal/zzbi;

    new-instance v4, Lcom/google/android/gms/internal/zzgq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/zzgq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/zzbk;-><init>(Lcom/google/android/gms/internal/zzbj;Lcom/google/android/gms/internal/zzbi;Lcom/google/android/gms/internal/zzgq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHX:Lcom/google/android/gms/internal/zzbk;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHX:Lcom/google/android/gms/internal/zzbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbk;->zzct()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHX:Lcom/google/android/gms/internal/zzbk;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhw;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHQ:Lcom/google/android/gms/internal/zzhv;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/zzhv;->zze(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHT:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzhx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhx;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHS:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHS:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzhw;->zza(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHS:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzGg:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzhu;->zzGg:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzib;->zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzht;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzhx;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHT:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Ljava/lang/Thread;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzgq;->zza(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzgq;

    return-void
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzpA:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzib;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)Ljava/util/concurrent/Future;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzib;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)Ljava/util/concurrent/Future;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhu;->zza(Ljava/lang/Thread;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzid;->zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzIa:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzIc:Z

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v5, Lcom/google/android/gms/internal/zzdz;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzul:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v6, v7, v0}, Lcom/google/android/gms/internal/zzdz;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzay;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdz;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzov:Lcom/google/android/gms/internal/zzay;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzgw()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbF()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzx(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzpA:Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzhu;->zzHZ:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzb(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzht;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzc(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzgq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzgq;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public zzd(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public zzd(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzGg:Z

    const-string v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHV:I

    monitor-exit v1

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzGg:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHV:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgl()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzGh:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgm()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHR:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHR:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHR:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgn()Lcom/google/android/gms/internal/zzhv;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHQ:Lcom/google/android/gms/internal/zzhv;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgo()Lcom/google/android/gms/internal/zzca;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHW:Lcom/google/android/gms/internal/zzca;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgp()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHU:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHU:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgq()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzGg:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzIc:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgr()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzIa:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgs()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHZ:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgt()Lcom/google/android/gms/internal/zzay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzov:Lcom/google/android/gms/internal/zzay;

    return-object v0
.end method

.method public zzgu()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHV:I

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzvh:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzvh:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHV:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHV:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzib;->zza(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgv()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhu;->zzIb:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzgw()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbA()Lcom/google/android/gms/internal/zzcb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzbz;)Lcom/google/android/gms/internal/zzca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHW:Lcom/google/android/gms/internal/zzca;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Cannot initialize CSI reporter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
