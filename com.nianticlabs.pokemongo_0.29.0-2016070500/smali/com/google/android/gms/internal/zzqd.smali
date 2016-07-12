.class public Lcom/google/android/gms/internal/zzqd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqd$zza;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

.field private zzaRF:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqd$zza;ZLjava/lang/String;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqd;->zzaRF:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    new-instance v1, Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/playlog/internal/zzd;

    move-object/from16 v0, p5

    invoke-direct {v13, v0}, Lcom/google/android/gms/playlog/internal/zzd;-><init>(Lcom/google/android/gms/internal/zzqd$zza;)V

    new-instance v3, Lcom/google/android/gms/common/internal/zzf;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x31

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v9, v2

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqx;)V

    invoke-direct {v1, p1, v12, v13, v3}, Lcom/google/android/gms/playlog/internal/zzf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/playlog/internal/zzd;Lcom/google/android/gms/common/internal/zzf;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    return-void

    :catch_0
    move-exception v1

    const-string v4, "PlayLogger"

    const-string v5, "This can\'t happen."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzf;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/zzf;->stop()V

    return-void
.end method

.method public varargs zza(JLjava/lang/String;[B[Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzqd;->zzaRF:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    new-instance v1, Lcom/google/android/gms/playlog/internal/LogEvent;

    const-wide/16 v4, 0x0

    move-wide v2, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/playlog/internal/LogEvent;-><init>(JJLjava/lang/String;[B[Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzb(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    return-void
.end method

.method public varargs zzb(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzqd;->zza(JLjava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method
