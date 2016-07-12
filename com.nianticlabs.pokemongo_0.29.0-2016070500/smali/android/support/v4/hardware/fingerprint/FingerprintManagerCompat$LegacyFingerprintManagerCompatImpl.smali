.class Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;
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
    name = "LegacyFingerprintManagerCompatImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method


# virtual methods
.method public authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crypto"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .param p3, "flags"    # I
    .param p4, "cancel"    # Landroid/support/v4/os/CancellationSignal;
    .param p5, "callback"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 229
    return-void
.end method

.method public hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareDetected(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method
