package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.FilenameUtils;

@Deprecated
public class WildcardFilter extends AbstractFileFilter implements Serializable {
    private final String[] wildcards;

    public WildcardFilter(String str) {
        if (str == null) {
            throw new IllegalArgumentException("The wildcard must not be null");
        }
        this.wildcards = new String[]{str};
    }

    public WildcardFilter(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("The wildcard list must not be null");
        }
        this.wildcards = (String[]) list.toArray(new String[list.size()]);
    }

    public WildcardFilter(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException("The wildcard array must not be null");
        }
        this.wildcards = new String[strArr.length];
        System.arraycopy(strArr, 0, this.wildcards, 0, strArr.length);
    }

    public boolean accept(File file) {
        if (file.isDirectory()) {
            return false;
        }
        for (String wildcardMatch : this.wildcards) {
            if (FilenameUtils.wildcardMatch(file.getName(), wildcardMatch)) {
                return true;
            }
        }
        return false;
    }

    public boolean accept(File file, String str) {
        if (file != null && new File(file, str).isDirectory()) {
            return false;
        }
        for (String wildcardMatch : this.wildcards) {
            if (FilenameUtils.wildcardMatch(str, wildcardMatch)) {
                return true;
            }
        }
        return false;
    }
}
