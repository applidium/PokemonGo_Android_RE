package com.upsight.android.analytics.internal.dispatcher.delivery;

import android.text.TextUtils;
import android.util.Base64;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.logger.UpsightLogger;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

class BouncySignatureVerifier implements SignatureVerifier {
    private static final String CHARSET_NAME = "UTF-8";
    private static final String CRYPTO_ALGORITHM_KEY = "RSA";
    private static final String CRYPTO_ALGORITHM_SIGNATURE = "SHA512WITHRSA";
    private static final String CRYPTO_PROVIDER = "BC";
    private UpsightLogger mLogger;
    private Signature mSigner;

    BouncySignatureVerifier(UpsightContext upsightContext) {
        Throwable e;
        this.mLogger = upsightContext.getLogger();
        Object publicKey = upsightContext.getPublicKey();
        try {
            if (TextUtils.isEmpty(publicKey)) {
                this.mLogger.m199e(Upsight.LOG_TAG, "Please check your public key.", new Object[0]);
                return;
            }
            PublicKey generatePublic = KeyFactory.getInstance(CRYPTO_ALGORITHM_KEY, CRYPTO_PROVIDER).generatePublic(new X509EncodedKeySpec(Base64.decode(publicKey.getBytes(CHARSET_NAME), 0)));
            Signature instance = Signature.getInstance(CRYPTO_ALGORITHM_SIGNATURE, CRYPTO_PROVIDER);
            instance.initVerify(generatePublic);
            this.mSigner = instance;
            this.mLogger.m197d(Upsight.LOG_TAG, "Public key: " + generatePublic, new Object[0]);
        } catch (IOException e2) {
            e = e2;
            this.mLogger.m200e(Upsight.LOG_TAG, e, "Failed to initialize " + BouncySignatureVerifier.class.getSimpleName(), new Object[0]);
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            this.mLogger.m200e(Upsight.LOG_TAG, e, "Failed to initialize " + BouncySignatureVerifier.class.getSimpleName(), new Object[0]);
        } catch (NoSuchProviderException e4) {
            e = e4;
            this.mLogger.m200e(Upsight.LOG_TAG, e, "Failed to initialize " + BouncySignatureVerifier.class.getSimpleName(), new Object[0]);
        } catch (InvalidKeySpecException e5) {
            e = e5;
            this.mLogger.m200e(Upsight.LOG_TAG, e, "Failed to initialize " + BouncySignatureVerifier.class.getSimpleName(), new Object[0]);
        } catch (InvalidKeyException e6) {
            e = e6;
            this.mLogger.m200e(Upsight.LOG_TAG, e, "Failed to initialize " + BouncySignatureVerifier.class.getSimpleName(), new Object[0]);
        }
    }

    public boolean verify(byte[] bArr, byte[] bArr2) {
        boolean verify;
        synchronized (this) {
            if (this.mSigner != null) {
                try {
                    this.mSigner.update(bArr);
                    verify = this.mSigner.verify(bArr2);
                } catch (Throwable e) {
                    this.mLogger.m200e(Upsight.LOG_TAG, e, "Failed to verify signature " + BouncySignatureVerifier.class.getSimpleName(), new Object[0]);
                    verify = false;
                }
            } else {
                verify = false;
            }
            if (!verify) {
                this.mLogger.m199e(Upsight.LOG_TAG, "Failed to verify signature. Please check your public key.", new Object[0]);
            }
        }
        return verify;
    }
}
