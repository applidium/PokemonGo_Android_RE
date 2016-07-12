package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import org.apache.commons.io.FileUtils;

public class SizeFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> SIZE_COMPARATOR;
    public static final Comparator<File> SIZE_REVERSE;
    public static final Comparator<File> SIZE_SUMDIR_COMPARATOR;
    public static final Comparator<File> SIZE_SUMDIR_REVERSE;
    private final boolean sumDirectoryContents;

    static {
        SIZE_COMPARATOR = new SizeFileComparator();
        SIZE_REVERSE = new ReverseComparator(SIZE_COMPARATOR);
        SIZE_SUMDIR_COMPARATOR = new SizeFileComparator(true);
        SIZE_SUMDIR_REVERSE = new ReverseComparator(SIZE_SUMDIR_COMPARATOR);
    }

    public SizeFileComparator() {
        this.sumDirectoryContents = false;
    }

    public SizeFileComparator(boolean z) {
        this.sumDirectoryContents = z;
    }

    public int compare(File file, File file2) {
        long sizeOfDirectory = file.isDirectory() ? (this.sumDirectoryContents && file.exists()) ? FileUtils.sizeOfDirectory(file) : 0 : file.length();
        long sizeOfDirectory2 = file2.isDirectory() ? (this.sumDirectoryContents && file2.exists()) ? FileUtils.sizeOfDirectory(file2) : 0 : file2.length();
        sizeOfDirectory -= sizeOfDirectory2;
        return sizeOfDirectory < 0 ? -1 : sizeOfDirectory > 0 ? 1 : 0;
    }

    public String toString() {
        return super.toString() + "[sumDirectoryContents=" + this.sumDirectoryContents + "]";
    }
}
