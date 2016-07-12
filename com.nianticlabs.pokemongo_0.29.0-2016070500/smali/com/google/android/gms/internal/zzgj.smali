.class public Lcom/google/android/gms/internal/zzgj;
.super Lcom/google/android/gms/internal/zzgi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private zzDw:Ljava/lang/Object;

.field private zzDx:Landroid/widget/PopupWindow;

.field private zzDy:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzgg$zza;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzgi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzgg$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDw:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDy:Z

    return-void
.end method

.method private zzfA()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgj;->zzDw:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDy:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgj;->zzfA()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzgi;->cancel()V

    return-void
.end method

.method protected zzfz()V
    .locals 7

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgj;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgj;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgj;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgj;->zzDw:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzgj;->zzDy:Z

    if-eqz v3, :cond_2

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string v0, "Displaying the 1x1 popup off the screen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v2

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgj;->zzDx:Landroid/widget/PopupWindow;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method protected zzz(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgj;->zzfA()V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzgi;->zzz(I)V

    return-void
.end method
