.class public Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 1
    .param p1, "signature"    # Ljava/security/Signature;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 115
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 116
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 121
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 122
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 1
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    .line 127
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    .line 128
    iput-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    .line 129
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    return-object v0
.end method
