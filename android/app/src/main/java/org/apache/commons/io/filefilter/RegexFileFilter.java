package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.regex.Pattern;
import org.apache.commons.io.IOCase;

public class RegexFileFilter extends AbstractFileFilter implements Serializable {
    private final Pattern pattern;

    public RegexFileFilter(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        this.pattern = Pattern.compile(str);
    }

    public RegexFileFilter(String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        this.pattern = Pattern.compile(str, i);
    }

    public RegexFileFilter(String str, IOCase iOCase) {
        if (str == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        int i = 0;
        if (!(iOCase == null || iOCase.isCaseSensitive())) {
            i = 2;
        }
        this.pattern = Pattern.compile(str, i);
    }

    public RegexFileFilter(Pattern pattern) {
        if (pattern == null) {
            throw new IllegalArgumentException("Pattern is missing");
        }
        this.pattern = pattern;
    }

    public boolean accept(File file, String str) {
        return this.pattern.matcher(str).matches();
    }
}
