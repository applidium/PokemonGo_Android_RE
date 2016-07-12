package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.Serializable;

public class DelegateFileFilter extends AbstractFileFilter implements Serializable {
    private final FileFilter fileFilter;
    private final FilenameFilter filenameFilter;

    public DelegateFileFilter(FileFilter fileFilter) {
        if (fileFilter == null) {
            throw new IllegalArgumentException("The FileFilter must not be null");
        }
        this.fileFilter = fileFilter;
        this.filenameFilter = null;
    }

    public DelegateFileFilter(FilenameFilter filenameFilter) {
        if (filenameFilter == null) {
            throw new IllegalArgumentException("The FilenameFilter must not be null");
        }
        this.filenameFilter = filenameFilter;
        this.fileFilter = null;
    }

    public boolean accept(File file) {
        return this.fileFilter != null ? this.fileFilter.accept(file) : super.accept(file);
    }

    public boolean accept(File file, String str) {
        return this.filenameFilter != null ? this.filenameFilter.accept(file, str) : super.accept(file, str);
    }

    public String toString() {
        return super.toString() + "(" + (this.fileFilter != null ? this.fileFilter.toString() : this.filenameFilter.toString()) + ")";
    }
}
