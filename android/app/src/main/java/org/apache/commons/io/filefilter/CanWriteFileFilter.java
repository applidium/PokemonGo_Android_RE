package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;

public class CanWriteFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter CANNOT_WRITE;
    public static final IOFileFilter CAN_WRITE;

    static {
        CAN_WRITE = new CanWriteFileFilter();
        CANNOT_WRITE = new NotFileFilter(CAN_WRITE);
    }

    protected CanWriteFileFilter() {
    }

    public boolean accept(File file) {
        return file.canWrite();
    }
}
