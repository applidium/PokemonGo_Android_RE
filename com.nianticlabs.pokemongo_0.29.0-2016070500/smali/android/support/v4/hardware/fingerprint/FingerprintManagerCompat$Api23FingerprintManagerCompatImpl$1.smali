.class final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;
.super Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-direct {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    .line 308
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;)V
    .locals 3
    .param p1, "result"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->getCryptoObject()Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v2

    # invokes: Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->unwrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    invoke-static {v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->access$000(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V

    .line 303
    return-void
.end method
