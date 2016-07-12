package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Stack;
import spacemadness.com.lunarconsole.BuildConfig;

public class FilenameUtils {
    public static final char EXTENSION_SEPARATOR = '.';
    public static final String EXTENSION_SEPARATOR_STR;
    private static final char OTHER_SEPARATOR;
    private static final char SYSTEM_SEPARATOR;
    private static final char UNIX_SEPARATOR = '/';
    private static final char WINDOWS_SEPARATOR = '\\';

    static {
        EXTENSION_SEPARATOR_STR = Character.toString(EXTENSION_SEPARATOR);
        SYSTEM_SEPARATOR = File.separatorChar;
        if (isSystemWindows()) {
            OTHER_SEPARATOR = UNIX_SEPARATOR;
        } else {
            OTHER_SEPARATOR = WINDOWS_SEPARATOR;
        }
    }

    public static String concat(String str, String str2) {
        int prefixLength = getPrefixLength(str2);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength > 0) {
            return normalize(str2);
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        return length == 0 ? normalize(str2) : isSeparator(str.charAt(length + -1)) ? normalize(str + str2) : normalize(str + UNIX_SEPARATOR + str2);
    }

    public static boolean directoryContains(String str, String str2) throws IOException {
        if (str != null) {
            return (str2 == null || IOCase.SYSTEM.checkEquals(str, str2)) ? false : IOCase.SYSTEM.checkStartsWith(str2, str);
        } else {
            throw new IllegalArgumentException("Directory must not be null");
        }
    }

    private static String doGetFullPath(String str, boolean z) {
        if (str == null) {
            return null;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength >= str.length()) {
            return z ? getPrefix(str) : str;
        } else {
            int indexOfLastSeparator = indexOfLastSeparator(str);
            if (indexOfLastSeparator < 0) {
                return str.substring(0, prefixLength);
            }
            int i = (z ? 1 : 0) + indexOfLastSeparator;
            if (i == 0) {
                i++;
            }
            return str.substring(0, i);
        }
    }

    private static String doGetPath(String str, int i) {
        if (str == null) {
            return null;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        int indexOfLastSeparator = indexOfLastSeparator(str);
        int i2 = indexOfLastSeparator + i;
        return (prefixLength >= str.length() || indexOfLastSeparator < 0 || prefixLength >= i2) ? BuildConfig.FLAVOR : str.substring(prefixLength, i2);
    }

    private static String doNormalize(String str, char c, boolean z) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return str;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        int i;
        Object obj;
        int i2;
        Object obj2 = new char[(length + 2)];
        str.getChars(0, str.length(), obj2, 0);
        char c2 = c == SYSTEM_SEPARATOR ? OTHER_SEPARATOR : SYSTEM_SEPARATOR;
        for (i = 0; i < obj2.length; i++) {
            if (obj2[i] == c2) {
                obj2[i] = c;
            }
        }
        if (obj2[length - 1] != c) {
            obj2[length] = c;
            obj = null;
            i2 = length + 1;
        } else {
            i = 1;
            i2 = length;
        }
        length = i2;
        i2 = prefixLength + 1;
        while (i2 < length) {
            if (obj2[i2] == c && obj2[i2 - 1] == c) {
                System.arraycopy(obj2, i2, obj2, i2 - 1, length - i2);
                length--;
                i2--;
            }
            i2++;
        }
        Object obj3 = obj;
        i = prefixLength + 1;
        while (i < length) {
            int i3;
            if (obj2[i] == c && obj2[i - 1] == EXTENSION_SEPARATOR && (i == prefixLength + 1 || obj2[i - 2] == c)) {
                if (i == length - 1) {
                    obj3 = 1;
                }
                System.arraycopy(obj2, i + 1, obj2, i - 1, length - i);
                length -= 2;
                i3 = i - 1;
                obj = obj3;
                i2 = i3;
            } else {
                i3 = i;
                obj = obj3;
                i2 = i3;
            }
            i3 = i2 + 1;
            obj3 = obj;
            i = i3;
        }
        i = prefixLength + 2;
        while (i < length) {
            if (obj2[i] == c && obj2[i - 1] == EXTENSION_SEPARATOR && obj2[i - 2] == EXTENSION_SEPARATOR && (i == prefixLength + 2 || obj2[i - 3] == c)) {
                if (i == prefixLength + 2) {
                    return null;
                }
                if (i == length - 1) {
                    obj3 = 1;
                }
                for (int i4 = i - 4; i4 >= prefixLength; i4--) {
                    if (obj2[i4] == c) {
                        System.arraycopy(obj2, i + 1, obj2, i4 + 1, length - i);
                        length -= i - i4;
                        i = i4 + 1;
                        break;
                    }
                }
                System.arraycopy(obj2, i + 1, obj2, prefixLength, length - i);
                length -= (i + 1) - prefixLength;
                i = prefixLength + 1;
            }
            i++;
        }
        return length <= 0 ? BuildConfig.FLAVOR : length <= prefixLength ? new String(obj2, 0, length) : (obj3 == null || !z) ? new String(obj2, 0, length - 1) : new String(obj2, 0, length);
    }

    public static boolean equals(String str, String str2) {
        return equals(str, str2, false, IOCase.SENSITIVE);
    }

    public static boolean equals(String str, String str2, boolean z, IOCase iOCase) {
        if (str == null || str2 == null) {
            return str == null && str2 == null;
        } else {
            if (z) {
                str = normalize(str);
                str2 = normalize(str2);
                if (str == null || str2 == null) {
                    throw new NullPointerException("Error normalizing one or both of the file names");
                }
            }
            if (iOCase == null) {
                iOCase = IOCase.SENSITIVE;
            }
            return iOCase.checkEquals(str, str2);
        }
    }

    public static boolean equalsNormalized(String str, String str2) {
        return equals(str, str2, true, IOCase.SENSITIVE);
    }

    public static boolean equalsNormalizedOnSystem(String str, String str2) {
        return equals(str, str2, true, IOCase.SYSTEM);
    }

    public static boolean equalsOnSystem(String str, String str2) {
        return equals(str, str2, false, IOCase.SYSTEM);
    }

    public static String getBaseName(String str) {
        return removeExtension(getName(str));
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(str);
        return indexOfExtension == -1 ? BuildConfig.FLAVOR : str.substring(indexOfExtension + 1);
    }

    public static String getFullPath(String str) {
        return doGetFullPath(str, true);
    }

    public static String getFullPathNoEndSeparator(String str) {
        return doGetFullPath(str, false);
    }

    public static String getName(String str) {
        return str == null ? null : str.substring(indexOfLastSeparator(str) + 1);
    }

    public static String getPath(String str) {
        return doGetPath(str, 1);
    }

    public static String getPathNoEndSeparator(String str) {
        return doGetPath(str, 0);
    }

    public static String getPrefix(String str) {
        if (str == null) {
            return null;
        }
        int prefixLength = getPrefixLength(str);
        return prefixLength >= 0 ? prefixLength > str.length() ? str + UNIX_SEPARATOR : str.substring(0, prefixLength) : null;
    }

    public static int getPrefixLength(String str) {
        if (str == null) {
            return -1;
        }
        int length = str.length();
        if (length == 0) {
            return 0;
        }
        char charAt = str.charAt(0);
        if (charAt == ':') {
            return -1;
        }
        if (length == 1) {
            if (charAt == '~') {
                return 2;
            }
            if (!isSeparator(charAt)) {
                return 0;
            }
        } else if (charAt == '~') {
            r1 = str.indexOf(47, 1);
            int indexOf = str.indexOf(92, 1);
            if (r1 == -1 && indexOf == -1) {
                return length + 1;
            }
            if (r1 == -1) {
                r1 = indexOf;
            }
            return Math.min(r1, indexOf == -1 ? r1 : indexOf) + 1;
        } else {
            char charAt2 = str.charAt(1);
            if (charAt2 == ':') {
                char toUpperCase = Character.toUpperCase(charAt);
                return (toUpperCase < 'A' || toUpperCase > 'Z') ? -1 : (length == 2 || !isSeparator(str.charAt(2))) ? 2 : 3;
            } else if (isSeparator(charAt) && isSeparator(charAt2)) {
                r1 = str.indexOf(47, 2);
                int indexOf2 = str.indexOf(92, 2);
                if ((r1 == -1 && indexOf2 == -1) || r1 == 2 || indexOf2 == 2) {
                    return -1;
                }
                if (r1 == -1) {
                    r1 = indexOf2;
                }
                return Math.min(r1, indexOf2 == -1 ? r1 : indexOf2) + 1;
            } else if (!isSeparator(charAt)) {
                return 0;
            }
        }
        return 1;
    }

    public static int indexOfExtension(String str) {
        if (str == null) {
            return -1;
        }
        int lastIndexOf = str.lastIndexOf(46);
        return indexOfLastSeparator(str) <= lastIndexOf ? lastIndexOf : -1;
    }

    public static int indexOfLastSeparator(String str) {
        return str == null ? -1 : Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    public static boolean isExtension(String str, String str2) {
        return str == null ? false : (str2 == null || str2.length() == 0) ? indexOfExtension(str) == -1 : getExtension(str).equals(str2);
    }

    public static boolean isExtension(String str, Collection<String> collection) {
        if (str == null) {
            return false;
        }
        if (collection == null || collection.isEmpty()) {
            return indexOfExtension(str) == -1;
        }
        String extension = getExtension(str);
        for (String equals : collection) {
            if (extension.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isExtension(String str, String[] strArr) {
        if (str == null) {
            return false;
        }
        if (strArr == null || strArr.length == 0) {
            return indexOfExtension(str) == -1;
        } else {
            String extension = getExtension(str);
            for (Object equals : strArr) {
                if (extension.equals(equals)) {
                    return true;
                }
            }
            return false;
        }
    }

    private static boolean isSeparator(char c) {
        return c == UNIX_SEPARATOR || c == WINDOWS_SEPARATOR;
    }

    static boolean isSystemWindows() {
        return SYSTEM_SEPARATOR == WINDOWS_SEPARATOR;
    }

    public static String normalize(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, true);
    }

    public static String normalize(String str, boolean z) {
        return doNormalize(str, z ? UNIX_SEPARATOR : WINDOWS_SEPARATOR, true);
    }

    public static String normalizeNoEndSeparator(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, false);
    }

    public static String normalizeNoEndSeparator(String str, boolean z) {
        return doNormalize(str, z ? UNIX_SEPARATOR : WINDOWS_SEPARATOR, false);
    }

    public static String removeExtension(String str) {
        if (str == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(str);
        return indexOfExtension != -1 ? str.substring(0, indexOfExtension) : str;
    }

    public static String separatorsToSystem(String str) {
        return str == null ? null : isSystemWindows() ? separatorsToWindows(str) : separatorsToUnix(str);
    }

    public static String separatorsToUnix(String str) {
        return (str == null || str.indexOf(92) == -1) ? str : str.replace(WINDOWS_SEPARATOR, UNIX_SEPARATOR);
    }

    public static String separatorsToWindows(String str) {
        return (str == null || str.indexOf(47) == -1) ? str : str.replace(UNIX_SEPARATOR, WINDOWS_SEPARATOR);
    }

    static String[] splitOnTokens(String str) {
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        char[] toCharArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < toCharArray.length) {
            if (toCharArray[i] == '?' || toCharArray[i] == '*') {
                if (stringBuilder.length() != 0) {
                    arrayList.add(stringBuilder.toString());
                    stringBuilder.setLength(0);
                }
                if (toCharArray[i] == '?') {
                    arrayList.add("?");
                } else if (arrayList.isEmpty() || (i > 0 && !((String) arrayList.get(arrayList.size() - 1)).equals("*"))) {
                    arrayList.add("*");
                }
            } else {
                stringBuilder.append(toCharArray[i]);
            }
            i++;
        }
        if (stringBuilder.length() != 0) {
            arrayList.add(stringBuilder.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean wildcardMatch(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SENSITIVE);
    }

    public static boolean wildcardMatch(String str, String str2, IOCase iOCase) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        String[] splitOnTokens = splitOnTokens(str2);
        Stack stack = new Stack();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        do {
            if (stack.size() > 0) {
                int[] iArr = (int[]) stack.pop();
                i2 = iArr[0];
                i3 = iArr[1];
                i = true;
            }
            while (i2 < splitOnTokens.length) {
                if (splitOnTokens[i2].equals("?")) {
                    i3++;
                    if (i3 > str.length()) {
                        break;
                    }
                    i = 0;
                } else if (!splitOnTokens[i2].equals("*")) {
                    if (i == 0) {
                        if (!iOCase.checkRegionMatches(str, i3, splitOnTokens[i2])) {
                            break;
                        }
                    }
                    i3 = iOCase.checkIndexOf(str, i3, splitOnTokens[i2]);
                    if (i3 == -1) {
                        break;
                    }
                    if (iOCase.checkIndexOf(str, i3 + 1, splitOnTokens[i2]) >= 0) {
                        stack.push(new int[]{i2, iOCase.checkIndexOf(str, i3 + 1, splitOnTokens[i2])});
                    }
                    i3 += splitOnTokens[i2].length();
                    i = 0;
                } else if (i2 == splitOnTokens.length - 1) {
                    i3 = str.length();
                    r0 = true;
                } else {
                    r0 = true;
                }
                i2++;
            }
            if (i2 == splitOnTokens.length && r3 == str.length()) {
                return true;
            }
        } while (stack.size() > 0);
        return false;
    }

    public static boolean wildcardMatchOnSystem(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SYSTEM);
    }
}
