package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonAutoDetect {

    /* renamed from: com.fasterxml.jackson.annotation.JsonAutoDetect.1 */
    static /* synthetic */ class C01351 {
        static final /* synthetic */ int[] f26x23d16a11;

        static {
            f26x23d16a11 = new int[Visibility.values().length];
            try {
                f26x23d16a11[Visibility.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f26x23d16a11[Visibility.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f26x23d16a11[Visibility.NON_PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f26x23d16a11[Visibility.PROTECTED_AND_PUBLIC.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f26x23d16a11[Visibility.PUBLIC_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public enum Visibility {
        ANY,
        NON_PRIVATE,
        PROTECTED_AND_PUBLIC,
        PUBLIC_ONLY,
        NONE,
        DEFAULT;

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean isVisible(java.lang.reflect.Member r5) {
            /*
            r4 = this;
            r0 = 0;
            r1 = 1;
            r2 = com.fasterxml.jackson.annotation.JsonAutoDetect.C01351.f26x23d16a11;
            r3 = r4.ordinal();
            r2 = r2[r3];
            switch(r2) {
                case 1: goto L_0x0018;
                case 2: goto L_0x000d;
                case 3: goto L_0x000e;
                case 4: goto L_0x001a;
                case 5: goto L_0x0024;
                default: goto L_0x000d;
            };
        L_0x000d:
            return r0;
        L_0x000e:
            r2 = r5.getModifiers();
            r2 = java.lang.reflect.Modifier.isPrivate(r2);
            if (r2 != 0) goto L_0x000d;
        L_0x0018:
            r0 = r1;
            goto L_0x000d;
        L_0x001a:
            r0 = r5.getModifiers();
            r0 = java.lang.reflect.Modifier.isProtected(r0);
            if (r0 != 0) goto L_0x0018;
        L_0x0024:
            r0 = r5.getModifiers();
            r0 = java.lang.reflect.Modifier.isPublic(r0);
            goto L_0x000d;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility.isVisible(java.lang.reflect.Member):boolean");
        }
    }

    Visibility creatorVisibility() default Visibility.DEFAULT;

    Visibility fieldVisibility() default Visibility.DEFAULT;

    Visibility getterVisibility() default Visibility.DEFAULT;

    Visibility isGetterVisibility() default Visibility.DEFAULT;

    Visibility setterVisibility() default Visibility.DEFAULT;
}
