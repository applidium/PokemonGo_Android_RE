package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class DirectoryFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter DIRECTORY;
    public static final IOFileFilter INSTANCE;

    static {
        DIRECTORY = new DirectoryFileFilter();
        INSTANCE = DIRECTORY;
    }

    protected DirectoryFileFilter() {
    }

    public boolean accept(File file) {
        return file.isDirectory();
    }
}
