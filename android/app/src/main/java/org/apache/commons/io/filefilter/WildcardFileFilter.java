package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOCase;

public class WildcardFileFilter extends AbstractFileFilter implements Serializable {
    private final IOCase caseSensitivity;
    private final String[] wildcards;

    public WildcardFileFilter(String str) {
        this(str, null);
    }

    public WildcardFileFilter(String str, IOCase iOCase) {
        if (str == null) {
            throw new IllegalArgumentException("The wildcard must not be null");
        }
        this.wildcards = new String[]{str};
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public WildcardFileFilter(List<String> list) {
        this((List) list, null);
    }

    public WildcardFileFilter(List<String> list, IOCase iOCase) {
        if (list == null) {
            throw new IllegalArgumentException("The wildcard list must not be null");
        }
        this.wildcards = (String[]) list.toArray(new String[list.size()]);
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public WildcardFileFilter(String[] strArr) {
        this(strArr, null);
    }

    public WildcardFileFilter(String[] strArr, IOCase iOCase) {
        if (strArr == null) {
            throw new IllegalArgumentException("The wildcard array must not be null");
        }
        this.wildcards = new String[strArr.length];
        System.arraycopy(strArr, 0, this.wildcards, 0, strArr.length);
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public boolean accept(File file) {
        String name = file.getName();
        for (String wildcardMatch : this.wildcards) {
            if (FilenameUtils.wildcardMatch(name, wildcardMatch, this.caseSensitivity)) {
                return true;
            }
        }
        return false;
    }

    public boolean accept(File file, String str) {
        for (String wildcardMatch : this.wildcards) {
            if (FilenameUtils.wildcardMatch(str, wildcardMatch, this.caseSensitivity)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("(");
        if (this.wildcards != null) {
            for (int i = 0; i < this.wildcards.length; i++) {
                if (i > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append(this.wildcards[i]);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
