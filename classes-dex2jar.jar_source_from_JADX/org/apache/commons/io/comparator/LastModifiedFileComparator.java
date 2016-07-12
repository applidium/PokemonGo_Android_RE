package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;

public class LastModifiedFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> LASTMODIFIED_COMPARATOR;
    public static final Comparator<File> LASTMODIFIED_REVERSE;

    static {
        LASTMODIFIED_COMPARATOR = new LastModifiedFileComparator();
        LASTMODIFIED_REVERSE = new ReverseComparator(LASTMODIFIED_COMPARATOR);
    }

    public int compare(File file, File file2) {
        long lastModified = file.lastModified() - file2.lastModified();
        return lastModified < 0 ? -1 : lastModified > 0 ? 1 : 0;
    }

    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
