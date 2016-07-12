.class Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"

# interfaces
.implements Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23FingerprintManagerCompatImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    .prologue
    .line 232
    invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->unwrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v0

    return-object v0
.end method

.method private static unwrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    .prologue
    const/4 v0, 0x0

    .line 272
    if-nez p0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 275
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 277
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_0
.end method

.method private static wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .prologue
    .line 287
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .prologue
    const/4 v0, 0x0

    .line 257
    if-nez p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 260
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 262
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crypto"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .param p3, "flags"    # I
    .param p4, "cancel"    # Landroid/support/v4/os/CancellationSignal;
    .param p5, "callback"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 250
    invoke-static {p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    invoke-static {p5}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;

    move-result-object v4

    move-object v0, p1

    move v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V

    .line 253
    return-void

    .line 250
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->isHardwareDetected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
