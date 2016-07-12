package com.google.android.gms.common.internal;

import java.util.Iterator;

public class zzv {
    private final String separator;

    private zzv(String str) {
        this.separator = str;
    }

    public static zzv zzcq(String str) {
        return new zzv(str);
    }

    public final String zza(Iterable<?> iterable) {
        return zza(new StringBuilder(), iterable).toString();
    }

    public final StringBuilder zza(StringBuilder stringBuilder, Iterable<?> iterable) {
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            stringBuilder.append(zzu(it.next()));
            while (it.hasNext()) {
                stringBuilder.append(this.separator);
                stringBuilder.append(zzu(it.next()));
            }
        }
        return stringBuilder;
    }

    CharSequence zzu(Object obj) {
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
