package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.support.v4.media.TransportMediator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

public final class PasswordSpecification implements SafeParcelable {
    public static final zze CREATOR;
    public static final PasswordSpecification zzSt;
    public static final PasswordSpecification zzSu;
    final int mVersionCode;
    private final int[] zzSA;
    final String zzSv;
    final List<String> zzSw;
    final List<Integer> zzSx;
    final int zzSy;
    final int zzSz;
    private final Random zzts;

    public static class zza {
        private final TreeSet<Character> zzSB;
        private final List<String> zzSw;
        private final List<Integer> zzSx;
        private int zzSy;
        private int zzSz;

        public zza() {
            this.zzSB = new TreeSet();
            this.zzSw = new ArrayList();
            this.zzSx = new ArrayList();
            this.zzSy = 12;
            this.zzSz = 16;
        }

        private void zzlL() {
            int i = 0;
            for (Integer intValue : this.zzSx) {
                i = intValue.intValue() + i;
            }
            if (i > this.zzSz) {
                throw new zzb("required character count cannot be greater than the max password size");
            }
        }

        private void zzlM() {
            boolean[] zArr = new boolean[95];
            for (String toCharArray : this.zzSw) {
                for (char c : toCharArray.toCharArray()) {
                    if (zArr[c - 32]) {
                        throw new zzb("character " + c + " occurs in more than one required character set");
                    }
                    zArr[c - 32] = true;
                }
            }
        }

        private TreeSet<Character> zzr(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                throw new zzb(str2 + " cannot be null or empty");
            }
            TreeSet<Character> treeSet = new TreeSet();
            for (char c : str.toCharArray()) {
                if (PasswordSpecification.zzb(c, 32, TransportMediator.KEYCODE_MEDIA_PLAY)) {
                    throw new zzb(str2 + " must only contain ASCII printable characters");
                }
                treeSet.add(Character.valueOf(c));
            }
            return treeSet;
        }

        public zza zzbD(String str) {
            this.zzSB.addAll(zzr(str, "allowedChars"));
            return this;
        }

        public zza zzf(String str, int i) {
            if (i < 1) {
                throw new zzb("count must be at least 1");
            }
            this.zzSw.add(PasswordSpecification.zzb(zzr(str, "requiredChars")));
            this.zzSx.add(Integer.valueOf(i));
            return this;
        }

        public zza zzg(int i, int i2) {
            if (i < 1) {
                throw new zzb("minimumSize must be at least 1");
            } else if (i > i2) {
                throw new zzb("maximumSize must be greater than or equal to minimumSize");
            } else {
                this.zzSy = i;
                this.zzSz = i2;
                return this;
            }
        }

        public PasswordSpecification zzlK() {
            if (this.zzSB.isEmpty()) {
                throw new zzb("no allowed characters specified");
            }
            zzlL();
            zzlM();
            return new PasswordSpecification(1, PasswordSpecification.zzb(this.zzSB), this.zzSw, this.zzSx, this.zzSy, this.zzSz);
        }
    }

    public static class zzb extends Error {
        public zzb(String str) {
            super(str);
        }
    }

    static {
        CREATOR = new zze();
        zzSt = new zza().zzg(12, 16).zzbD("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zzf("abcdefghijkmnopqrstxyz", 1).zzf("ABCDEFGHJKLMNPQRSTXY", 1).zzf("3456789", 1).zzlK();
        zzSu = new zza().zzg(12, 16).zzbD("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zzf("abcdefghijklmnopqrstuvwxyz", 1).zzf("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zzf("1234567890", 1).zzlK();
    }

    PasswordSpecification(int i, String str, List<String> list, List<Integer> list2, int i2, int i3) {
        this.mVersionCode = i;
        this.zzSv = str;
        this.zzSw = Collections.unmodifiableList(list);
        this.zzSx = Collections.unmodifiableList(list2);
        this.zzSy = i2;
        this.zzSz = i3;
        this.zzSA = zzlJ();
        this.zzts = new SecureRandom();
    }

    private int zza(char c) {
        return c - 32;
    }

    private static String zzb(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        int i = 0;
        for (Character charValue : collection) {
            cArr[i] = charValue.charValue();
            i++;
        }
        return new String(cArr);
    }

    private static boolean zzb(int i, int i2, int i3) {
        return i < i2 || i > i3;
    }

    private int[] zzlJ() {
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        int i = 0;
        for (String toCharArray : this.zzSw) {
            for (char zza : toCharArray.toCharArray()) {
                iArr[zza(zza)] = i;
            }
            i++;
        }
        return iArr;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
