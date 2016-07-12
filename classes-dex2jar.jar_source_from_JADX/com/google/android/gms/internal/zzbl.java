package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class zzbl {
    private static MessageDigest zzso;
    protected Object zzpd;

    static {
        zzso = null;
    }

    public zzbl() {
        this.zzpd = new Object();
    }

    protected MessageDigest zzcy() {
        MessageDigest messageDigest;
        synchronized (this.zzpd) {
            if (zzso != null) {
                messageDigest = zzso;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        zzso = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = zzso;
            }
        }
        return messageDigest;
    }

    abstract byte[] zzz(String str);
}
