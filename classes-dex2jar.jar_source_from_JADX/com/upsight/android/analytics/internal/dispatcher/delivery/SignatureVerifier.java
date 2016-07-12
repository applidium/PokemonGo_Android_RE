package com.upsight.android.analytics.internal.dispatcher.delivery;

public interface SignatureVerifier {
    boolean verify(byte[] bArr, byte[] bArr2);
}
