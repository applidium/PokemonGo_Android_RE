package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;

public class NameFileFilter extends AbstractFileFilter implements Serializable {
    private final IOCase caseSensitivity;
    private final String[] names;

    public NameFileFilter(String str) {
        this(str, null);
    }

    public NameFileFilter(String str, IOCase iOCase) {
        if (str == null) {
            throw new IllegalArgumentException("The wildcard must not be null");
        }
        this.names = new String[]{str};
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public NameFileFilter(List<String> list) {
        this((List) list, null);
    }

    public NameFileFilter(List<String> list, IOCase iOCase) {
        if (list == null) {
            throw new IllegalArgumentException("The list of names must not be null");
        }
        this.names = (String[]) list.toArray(new String[list.size()]);
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public NameFileFilter(String[] strArr) {
        this(strArr, null);
    }

    public NameFileFilter(String[] strArr, IOCase iOCase) {
        if (strArr == null) {
            throw new IllegalArgumentException("The array of names must not be null");
        }
        this.names = new String[strArr.length];
        System.arraycopy(strArr, 0, this.names, 0, strArr.length);
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public boolean accept(File file) {
        String name = file.getName();
        for (String checkEquals : this.names) {
            if (this.caseSensitivity.checkEquals(name, checkEquals)) {
                return true;
            }
        }
        return false;
    }

    public boolean accept(File file, String str) {
        for (String checkEquals : this.names) {
            if (this.caseSensitivity.checkEquals(str, checkEquals)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("(");
        if (this.names != null) {
            for (int i = 0; i < this.names.length; i++) {
                if (i > 0) {
                    stringBuilder.append(",");
                }
                stringBuilder.append(this.names[i]);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
