.class public final Lcom/google/android/gms/ads/internal/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzq$zza;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field zzpt:Z

.field zzqA:Lcom/google/android/gms/internal/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcz;",
            ">;"
        }
    .end annotation
.end field

.field zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field zzqC:Lcom/google/android/gms/internal/zzck;

.field zzqD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzqE:Lcom/google/android/gms/ads/internal/purchase/zzk;

.field public zzqF:Lcom/google/android/gms/internal/zzhx;

.field zzqG:Landroid/view/View;

.field public zzqH:I

.field zzqI:Z

.field private zzqJ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzht;",
            ">;"
        }
    .end annotation
.end field

.field private zzqK:I

.field private zzqL:I

.field private zzqM:Lcom/google/android/gms/internal/zzik;

.field private zzqN:Z

.field private zzqO:Z

.field private zzqP:Z

.field final zzqg:Ljava/lang/String;

.field public zzqh:Ljava/lang/String;

.field final zzqi:Lcom/google/android/gms/internal/zzan;

.field public final zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

.field public zzql:Lcom/google/android/gms/internal/zzhz;

.field public zzqm:Lcom/google/android/gms/internal/zzgh;

.field public zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public zzqo:Lcom/google/android/gms/internal/zzhs;

.field public zzqp:Lcom/google/android/gms/internal/zzhs$zza;

.field public zzqq:Lcom/google/android/gms/internal/zzht;

.field zzqr:Lcom/google/android/gms/ads/internal/client/zzn;

.field zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

.field zzqt:Lcom/google/android/gms/ads/internal/client/zzu;

.field zzqu:Lcom/google/android/gms/ads/internal/client/zzv;

.field zzqv:Lcom/google/android/gms/internal/zzfs;

.field zzqw:Lcom/google/android/gms/internal/zzfw;

.field zzqx:Lcom/google/android/gms/internal/zzcw;

.field zzqy:Lcom/google/android/gms/internal/zzcx;

.field zzqz:Lcom/google/android/gms/internal/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqF:Lcom/google/android/gms/internal/zzhx;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqG:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzpt:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqJ:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqK:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqL:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqN:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqO:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqP:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhu;->zzgo()Lcom/google/android/gms/internal/zzca;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzby;->zzdf()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJv:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJv:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhu;->zzgo()Lcom/google/android/gms/internal/zzca;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzca;->zzb(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqg:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztf:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzth:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_4

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqi:Lcom/google/android/gms/internal/zzan;

    new-instance v0, Lcom/google/android/gms/internal/zzik;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzik;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqM:Lcom/google/android/gms/internal/zzik;

    new-instance v0, Lcom/google/android/gms/internal/zzmi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqA:Lcom/google/android/gms/internal/zzmi;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/zzq$zza;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance p5, Lcom/google/android/gms/internal/zzan;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzh;-><init>(Lcom/google/android/gms/ads/internal/zzq;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/zzan;-><init>(Lcom/google/android/gms/internal/zzaj;)V

    goto :goto_1
.end method

.method private zzbQ()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqN:Z

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqO:Z

    goto :goto_0
.end method

.method private zze(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqM:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzik;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzja;->zzbY()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqK:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqL:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqK:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqL:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqK:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqL:I

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzja;->zza(IIZ)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzbQ()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzbP()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqs:Lcom/google/android/gms/ads/internal/client/zzo;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqt:Lcom/google/android/gms/ads/internal/client/zzu;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqw:Lcom/google/android/gms/internal/zzfw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqv:Lcom/google/android/gms/internal/zzfs;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqC:Lcom/google/android/gms/internal/zzck;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqu:Lcom/google/android/gms/ads/internal/client/zzv;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzbK()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzbM()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zze(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zze(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqP:Z

    return-void
.end method

.method public zza(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzht;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqJ:Ljava/util/HashSet;

    return-void
.end method

.method public zzbJ()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzht;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqJ:Ljava/util/HashSet;

    return-object v0
.end method

.method public zzbK()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->destroy()V

    :cond_0
    return-void
.end method

.method public zzbL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->stopLoading()V

    :cond_0
    return-void
.end method

.method public zzbM()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzzv:Lcom/google/android/gms/internal/zzen;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs;->zzzv:Lcom/google/android/gms/internal/zzen;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzen;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzbN()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbO()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbP()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqk:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->zzbP()V

    :cond_0
    return-void
.end method

.method public zzbR()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqO:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqN:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqP:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqO:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqP:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public zzbS()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqq:Lcom/google/android/gms/internal/zzht;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzhs;->zzHz:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzht;->zzl(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqq:Lcom/google/android/gms/internal/zzht;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzhs;->zzHA:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzht;->zzm(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqq:Lcom/google/android/gms/internal/zzht;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztf:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht;->zzy(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqq:Lcom/google/android/gms/internal/zzht;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzhs;->zzEK:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht;->zzz(Z)V

    return-void
.end method

.method public zzf(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzbL()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzql:Lcom/google/android/gms/internal/zzhz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzql:Lcom/google/android/gms/internal/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhz;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgh;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzqo:Lcom/google/android/gms/internal/zzhs;

    :cond_3
    return-void
.end method
