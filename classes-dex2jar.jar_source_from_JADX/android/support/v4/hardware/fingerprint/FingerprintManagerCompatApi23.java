package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintManager.AuthenticationResult;
import android.os.CancellationSignal;
import android.os.Handler;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

public final class FingerprintManagerCompatApi23 {

    public static abstract class AuthenticationCallback {
        public void onAuthenticationError(int i, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int i, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResultInternal authenticationResultInternal) {
        }
    }

    /* renamed from: android.support.v4.hardware.fingerprint.FingerprintManagerCompatApi23.1 */
    static final class C00421 extends android.hardware.fingerprint.FingerprintManager.AuthenticationCallback {
        final /* synthetic */ AuthenticationCallback val$callback;

        C00421(AuthenticationCallback authenticationCallback) {
            this.val$callback = authenticationCallback;
        }

        public void onAuthenticationError(int i, CharSequence charSequence) {
            this.val$callback.onAuthenticationError(i, charSequence);
        }

        public void onAuthenticationFailed() {
            this.val$callback.onAuthenticationFailed();
        }

        public void onAuthenticationHelp(int i, CharSequence charSequence) {
            this.val$callback.onAuthenticationHelp(i, charSequence);
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
            this.val$callback.onAuthenticationSucceeded(new AuthenticationResultInternal(FingerprintManagerCompatApi23.unwrapCryptoObject(authenticationResult.getCryptoObject())));
        }
    }

    public static final class AuthenticationResultInternal {
        private CryptoObject mCryptoObject;

        public AuthenticationResultInternal(CryptoObject cryptoObject) {
            this.mCryptoObject = cryptoObject;
        }

        public CryptoObject getCryptoObject() {
            return this.mCryptoObject;
        }
    }

    public static class CryptoObject {
        private final Cipher mCipher;
        private final Mac mMac;
        private final Signature mSignature;

        public CryptoObject(Signature signature) {
            this.mSignature = signature;
            this.mCipher = null;
            this.mMac = null;
        }

        public CryptoObject(Cipher cipher) {
            this.mCipher = cipher;
            this.mSignature = null;
            this.mMac = null;
        }

        public CryptoObject(Mac mac) {
            this.mMac = mac;
            this.mCipher = null;
            this.mSignature = null;
        }

        public Cipher getCipher() {
            return this.mCipher;
        }

        public Mac getMac() {
            return this.mMac;
        }

        public Signature getSignature() {
            return this.mSignature;
        }
    }

    public static void authenticate(Context context, CryptoObject cryptoObject, int i, Object obj, AuthenticationCallback authenticationCallback, Handler handler) {
        getFingerprintManager(context).authenticate(wrapCryptoObject(cryptoObject), (CancellationSignal) obj, i, wrapCallback(authenticationCallback), handler);
    }

    private static FingerprintManager getFingerprintManager(Context context) {
        return (FingerprintManager) context.getSystemService(FingerprintManager.class);
    }

    public static boolean hasEnrolledFingerprints(Context context) {
        return getFingerprintManager(context).hasEnrolledFingerprints();
    }

    public static boolean isHardwareDetected(Context context) {
        return getFingerprintManager(context).isHardwareDetected();
    }

    private static CryptoObject unwrapCryptoObject(android.hardware.fingerprint.FingerprintManager.CryptoObject cryptoObject) {
        return cryptoObject == null ? null : cryptoObject.getCipher() != null ? new CryptoObject(cryptoObject.getCipher()) : cryptoObject.getSignature() != null ? new CryptoObject(cryptoObject.getSignature()) : cryptoObject.getMac() != null ? new CryptoObject(cryptoObject.getMac()) : null;
    }

    private static android.hardware.fingerprint.FingerprintManager.AuthenticationCallback wrapCallback(AuthenticationCallback authenticationCallback) {
        return new C00421(authenticationCallback);
    }

    private static android.hardware.fingerprint.FingerprintManager.CryptoObject wrapCryptoObject(CryptoObject cryptoObject) {
        return cryptoObject == null ? null : cryptoObject.getCipher() != null ? new android.hardware.fingerprint.FingerprintManager.CryptoObject(cryptoObject.getCipher()) : cryptoObject.getSignature() != null ? new android.hardware.fingerprint.FingerprintManager.CryptoObject(cryptoObject.getSignature()) : cryptoObject.getMac() != null ? new android.hardware.fingerprint.FingerprintManager.CryptoObject(cryptoObject.getMac()) : null;
    }
}
