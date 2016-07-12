package org.apache.commons.io;

import java.io.File;
import java.io.IOException;

public class FileDeleteStrategy {
    public static final FileDeleteStrategy FORCE;
    public static final FileDeleteStrategy NORMAL;
    private final String name;

    static class ForceFileDeleteStrategy extends FileDeleteStrategy {
        ForceFileDeleteStrategy() {
            super("Force");
        }

        protected boolean doDelete(File file) throws IOException {
            FileUtils.forceDelete(file);
            return true;
        }
    }

    static {
        NORMAL = new FileDeleteStrategy("Normal");
        FORCE = new ForceFileDeleteStrategy();
    }

    protected FileDeleteStrategy(String str) {
        this.name = str;
    }

    public void delete(File file) throws IOException {
        if (file.exists() && !doDelete(file)) {
            throw new IOException("Deletion failed: " + file);
        }
    }

    public boolean deleteQuietly(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        try {
            return doDelete(file);
        } catch (IOException e) {
            return false;
        }
    }

    protected boolean doDelete(File file) throws IOException {
        return file.delete();
    }

    public String toString() {
        return "FileDeleteStrategy[" + this.name + "]";
    }
}
