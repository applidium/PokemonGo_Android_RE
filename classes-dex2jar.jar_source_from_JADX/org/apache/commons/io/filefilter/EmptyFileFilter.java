package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class EmptyFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter EMPTY;
    public static final IOFileFilter NOT_EMPTY;

    static {
        EMPTY = new EmptyFileFilter();
        NOT_EMPTY = new NotFileFilter(EMPTY);
    }

    protected EmptyFileFilter() {
    }

    public boolean accept(File file) {
        if (!file.isDirectory()) {
            return file.length() == 0;
        } else {
            File[] listFiles = file.listFiles();
            return listFiles == null || listFiles.length == 0;
        }
    }
}
