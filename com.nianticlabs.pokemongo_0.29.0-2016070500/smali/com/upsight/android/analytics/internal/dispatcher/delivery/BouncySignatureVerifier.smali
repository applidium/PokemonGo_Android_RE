.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;
.super Ljava/lang/Object;
.source "BouncySignatureVerifier.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;


# static fields
.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final CRYPTO_ALGORITHM_KEY:Ljava/lang/String; = "RSA"

.field private static final CRYPTO_ALGORITHM_SIGNATURE:Ljava/lang/String; = "SHA512WITHRSA"

.field private static final CRYPTO_PROVIDER:Ljava/lang/String; = "BC"


# instance fields
.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mSigner:Ljava/security/Signature;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 11
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    const/4 v10, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v6

    iput-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 68
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "publicKeyString":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    .line 72
    .local v3, "publicKeyBytes":[B
    const-string v6, "RSA"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 73
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 75
    .local v2, "publicKey":Ljava/security/PublicKey;
    const-string v6, "SHA512WITHRSA"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 76
    .local v5, "signer":Ljava/security/Signature;
    invoke-virtual {v5, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 78
    iput-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mSigner:Ljava/security/Signature;

    .line 79
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v7, "Upsight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Public key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    .end local v3    # "publicKeyBytes":[B
    .end local v5    # "signer":Ljava/security/Signature;
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v7, "Upsight"

    const-string v8, "Please check your public key."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v7, "Upsight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to initialize "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8, v9}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized verify([B[B)Z
    .locals 6
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 90
    monitor-enter p0

    const/4 v1, 0x0

    .line 92
    .local v1, "isVerified":Z
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mSigner:Ljava/security/Signature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 94
    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mSigner:Ljava/security/Signature;

    invoke-virtual {v2, p1}, Ljava/security/Signature;->update([B)V

    .line 95
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mSigner:Ljava/security/Signature;

    invoke-virtual {v2, p2}, Ljava/security/Signature;->verify([B)Z
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 101
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 102
    :try_start_2
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Upsight"

    const-string v4, "Failed to verify signature. Please check your public key."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :cond_1
    monitor-exit p0

    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/security/SignatureException;
    :try_start_3
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Upsight"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to verify signature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/security/SignatureException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
