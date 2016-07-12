.class public Lcom/google/android/gms/internal/zzbk;
.super Ljava/lang/Thread;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbk$zza;
    }
.end annotation


# instance fields
.field private mStarted:Z

.field private zzam:Z

.field private final zzpd:Ljava/lang/Object;

.field private final zzrN:I

.field private final zzrP:I

.field private zzrZ:Z

.field private final zzsa:Lcom/google/android/gms/internal/zzbj;

.field private final zzsb:Lcom/google/android/gms/internal/zzbi;

.field private final zzsc:Lcom/google/android/gms/internal/zzgq;

.field private final zzsd:I

.field private final zzse:I

.field private final zzsf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbj;Lcom/google/android/gms/internal/zzbi;Lcom/google/android/gms/internal/zzgq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->mStarted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrZ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzam:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbk;->zzsa:Lcom/google/android/gms/internal/zzbj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbk;->zzsb:Lcom/google/android/gms/internal/zzbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbk;->zzsc:Lcom/google/android/gms/internal/zzgq;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzpd:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuU:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrN:I

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuV:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbk;->zzse:I

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuW:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrP:I

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuX:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbk;->zzsf:I

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuY:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbk;->zzsd:I

    const-string v0, "ContentFetchTask"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbk;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzam:Z

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbk;->zzcu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzsa:Lcom/google/android/gms/internal/zzbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbj;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentFetchThread: no activity"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzsc:Lcom/google/android/gms/internal/zzgq;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzgq;->zza(Ljava/lang/Throwable;Z)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :goto_2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrZ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    const-string v0, "ContentFetchTask: waiting"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzpd:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/app/Activity;)V

    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/zzbk;->zzsd:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_1
    const-string v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbk;->zzcw()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_2
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_3
    return-void
.end method

.method public wakeup()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzpd:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "ContentFetchThread: wakeup"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zza(Landroid/view/View;Lcom/google/android/gms/internal/zzbh;)Lcom/google/android/gms/internal/zzbk$zza;
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzbh;->zzw(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {v1, p0, v3, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/google/android/gms/internal/zziz;

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbh;->zzcp()V

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzbh;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {v1, p0, v0, v3}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    check-cast p1, Landroid/view/ViewGroup;

    move v1, v0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzbh;)Lcom/google/android/gms/internal/zzbk$zza;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/zzbk$zza;->zzsm:I

    add-int/2addr v2, v4

    iget v3, v3, Lcom/google/android/gms/internal/zzbk$zza;->zzsn:I

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/zzbk$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzbk$zza;-><init>(Lcom/google/android/gms/internal/zzbk;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method zza(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbk;->zzf(Landroid/view/View;)Z

    goto :goto_0
.end method

.method zza(Lcom/google/android/gms/internal/zzbh;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbh;->zzco()V

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbh;->zzv(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbh;->zzcl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzsb:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbi;->zzb(Lcom/google/android/gms/internal/zzbh;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbh;->zzv(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Json string may be malformed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Failed to get webview content."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzsc:Lcom/google/android/gms/internal/zzgq;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzgq;->zza(Ljava/lang/Throwable;Z)V

    goto :goto_1
.end method

.method zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 2

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzbh;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqB()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbh;->zzcp()V

    new-instance v0, Lcom/google/android/gms/internal/zzbk$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzbk$2;-><init>(Lcom/google/android/gms/internal/zzbk;Lcom/google/android/gms/internal/zzbh;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zzct()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->mStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "Content hash thread already started, quiting..."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->mStarted:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbk;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method zzcu()Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzsa:Lcom/google/android/gms/internal/zzbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbj;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "keyguard"

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzbk;->zzr(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public zzcv()Lcom/google/android/gms/internal/zzbh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk;->zzsb:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbi;->zzcs()Lcom/google/android/gms/internal/zzbh;

    move-result-object v0

    return-object v0
.end method

.method public zzcw()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrZ:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbk;->zzrZ:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzcx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbk;->zzrZ:Z

    return v0
.end method

.method zzf(Landroid/view/View;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbk$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbk$1;-><init>(Lcom/google/android/gms/internal/zzbk;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method zzg(Landroid/view/View;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzbh;

    iget v1, p0, Lcom/google/android/gms/internal/zzbk;->zzrN:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbk;->zzse:I

    iget v3, p0, Lcom/google/android/gms/internal/zzbk;->zzrP:I

    iget v4, p0, Lcom/google/android/gms/internal/zzbk;->zzsf:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbh;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzbh;)Lcom/google/android/gms/internal/zzbk$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbh;->zzcq()V

    iget v2, v1, Lcom/google/android/gms/internal/zzbk$zza;->zzsm:I

    if-nez v2, :cond_1

    iget v2, v1, Lcom/google/android/gms/internal/zzbk$zza;->zzsn:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v1, Lcom/google/android/gms/internal/zzbk$zza;->zzsn:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbh;->zzcr()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v1, v1, Lcom/google/android/gms/internal/zzbk$zza;->zzsn:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzsb:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbh;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzsb:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbi;->zzc(Lcom/google/android/gms/internal/zzbh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in fetchContentOnUIThread"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk;->zzsc:Lcom/google/android/gms/internal/zzgq;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzgq;->zza(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method zzr(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0
.end method
