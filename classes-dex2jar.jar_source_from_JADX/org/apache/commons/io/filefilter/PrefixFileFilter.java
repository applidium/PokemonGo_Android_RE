package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;

public class PrefixFileFilter extends AbstractFileFilter implements Serializable {
    private final IOCase caseSensitivity;
    private final String[] prefixes;

    public PrefixFileFilter(String str) {
        this(str, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String str, IOCase iOCase) {
        if (str == null) {
            throw new IllegalArgumentException("The prefix must not be null");
        }
        this.prefixes = new String[]{str};
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public PrefixFileFilter(List<String> list) {
        this((List) list, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(List<String> list, IOCase iOCase) {
        if (list == null) {
            throw new IllegalArgumentException("The list of prefixes must not be null");
        }
        this.prefixes = (String[]) list.toArray(new String[list.size()]);
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public PrefixFileFilter(String[] strArr) {
        this(strArr, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String[] strArr, IOCase iOCase) {
        if (strArr == null) {
            throw new IllegalArgumentException("The array of prefixes must not be null");
        }
        this.prefixes = new String[strArr.length];
        System.arraycopy(strArr, 0, this.prefixes, 0, strArr.length);
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public boolean accept(File file) {
        String name = file.getName();
        for (String checkStartsWith : this.prefixes) {
            if (this.caseSensitivity.checkStartsWith(name, checkStartsWith)) {
                return true;
            }
        }
        return false;
    }

    public boolean accept(File file, String str) {
        for (String checkStartsWith : this.prefixes) {
            if (this.caseSensitivity.checkStartsWith(str, checkStartsWith)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("(");
        if (this.prefixes != null) {
            for (int i = 0; i < this.prefixes.length; i++) {
                if (i > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append(this.prefixes[i]);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
