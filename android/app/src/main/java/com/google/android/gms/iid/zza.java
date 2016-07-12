package com.google.android.gms.iid;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;

public class zza {
    public static KeyPair zzwl() {
        try {
            KeyPairGenerator instance = KeyPairGenerator.getInstance("RSA");
            instance.initialize(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT);
            return instance.generateKeyPair();
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }
}
