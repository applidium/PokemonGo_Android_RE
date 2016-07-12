.class Lcom/google/android/gms/internal/zzbk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbk;->zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzbh;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsh:Lcom/google/android/gms/internal/zzbk;

.field zzsi:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzsj:Lcom/google/android/gms/internal/zzbh;

.field final synthetic zzsk:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbk;Lcom/google/android/gms/internal/zzbh;Landroid/webkit/WebView;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsh:Lcom/google/android/gms/internal/zzbk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsj:Lcom/google/android/gms/internal/zzbh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsk:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbk$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbk$2$1;-><init>(Lcom/google/android/gms/internal/zzbk$2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsi:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsk:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsk:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsi:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk$2;->zzsi:Landroid/webkit/ValueCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
