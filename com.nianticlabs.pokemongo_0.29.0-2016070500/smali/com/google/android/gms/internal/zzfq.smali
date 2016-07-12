.class public Lcom/google/android/gms/internal/zzfq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final zzCr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzCr:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Fetching assets for the given html"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzfq$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/zzfq$1;-><init>(Lcom/google/android/gms/internal/zzfq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzfh()Landroid/webkit/WebView;
    .locals 3

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-object v0
.end method
