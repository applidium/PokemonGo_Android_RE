package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import java.math.BigInteger;
import java.util.Locale;

@zzgr
public final class zzhy {
    private static String zzIk;
    private static final Object zzpy;

    static {
        zzpy = new Object();
    }

    public static String zza(Context context, String str, String str2) {
        String str3;
        synchronized (zzpy) {
            if (zzIk == null && !TextUtils.isEmpty(str)) {
                zzb(context, str, str2);
            }
            str3 = zzIk;
        }
        return str3;
    }

    private static void zzb(Context context, String str, String str2) {
        try {
            ClassLoader classLoader = context.createPackageContext(str2, 3).getClassLoader();
            Class cls = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
            BigInteger bigInteger = new BigInteger(new byte[1]);
            String[] split = str.split(",");
            BigInteger bigInteger2 = bigInteger;
            for (int i = 0; i < split.length; i++) {
                if (zzp.zzbv().zza(classLoader, cls, split[i])) {
                    bigInteger2 = bigInteger2.setBit(i);
                }
            }
            zzIk = String.format(Locale.US, "%X", new Object[]{bigInteger2});
        } catch (Throwable th) {
            zzIk = NotificationCompatApi21.CATEGORY_ERROR;
        }
    }

    public static String zzgy() {
        String str;
        synchronized (zzpy) {
            str = zzIk;
        }
        return str;
    }
}
