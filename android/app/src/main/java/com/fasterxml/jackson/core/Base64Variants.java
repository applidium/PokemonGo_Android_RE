package com.fasterxml.jackson.core;

public final class Base64Variants {
    public static final Base64Variant MIME;
    public static final Base64Variant MIME_NO_LINEFEEDS;
    public static final Base64Variant MODIFIED_FOR_URL;
    public static final Base64Variant PEM;
    static final String STD_BASE64_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    static {
        MIME = new Base64Variant("MIME", STD_BASE64_ALPHABET, true, '=', 76);
        MIME_NO_LINEFEEDS = new Base64Variant(MIME, "MIME-NO-LINEFEEDS", Integer.MAX_VALUE);
        PEM = new Base64Variant(MIME, "PEM", true, '=', 64);
        StringBuilder stringBuilder = new StringBuilder(STD_BASE64_ALPHABET);
        stringBuilder.setCharAt(stringBuilder.indexOf("+"), '-');
        stringBuilder.setCharAt(stringBuilder.indexOf("/"), '_');
        MODIFIED_FOR_URL = new Base64Variant("MODIFIED-FOR-URL", stringBuilder.toString(), false, '\u0000', Integer.MAX_VALUE);
    }

    public static Base64Variant getDefaultVariant() {
        return MIME_NO_LINEFEEDS;
    }

    public static Base64Variant valueOf(String str) throws IllegalArgumentException {
        if (MIME._name.equals(str)) {
            return MIME;
        }
        if (MIME_NO_LINEFEEDS._name.equals(str)) {
            return MIME_NO_LINEFEEDS;
        }
        if (PEM._name.equals(str)) {
            return PEM;
        }
        if (MODIFIED_FOR_URL._name.equals(str)) {
            return MODIFIED_FOR_URL;
        }
        throw new IllegalArgumentException("No Base64Variant with name " + (str == null ? "<null>" : "'" + str + "'"));
    }
}
