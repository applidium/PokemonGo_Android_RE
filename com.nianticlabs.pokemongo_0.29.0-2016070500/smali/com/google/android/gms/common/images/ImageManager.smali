.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$zza;,
        Lcom/google/android/gms/common/images/ImageManager$zzb;,
        Lcom/google/android/gms/common/images/ImageManager$zze;,
        Lcom/google/android/gms/common/images/ImageManager$zzf;,
        Lcom/google/android/gms/common/images/ImageManager$zzc;,
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$zzd;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static final zzadG:Ljava/lang/Object;

.field private static zzadH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static zzadI:Lcom/google/android/gms/common/images/ImageManager;

.field private static zzadJ:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzadK:Ljava/util/concurrent/ExecutorService;

.field private final zzadL:Lcom/google/android/gms/common/images/ImageManager$zzb;

.field private final zzadM:Lcom/google/android/gms/internal/zzlv;

.field private final zzadN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/images/zza;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzadO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzadP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadG:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadH:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "withMemoryCache"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadK:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$zzb;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$zzb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadL:Lcom/google/android/gms/common/images/ImageManager$zzb;

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/images/ImageManager;->zzoB()V

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzlv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadM:Lcom/google/android/gms/internal/zzlv;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadN:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadO:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadP:Ljava/util/Map;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadL:Lcom/google/android/gms/common/images/ImageManager$zzb;

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zza$zza;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/zza$zza;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/images/zza$zza;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadL:Lcom/google/android/gms/common/images/ImageManager$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadL:Lcom/google/android/gms/common/images/ImageManager$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/ImageManager$zzb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadN:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static zzb(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;
    .locals 2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadJ:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadJ:Lcom/google/android/gms/common/images/ImageManager;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadJ:Lcom/google/android/gms/common/images/ImageManager;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadI:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadI:Lcom/google/android/gms/common/images/ImageManager;

    :cond_2
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadI:Lcom/google/android/gms/common/images/ImageManager;

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/zzlv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadM:Lcom/google/android/gms/internal/zzlv;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadO:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadK:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadL:Lcom/google/android/gms/common/images/ImageManager$zzb;

    return-object v0
.end method

.method private zzoB()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/common/images/ImageManager$zze;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager;->zzadL:Lcom/google/android/gms/common/images/ImageManager$zzb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/images/ImageManager$zze;-><init>(Lcom/google/android/gms/common/images/ImageManager$zzb;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method static synthetic zzoC()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadG:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzoD()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzadH:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public loadImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/zza$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zza$zzb;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/zza;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/zza$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zza$zzb;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/zza;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResId"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/zza$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zza$zzb;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/zza;->zzby(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/zza;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/zza$zzc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zza$zzc;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/zza;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResId"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/images/zza$zzc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zza$zzc;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/zza;->zzby(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/zza;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/images/zza;)V
    .locals 1

    const-string v0, "ImageManager.loadImage() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzci(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$zzd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/ImageManager$zzd;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zza;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
