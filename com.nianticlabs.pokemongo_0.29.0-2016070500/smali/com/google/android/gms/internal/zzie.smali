.class public Lcom/google/android/gms/internal/zzie;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzie$1;,
        Lcom/google/android/gms/internal/zzie$zzg;,
        Lcom/google/android/gms/internal/zzie$zze;,
        Lcom/google/android/gms/internal/zzie$zzd;,
        Lcom/google/android/gms/internal/zzie$zzf;,
        Lcom/google/android/gms/internal/zzie$zzc;,
        Lcom/google/android/gms/internal/zzie$zzb;,
        Lcom/google/android/gms/internal/zzie$zza;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzie$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzie;-><init>()V

    return-void
.end method

.method public static zzM(I)Lcom/google/android/gms/internal/zzie;
    .locals 1

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzie$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie$zzg;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x12

    if-lt p0, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzie$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie$zze;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    if-lt p0, v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzie$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie$zzd;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-lt p0, v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzie$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie$zzf;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    if-lt p0, v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzie$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie$zzc;-><init>()V

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    if-lt p0, v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzie$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie$zzb;-><init>()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-lt p0, v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzie$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie$zza;-><init>()V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzie;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzie;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public zza(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public zza(Landroid/app/DownloadManager$Request;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Landroid/view/Window;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Landroid/webkit/WebView;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zziz;Z)Lcom/google/android/gms/internal/zzja;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzja;-><init>(Lcom/google/android/gms/internal/zziz;Z)V

    return-object v0
.end method

.method public zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzie;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public zzb(Landroid/webkit/WebView;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public zzf(Lcom/google/android/gms/internal/zziz;)Landroid/webkit/WebChromeClient;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzf(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    :cond_2
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_3
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v1, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public zzgG()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzgH()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzgI()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public zzgJ()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public zzl(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzm(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
