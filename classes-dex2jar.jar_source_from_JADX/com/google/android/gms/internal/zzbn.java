package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
import java.lang.Character.UnicodeBlock;
import java.util.ArrayList;

public class zzbn {
    public static int zzC(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        return zzmw.zza(bytes, 0, bytes.length, 0);
    }

    public static String[] zzD(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] toCharArray = str.toCharArray();
        int length = str.length();
        int i = 0;
        Object obj = null;
        int i2 = 0;
        while (i < length) {
            int codePointAt = Character.codePointAt(toCharArray, i);
            int charCount = Character.charCount(codePointAt);
            if (zzh(codePointAt)) {
                if (obj != null) {
                    arrayList.add(new String(toCharArray, i2, i - i2));
                }
                arrayList.add(new String(toCharArray, i, charCount));
                obj = null;
            } else if (Character.isLetterOrDigit(codePointAt) || Character.getType(codePointAt) == 6 || Character.getType(codePointAt) == 8) {
                if (obj == null) {
                    i2 = i;
                }
                obj = 1;
            } else if (obj != null) {
                arrayList.add(new String(toCharArray, i2, i - i2));
                obj = null;
            }
            i += charCount;
        }
        if (obj != null) {
            arrayList.add(new String(toCharArray, i2, i - i2));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static boolean zza(UnicodeBlock unicodeBlock) {
        return unicodeBlock == UnicodeBlock.BOPOMOFO || unicodeBlock == UnicodeBlock.BOPOMOFO_EXTENDED || unicodeBlock == UnicodeBlock.CJK_COMPATIBILITY || unicodeBlock == UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlock == UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT || unicodeBlock == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlock == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlock == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeBlock == UnicodeBlock.ENCLOSED_CJK_LETTERS_AND_MONTHS || unicodeBlock == UnicodeBlock.HANGUL_JAMO || unicodeBlock == UnicodeBlock.HANGUL_SYLLABLES || unicodeBlock == UnicodeBlock.HIRAGANA || unicodeBlock == UnicodeBlock.KATAKANA || unicodeBlock == UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS;
    }

    static boolean zzh(int i) {
        return Character.isLetter(i) && (zza(UnicodeBlock.of(i)) || zzi(i));
    }

    private static boolean zzi(int i) {
        return (i >= 65382 && i <= 65437) || (i >= 65441 && i <= 65500);
    }
}
