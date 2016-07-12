package crittercism.android;

/* renamed from: crittercism.android.do */
public final class C1074do {

    /* renamed from: crittercism.android.do.a */
    public static final class C1071a extends dm {
        private String f747a;

        /* renamed from: crittercism.android.do.a.a */
        public static final class C1070a implements dn {
            public final /* synthetic */ dm m721a(String str) {
                if (str != null) {
                    return new C1071a((byte) 0);
                }
                throw new NullPointerException("packageName cannot be null");
            }
        }

        private C1071a(String str) {
            this.f747a = str;
        }

        public final String m722a() {
            return "http://www.amazon.com/gp/mas/dl/android?p=" + this.f747a;
        }
    }

    /* renamed from: crittercism.android.do.b */
    public static final class C1073b extends dm {
        private String f748a;

        /* renamed from: crittercism.android.do.b.a */
        public static final class C1072a implements dn {
            public final /* synthetic */ dm m723a(String str) {
                if (str != null) {
                    return new C1073b((byte) 0);
                }
                throw new NullPointerException("packageName cannot be null");
            }
        }

        private C1073b(String str) {
            this.f748a = str;
        }

        public final String m724a() {
            return "market://details?id=" + this.f748a;
        }
    }
}
