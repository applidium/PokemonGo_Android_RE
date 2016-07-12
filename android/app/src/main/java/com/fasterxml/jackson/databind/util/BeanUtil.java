package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;

public class BeanUtil {
    protected static boolean isCglibGetCallbacks(AnnotatedMethod annotatedMethod) {
        Class rawType = annotatedMethod.getRawType();
        if (rawType == null || !rawType.isArray()) {
            return false;
        }
        Package packageR = rawType.getComponentType().getPackage();
        if (packageR == null) {
            return false;
        }
        String name = packageR.getName();
        return name.contains(".cglib") ? name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib") || name.startsWith("org.springframework.cglib") : false;
    }

    protected static boolean isGroovyMetaClassGetter(AnnotatedMethod annotatedMethod) {
        Class rawType = annotatedMethod.getRawType();
        if (rawType == null || rawType.isArray()) {
            return false;
        }
        Package packageR = rawType.getPackage();
        return packageR != null && packageR.getName().startsWith("groovy.lang");
    }

    protected static boolean isGroovyMetaClassSetter(AnnotatedMethod annotatedMethod) {
        Package packageR = annotatedMethod.getRawParameterType(0).getPackage();
        return packageR != null && packageR.getName().startsWith("groovy.lang");
    }

    protected static String legacyManglePropertyName(String str, int i) {
        StringBuilder stringBuilder = null;
        int length = str.length();
        if (length == i) {
            return null;
        }
        for (int i2 = i; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            char toLowerCase = Character.toLowerCase(charAt);
            if (charAt == toLowerCase) {
                break;
            }
            if (stringBuilder == null) {
                stringBuilder = new StringBuilder(length - i);
                stringBuilder.append(str, i, length);
            }
            stringBuilder.setCharAt(i2 - i, toLowerCase);
        }
        return stringBuilder == null ? str.substring(i) : stringBuilder.toString();
    }

    @Deprecated
    public static String okNameForGetter(AnnotatedMethod annotatedMethod) {
        return okNameForGetter(annotatedMethod, false);
    }

    public static String okNameForGetter(AnnotatedMethod annotatedMethod, boolean z) {
        String name = annotatedMethod.getName();
        String okNameForIsGetter = okNameForIsGetter(annotatedMethod, name, z);
        return okNameForIsGetter == null ? okNameForRegularGetter(annotatedMethod, name, z) : okNameForIsGetter;
    }

    @Deprecated
    public static String okNameForIsGetter(AnnotatedMethod annotatedMethod, String str) {
        return okNameForIsGetter(annotatedMethod, str, false);
    }

    public static String okNameForIsGetter(AnnotatedMethod annotatedMethod, String str, boolean z) {
        if (str.startsWith("is")) {
            Class rawType = annotatedMethod.getRawType();
            if (rawType == Boolean.class || rawType == Boolean.TYPE) {
                return z ? stdManglePropertyName(str, 2) : legacyManglePropertyName(str, 2);
            }
        }
        return null;
    }

    @Deprecated
    public static String okNameForMutator(AnnotatedMethod annotatedMethod, String str) {
        return okNameForMutator(annotatedMethod, str, false);
    }

    public static String okNameForMutator(AnnotatedMethod annotatedMethod, String str, boolean z) {
        String name = annotatedMethod.getName();
        return name.startsWith(str) ? z ? stdManglePropertyName(name, str.length()) : legacyManglePropertyName(name, str.length()) : null;
    }

    @Deprecated
    public static String okNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
        return okNameForRegularGetter(annotatedMethod, str, false);
    }

    public static String okNameForRegularGetter(AnnotatedMethod annotatedMethod, String str, boolean z) {
        if (!str.startsWith("get")) {
            return null;
        }
        if ("getCallbacks".equals(str)) {
            if (isCglibGetCallbacks(annotatedMethod)) {
                return null;
            }
        } else if ("getMetaClass".equals(str) && isGroovyMetaClassGetter(annotatedMethod)) {
            return null;
        }
        return z ? stdManglePropertyName(str, 3) : legacyManglePropertyName(str, 3);
    }

    @Deprecated
    public static String okNameForSetter(AnnotatedMethod annotatedMethod) {
        return okNameForSetter(annotatedMethod, false);
    }

    public static String okNameForSetter(AnnotatedMethod annotatedMethod, boolean z) {
        String okNameForMutator = okNameForMutator(annotatedMethod, "set", z);
        return (okNameForMutator == null || ("metaClass".equals(okNameForMutator) && isGroovyMetaClassSetter(annotatedMethod))) ? null : okNameForMutator;
    }

    protected static String stdManglePropertyName(String str, int i) {
        int length = str.length();
        if (length == i) {
            return null;
        }
        char charAt = str.charAt(i);
        char toLowerCase = Character.toLowerCase(charAt);
        if (charAt == toLowerCase) {
            return str.substring(i);
        }
        if (i + 1 < length && Character.isUpperCase(str.charAt(i + 1))) {
            return str.substring(i);
        }
        StringBuilder stringBuilder = new StringBuilder(length - i);
        stringBuilder.append(toLowerCase);
        stringBuilder.append(str, i + 1, length);
        return stringBuilder.toString();
    }
}
