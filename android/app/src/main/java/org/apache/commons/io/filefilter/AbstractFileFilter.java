package org.apache.commons.io.filefilter;

import java.io.File;

public abstract class AbstractFileFilter implements IOFileFilter {
    public boolean accept(File file) {
        return accept(file.getParentFile(), file.getName());
    }

    public boolean accept(File file, String str) {
        return accept(new File(file, str));
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
