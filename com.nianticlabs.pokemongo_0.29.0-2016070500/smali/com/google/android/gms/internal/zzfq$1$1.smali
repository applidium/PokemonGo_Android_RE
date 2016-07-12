.class Lcom/google/android/gms/internal/zzfq$1$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCv:Lcom/google/android/gms/internal/zzfq$1;

.field final synthetic zzsk:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfq$1;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq$1$1;->zzCv:Lcom/google/android/gms/internal/zzfq$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq$1$1;->zzsk:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-string v0, "Loading assets have finished"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$1$1;->zzCv:Lcom/google/android/gms/internal/zzfq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfq$1;->zzCu:Lcom/google/android/gms/internal/zzfq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfq;->zzCr:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq$1$1;->zzsk:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const-string v0, "Loading assets have failed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$1$1;->zzCv:Lcom/google/android/gms/internal/zzfq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfq$1;->zzCu:Lcom/google/android/gms/internal/zzfq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfq;->zzCr:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq$1$1;->zzsk:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
