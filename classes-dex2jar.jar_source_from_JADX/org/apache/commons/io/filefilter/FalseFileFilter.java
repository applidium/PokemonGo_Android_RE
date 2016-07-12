package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class FalseFileFilter implements IOFileFilter, Serializable {
    public static final IOFileFilter FALSE;
    public static final IOFileFilter INSTANCE;

    static {
        FALSE = new FalseFileFilter();
        INSTANCE = FALSE;
    }

    protected FalseFileFilter() {
    }

    public boolean accept(File file) {
        return false;
    }

    public boolean accept(File file, String str) {
        return false;
    }
}
