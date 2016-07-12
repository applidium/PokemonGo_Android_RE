package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import org.apache.commons.io.IOCase;

public class PathFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> PATH_COMPARATOR;
    public static final Comparator<File> PATH_INSENSITIVE_COMPARATOR;
    public static final Comparator<File> PATH_INSENSITIVE_REVERSE;
    public static final Comparator<File> PATH_REVERSE;
    public static final Comparator<File> PATH_SYSTEM_COMPARATOR;
    public static final Comparator<File> PATH_SYSTEM_REVERSE;
    private final IOCase caseSensitivity;

    static {
        PATH_COMPARATOR = new PathFileComparator();
        PATH_REVERSE = new ReverseComparator(PATH_COMPARATOR);
        PATH_INSENSITIVE_COMPARATOR = new PathFileComparator(IOCase.INSENSITIVE);
        PATH_INSENSITIVE_REVERSE = new ReverseComparator(PATH_INSENSITIVE_COMPARATOR);
        PATH_SYSTEM_COMPARATOR = new PathFileComparator(IOCase.SYSTEM);
        PATH_SYSTEM_REVERSE = new ReverseComparator(PATH_SYSTEM_COMPARATOR);
    }

    public PathFileComparator() {
        this.caseSensitivity = IOCase.SENSITIVE;
    }

    public PathFileComparator(IOCase iOCase) {
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        this.caseSensitivity = iOCase;
    }

    public int compare(File file, File file2) {
        return this.caseSensitivity.checkCompareTo(file.getPath(), file2.getPath());
    }

    public String toString() {
        return super.toString() + "[caseSensitivity=" + this.caseSensitivity + "]";
    }
}
