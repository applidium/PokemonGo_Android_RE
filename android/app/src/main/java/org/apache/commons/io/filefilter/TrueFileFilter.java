package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class TrueFileFilter implements IOFileFilter, Serializable {
    public static final IOFileFilter INSTANCE;
    public static final IOFileFilter TRUE;

    static {
        TRUE = new TrueFileFilter();
        INSTANCE = TRUE;
    }

    protected TrueFileFilter() {
    }

    public boolean accept(File file) {
        return true;
    }

    public boolean accept(File file, String str) {
        return true;
    }
}
