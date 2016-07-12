.class public Lcom/google/android/gms/internal/zzjf;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzjf$7;
    }
.end annotation


# instance fields
.field private final zzoM:Lcom/google/android/gms/internal/zziz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziz;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    return-void
.end method

.method private static zza(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/gms/internal/zzjf$3;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzjf$3;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/gms/internal/zzjf$2;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzjf$2;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjf$1;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzjf$1;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static zza(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/google/android/gms/internal/zzjf$6;

    invoke-direct {v3, p4, v2}, Lcom/google/android/gms/internal/zzjf$6;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/gms/internal/zzjf$5;

    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/zzjf$5;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjf$4;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/zzjf$4;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private final zzc(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zziz;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zziz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzgZ()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private final zzhE()Z
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    instance-of v0, p1, Lcom/google/android/gms/internal/zziz;

    if-nez v0, :cond_0

    const-string v0, "Tried to close a WebView that wasn\'t an AdWebView."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    .end local p1    # "webView":Landroid/webkit/WebView;
    :goto_0
    return-void

    .restart local p1    # "webView":Landroid/webkit/WebView;
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zziz;

    .end local p1    # "webView":Landroid/webkit/WebView;
    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Tried to close an AdWebView not associated with an overlay."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    goto :goto_0
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Application Cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzjf$7;->zzKG:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p7

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .end local p3    # "currentQuota":J
    .end local p5    # "estimatedSize":J
    :goto_0
    return-void

    .restart local p3    # "currentQuota":J
    .restart local p5    # "estimatedSize":J
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    const-wide/32 v0, 0x100000

    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    .end local p3    # "currentQuota":J
    .end local p5    # "estimatedSize":J
    :goto_1
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    .restart local p3    # "currentQuota":J
    .restart local p5    # "estimatedSize":J
    :cond_1
    const-wide/16 p5, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_3

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, p3

    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p5

    goto :goto_1

    :cond_3
    const-wide/32 v2, 0x100000

    sub-long/2addr v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_4

    add-long/2addr p3, p5

    .end local p3    # "currentQuota":J
    :cond_4
    move-wide p5, p3

    goto :goto_1
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjf;->zzhE()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public final onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not get ad overlay when hiding custom view."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzeD()V

    goto :goto_0
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjf;->zzc(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzjf;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjf;->zzc(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzjf;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjf;->zzc(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzjf;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjf;->zzc(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzjf;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5
    .param p1, "spaceNeeded"    # J
    .param p3, "totalUsedQuota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    const-wide/32 v0, 0x500000

    sub-long/2addr v0, p3

    const-wide/32 v2, 0x20000

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "customViewCallback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzjf;->zza(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method protected final zza(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhc()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not get ad overlay when showing custom view."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p7, :cond_0

    invoke-static {p1, v0, p3, p4, p6}, Lcom/google/android/gms/internal/zzjf;->zza(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {v0, p3, p5}, Lcom/google/android/gms/internal/zzjf;->zza(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to display Dialog."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
