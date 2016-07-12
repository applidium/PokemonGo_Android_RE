package com.google.android.gms.internal;

import android.os.Binder;

public abstract class zzlr<T> {
    private static zza zzadc;
    private static int zzadd;
    private static String zzade;
    private static final Object zzpy;
    private T zzOX;
    protected final String zzue;
    protected final T zzuf;

    /* renamed from: com.google.android.gms.internal.zzlr.1 */
    static final class C06211 extends zzlr<Boolean> {
        C06211(String str, Boolean bool) {
            super(str, bool);
        }

        protected /* synthetic */ Object zzbY(String str) {
            return zzbZ(str);
        }

        protected Boolean zzbZ(String str) {
            return zzlr.zzadc.zzb(this.zzue, (Boolean) this.zzuf);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzlr.2 */
    static final class C06222 extends zzlr<Long> {
        C06222(String str, Long l) {
            super(str, l);
        }

        protected /* synthetic */ Object zzbY(String str) {
            return zzca(str);
        }

        protected Long zzca(String str) {
            return zzlr.zzadc.getLong(this.zzue, (Long) this.zzuf);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzlr.3 */
    static final class C06233 extends zzlr<Integer> {
        C06233(String str, Integer num) {
            super(str, num);
        }

        protected /* synthetic */ Object zzbY(String str) {
            return zzcb(str);
        }

        protected Integer zzcb(String str) {
            return zzlr.zzadc.zzb(this.zzue, (Integer) this.zzuf);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzlr.4 */
    static final class C06244 extends zzlr<Float> {
        C06244(String str, Float f) {
            super(str, f);
        }

        protected /* synthetic */ Object zzbY(String str) {
            return zzcc(str);
        }

        protected Float zzcc(String str) {
            return zzlr.zzadc.zzb(this.zzue, (Float) this.zzuf);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzlr.5 */
    static final class C06255 extends zzlr<String> {
        C06255(String str, String str2) {
            super(str, str2);
        }

        protected /* synthetic */ Object zzbY(String str) {
            return zzcd(str);
        }

        protected String zzcd(String str) {
            return zzlr.zzadc.getString(this.zzue, (String) this.zzuf);
        }
    }

    private interface zza {
        Long getLong(String str, Long l);

        String getString(String str, String str2);

        Boolean zzb(String str, Boolean bool);

        Float zzb(String str, Float f);

        Integer zzb(String str, Integer num);
    }

    static {
        zzpy = new Object();
        zzadc = null;
        zzadd = 0;
        zzade = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    }

    protected zzlr(String str, T t) {
        this.zzOX = null;
        this.zzue = str;
        this.zzuf = t;
    }

    public static boolean isInitialized() {
        return zzadc != null;
    }

    public static zzlr<Float> zza(String str, Float f) {
        return new C06244(str, f);
    }

    public static zzlr<Integer> zza(String str, Integer num) {
        return new C06233(str, num);
    }

    public static zzlr<Long> zza(String str, Long l) {
        return new C06222(str, l);
    }

    public static zzlr<Boolean> zzg(String str, boolean z) {
        return new C06211(str, Boolean.valueOf(z));
    }

    public static int zzoo() {
        return zzadd;
    }

    public static zzlr<String> zzu(String str, String str2) {
        return new C06255(str, str2);
    }

    public final T get() {
        return this.zzOX != null ? this.zzOX : zzbY(this.zzue);
    }

    protected abstract T zzbY(String str);

    public final T zzop() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            T t = get();
            return t;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
