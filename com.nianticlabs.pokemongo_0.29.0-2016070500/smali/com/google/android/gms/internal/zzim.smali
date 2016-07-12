.class public final Lcom/google/android/gms/internal/zzim;
.super Ljava/lang/Object;


# instance fields
.field private zzJn:Landroid/app/Activity;

.field private zzJo:Z

.field private zzJp:Z

.field private zzJq:Z

.field private zzJr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzJs:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzim;->zzJr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzim;->zzJs:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private zzgQ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzJr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim;->zzJr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzJs:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim;->zzJs:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJo:Z

    goto :goto_0
.end method

.method private zzgR()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzJr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim;->zzJr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzie;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzim;->zzJs:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzim;->zzJs:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzid;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJo:Z

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJp:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJq:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;->zzgQ()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJp:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;->zzgR()V

    return-void
.end method

.method public zzgO()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJq:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJp:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;->zzgQ()V

    :cond_0
    return-void
.end method

.method public zzgP()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzim;->zzJq:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzim;->zzgR()V

    return-void
.end method

.method public zzk(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzim;->zzJn:Landroid/app/Activity;

    return-void
.end method
