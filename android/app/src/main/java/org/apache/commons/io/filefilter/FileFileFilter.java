package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class FileFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter FILE;

    static {
        FILE = new FileFileFilter();
    }

    protected FileFileFilter() {
    }

    public boolean accept(File file) {
        return file.isFile();
    }
}
