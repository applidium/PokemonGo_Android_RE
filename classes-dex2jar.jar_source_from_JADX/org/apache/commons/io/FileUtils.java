package org.apache.commons.io;

import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.io.output.NullOutputStream;

public class FileUtils {
    public static final File[] EMPTY_FILE_ARRAY;
    private static final long FILE_COPY_BUFFER_SIZE = 31457280;
    public static final long ONE_EB = 1152921504606846976L;
    public static final BigInteger ONE_EB_BI;
    public static final long ONE_GB = 1073741824;
    public static final BigInteger ONE_GB_BI;
    public static final long ONE_KB = 1024;
    public static final BigInteger ONE_KB_BI;
    public static final long ONE_MB = 1048576;
    public static final BigInteger ONE_MB_BI;
    public static final long ONE_PB = 1125899906842624L;
    public static final BigInteger ONE_PB_BI;
    public static final long ONE_TB = 1099511627776L;
    public static final BigInteger ONE_TB_BI;
    public static final BigInteger ONE_YB;
    public static final BigInteger ONE_ZB;
    private static final Charset UTF8;

    static {
        ONE_KB_BI = BigInteger.valueOf(ONE_KB);
        ONE_MB_BI = ONE_KB_BI.multiply(ONE_KB_BI);
        ONE_GB_BI = ONE_KB_BI.multiply(ONE_MB_BI);
        ONE_TB_BI = ONE_KB_BI.multiply(ONE_GB_BI);
        ONE_PB_BI = ONE_KB_BI.multiply(ONE_TB_BI);
        ONE_EB_BI = ONE_KB_BI.multiply(ONE_PB_BI);
        ONE_ZB = BigInteger.valueOf(ONE_KB).multiply(BigInteger.valueOf(ONE_EB));
        ONE_YB = ONE_KB_BI.multiply(ONE_ZB);
        EMPTY_FILE_ARRAY = new File[0];
        UTF8 = Charset.forName("UTF-8");
    }

    public static String byteCountToDisplaySize(long j) {
        return byteCountToDisplaySize(BigInteger.valueOf(j));
    }

    public static String byteCountToDisplaySize(BigInteger bigInteger) {
        return bigInteger.divide(ONE_EB_BI).compareTo(BigInteger.ZERO) > 0 ? String.valueOf(bigInteger.divide(ONE_EB_BI)) + " EB" : bigInteger.divide(ONE_PB_BI).compareTo(BigInteger.ZERO) > 0 ? String.valueOf(bigInteger.divide(ONE_PB_BI)) + " PB" : bigInteger.divide(ONE_TB_BI).compareTo(BigInteger.ZERO) > 0 ? String.valueOf(bigInteger.divide(ONE_TB_BI)) + " TB" : bigInteger.divide(ONE_GB_BI).compareTo(BigInteger.ZERO) > 0 ? String.valueOf(bigInteger.divide(ONE_GB_BI)) + " GB" : bigInteger.divide(ONE_MB_BI).compareTo(BigInteger.ZERO) > 0 ? String.valueOf(bigInteger.divide(ONE_MB_BI)) + " MB" : bigInteger.divide(ONE_KB_BI).compareTo(BigInteger.ZERO) > 0 ? String.valueOf(bigInteger.divide(ONE_KB_BI)) + " KB" : String.valueOf(bigInteger) + " bytes";
    }

    private static void checkDirectory(File file) {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (!file.isDirectory()) {
            throw new IllegalArgumentException(file + " is not a directory");
        }
    }

    public static Checksum checksum(File file, Checksum checksum) throws IOException {
        InputStream checkedInputStream;
        Throwable th;
        if (file.isDirectory()) {
            throw new IllegalArgumentException("Checksums can't be computed on directories");
        }
        try {
            checkedInputStream = new CheckedInputStream(new FileInputStream(file), checksum);
            try {
                IOUtils.copy(checkedInputStream, new NullOutputStream());
                IOUtils.closeQuietly(checkedInputStream);
                return checksum;
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly(checkedInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            checkedInputStream = null;
            IOUtils.closeQuietly(checkedInputStream);
            throw th;
        }
    }

    public static long checksumCRC32(File file) throws IOException {
        Object crc32 = new CRC32();
        checksum(file, crc32);
        return crc32.getValue();
    }

    public static void cleanDirectory(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("Failed to list contents of " + file);
            }
            IOException iOException = null;
            for (File forceDelete : listFiles) {
                try {
                    forceDelete(forceDelete);
                } catch (IOException e) {
                    iOException = e;
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } else {
            throw new IllegalArgumentException(file + " is not a directory");
        }
    }

    private static void cleanDirectoryOnExit(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("Failed to list contents of " + file);
            }
            IOException iOException = null;
            for (File forceDeleteOnExit : listFiles) {
                try {
                    forceDeleteOnExit(forceDeleteOnExit);
                } catch (IOException e) {
                    iOException = e;
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } else {
            throw new IllegalArgumentException(file + " is not a directory");
        }
    }

    public static boolean contentEquals(File file, File file2) throws IOException {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2 = null;
        boolean exists = file.exists();
        if (exists == file2.exists()) {
            if (!exists) {
                return true;
            }
            if (file.isDirectory() || file2.isDirectory()) {
                throw new IOException("Can't compare directories, only files");
            } else if (file.length() == file2.length()) {
                if (file.getCanonicalFile().equals(file2.getCanonicalFile())) {
                    return true;
                }
                try {
                    InputStream fileInputStream = new FileInputStream(file);
                    try {
                        InputStream fileInputStream2 = new FileInputStream(file2);
                        try {
                            boolean contentEquals = IOUtils.contentEquals(fileInputStream, fileInputStream2);
                            IOUtils.closeQuietly(fileInputStream);
                            IOUtils.closeQuietly(fileInputStream2);
                            return contentEquals;
                        } catch (Throwable th2) {
                            inputStream2 = fileInputStream;
                            Throwable th3 = th2;
                            inputStream = fileInputStream2;
                            th = th3;
                            IOUtils.closeQuietly(inputStream2);
                            IOUtils.closeQuietly(inputStream);
                            throw th;
                        }
                    } catch (Throwable th22) {
                        th = th22;
                        inputStream = null;
                        inputStream2 = fileInputStream;
                        IOUtils.closeQuietly(inputStream2);
                        IOUtils.closeQuietly(inputStream);
                        throw th;
                    }
                } catch (Throwable th222) {
                    th = th222;
                    inputStream = null;
                    IOUtils.closeQuietly(inputStream2);
                    IOUtils.closeQuietly(inputStream);
                    throw th;
                }
            }
        }
        return false;
    }

    public static boolean contentEqualsIgnoreEOL(File file, File file2, String str) throws IOException {
        Reader inputStreamReader;
        Reader inputStreamReader2;
        Reader reader;
        Throwable th;
        boolean exists = file.exists();
        if (exists != file2.exists()) {
            return false;
        }
        if (!exists) {
            return true;
        }
        if (file.isDirectory() || file2.isDirectory()) {
            throw new IOException("Can't compare directories, only files");
        } else if (file.getCanonicalFile().equals(file2.getCanonicalFile())) {
            return true;
        } else {
            if (str == null) {
                try {
                    inputStreamReader = new InputStreamReader(new FileInputStream(file));
                    try {
                        inputStreamReader2 = new InputStreamReader(new FileInputStream(file2));
                        reader = inputStreamReader;
                    } catch (Throwable th2) {
                        th = th2;
                        reader = inputStreamReader;
                        inputStreamReader = null;
                        IOUtils.closeQuietly(reader);
                        IOUtils.closeQuietly(inputStreamReader);
                        throw th;
                    }
                } catch (Throwable th3) {
                    reader = null;
                    th = th3;
                    inputStreamReader = null;
                    IOUtils.closeQuietly(reader);
                    IOUtils.closeQuietly(inputStreamReader);
                    throw th;
                }
            }
            inputStreamReader = new InputStreamReader(new FileInputStream(file), str);
            inputStreamReader2 = new InputStreamReader(new FileInputStream(file2), str);
            reader = inputStreamReader;
            try {
                boolean contentEqualsIgnoreEOL = IOUtils.contentEqualsIgnoreEOL(reader, inputStreamReader2);
                IOUtils.closeQuietly(reader);
                IOUtils.closeQuietly(inputStreamReader2);
                return contentEqualsIgnoreEOL;
            } catch (Throwable th32) {
                Throwable th4 = th32;
                inputStreamReader = inputStreamReader2;
                th = th4;
                IOUtils.closeQuietly(reader);
                IOUtils.closeQuietly(inputStreamReader);
                throw th;
            }
        }
    }

    public static File[] convertFileCollectionToFileArray(Collection<File> collection) {
        return (File[]) collection.toArray(new File[collection.size()]);
    }

    public static void copyDirectory(File file, File file2) throws IOException {
        copyDirectory(file, file2, true);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter) throws IOException {
        copyDirectory(file, file2, fileFilter, true);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (!file.isDirectory()) {
            throw new IOException("Source '" + file + "' exists but is not a directory");
        } else if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        } else {
            List list = null;
            if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
                File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
                if (listFiles != null && listFiles.length > 0) {
                    list = new ArrayList(listFiles.length);
                    for (File name : listFiles) {
                        list.add(new File(file2, name.getName()).getCanonicalPath());
                    }
                }
            }
            doCopyDirectory(file, file2, fileFilter, z, list);
        }
    }

    public static void copyDirectory(File file, File file2, boolean z) throws IOException {
        copyDirectory(file, file2, null, z);
    }

    public static void copyDirectoryToDirectory(File file, File file2) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file.exists() && !file.isDirectory()) {
            throw new IllegalArgumentException("Source '" + file2 + "' is not a directory");
        } else if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file2.exists() || file2.isDirectory()) {
            copyDirectory(file, new File(file2, file.getName()), true);
        } else {
            throw new IllegalArgumentException("Destination '" + file2 + "' is not a directory");
        }
    }

    public static long copyFile(File file, OutputStream outputStream) throws IOException {
        InputStream fileInputStream = new FileInputStream(file);
        try {
            long copyLarge = IOUtils.copyLarge(fileInputStream, outputStream);
            return copyLarge;
        } finally {
            fileInputStream.close();
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        copyFile(file, file2, true);
    }

    public static void copyFile(File file, File file2, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' exists but is a directory");
        } else if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        } else {
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                throw new IOException("Destination '" + parentFile + "' directory cannot be created");
            } else if (!file2.exists() || file2.canWrite()) {
                doCopyFile(file, file2, z);
            } else {
                throw new IOException("Destination '" + file2 + "' exists but is read-only");
            }
        }
    }

    public static void copyFileToDirectory(File file, File file2) throws IOException {
        copyFileToDirectory(file, file2, true);
    }

    public static void copyFileToDirectory(File file, File file2, boolean z) throws IOException {
        if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file2.exists() || file2.isDirectory()) {
            copyFile(file, new File(file2, file.getName()), z);
        } else {
            throw new IllegalArgumentException("Destination '" + file2 + "' is not a directory");
        }
    }

    public static void copyInputStreamToFile(InputStream inputStream, File file) throws IOException {
        OutputStream openOutputStream;
        try {
            openOutputStream = openOutputStream(file);
            IOUtils.copy(inputStream, openOutputStream);
            openOutputStream.close();
            IOUtils.closeQuietly(openOutputStream);
            IOUtils.closeQuietly(inputStream);
        } catch (Throwable th) {
            IOUtils.closeQuietly(inputStream);
        }
    }

    public static void copyURLToFile(URL url, File file) throws IOException {
        copyInputStreamToFile(url.openStream(), file);
    }

    public static void copyURLToFile(URL url, File file, int i, int i2) throws IOException {
        URLConnection openConnection = url.openConnection();
        openConnection.setConnectTimeout(i);
        openConnection.setReadTimeout(i2);
        copyInputStreamToFile(openConnection.getInputStream(), file);
    }

    static String decodeUrl(String str) {
        if (str == null || str.indexOf(37) < 0) {
            return str;
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer();
        ByteBuffer allocate = ByteBuffer.allocate(length);
        int i = 0;
        while (i < length) {
            if (str.charAt(i) == '%') {
                do {
                    try {
                        allocate.put((byte) Integer.parseInt(str.substring(i + 1, i + 3), 16));
                        i += 3;
                        if (i >= length) {
                            break;
                        }
                    } catch (RuntimeException e) {
                        if (allocate.position() > 0) {
                            allocate.flip();
                            stringBuffer.append(UTF8.decode(allocate).toString());
                            allocate.clear();
                        }
                    } catch (Throwable th) {
                        if (allocate.position() > 0) {
                            allocate.flip();
                            stringBuffer.append(UTF8.decode(allocate).toString());
                            allocate.clear();
                        }
                    }
                } while (str.charAt(i) == '%');
                if (allocate.position() > 0) {
                    allocate.flip();
                    stringBuffer.append(UTF8.decode(allocate).toString());
                    allocate.clear();
                }
            }
            stringBuffer.append(str.charAt(i));
            i++;
        }
        return stringBuffer.toString();
    }

    public static void deleteDirectory(File file) throws IOException {
        if (file.exists()) {
            if (!isSymlink(file)) {
                cleanDirectory(file);
            }
            if (!file.delete()) {
                throw new IOException("Unable to delete directory " + file + ".");
            }
        }
    }

    private static void deleteDirectoryOnExit(File file) throws IOException {
        if (file.exists()) {
            file.deleteOnExit();
            if (!isSymlink(file)) {
                cleanDirectoryOnExit(file);
            }
        }
    }

    public static boolean deleteQuietly(File file) {
        boolean z = false;
        if (file != null) {
            try {
                if (file.isDirectory()) {
                    cleanDirectory(file);
                }
            } catch (Exception e) {
            }
            try {
                z = file.delete();
            } catch (Exception e2) {
            }
        }
        return z;
    }

    public static boolean directoryContains(File file, File file2) throws IOException {
        if (file == null) {
            throw new IllegalArgumentException("Directory must not be null");
        } else if (file.isDirectory()) {
            return (file2 != null && file.exists() && file2.exists()) ? FilenameUtils.directoryContains(file.getCanonicalPath(), file2.getCanonicalPath()) : false;
        } else {
            throw new IllegalArgumentException("Not a directory: " + file);
        }
    }

    private static void doCopyDirectory(File file, File file2, FileFilter fileFilter, boolean z, List<String> list) throws IOException {
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        if (listFiles == null) {
            throw new IOException("Failed to list contents of " + file);
        }
        if (file2.exists()) {
            if (!file2.isDirectory()) {
                throw new IOException("Destination '" + file2 + "' exists but is not a directory");
            }
        } else if (!(file2.mkdirs() || file2.isDirectory())) {
            throw new IOException("Destination '" + file2 + "' directory cannot be created");
        }
        if (file2.canWrite()) {
            for (File file3 : listFiles) {
                File file4 = new File(file2, file3.getName());
                if (list == null || !list.contains(file3.getCanonicalPath())) {
                    if (file3.isDirectory()) {
                        doCopyDirectory(file3, file4, fileFilter, z, list);
                    } else {
                        doCopyFile(file3, file4, z);
                    }
                }
            }
            if (z) {
                file2.setLastModified(file.lastModified());
                return;
            }
            return;
        }
        throw new IOException("Destination '" + file2 + "' cannot be written to");
    }

    private static void doCopyFile(File file, File file2, boolean z) throws IOException {
        OutputStream fileOutputStream;
        Object obj;
        Throwable th;
        InputStream inputStream;
        Object obj2;
        Closeable closeable;
        Closeable channel;
        Closeable channel2;
        Throwable th2;
        Closeable closeable2;
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        try {
            InputStream fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (Throwable th3) {
                obj = outputStream2;
                th = th3;
                inputStream = fileInputStream;
                obj2 = outputStream2;
                IOUtils.closeQuietly(closeable);
                IOUtils.closeQuietly(outputStream2);
                IOUtils.closeQuietly(channel);
                IOUtils.closeQuietly(inputStream);
                throw th;
            }
            try {
                channel = fileInputStream.getChannel();
                try {
                    channel2 = fileOutputStream.getChannel();
                } catch (Throwable th4) {
                    th2 = th4;
                    closeable2 = channel;
                    outputStream = outputStream2;
                    channel2 = closeable2;
                    th = th2;
                    inputStream = fileInputStream;
                    obj = outputStream;
                    obj2 = outputStream2;
                    outputStream2 = fileOutputStream;
                    IOUtils.closeQuietly(closeable);
                    IOUtils.closeQuietly(outputStream2);
                    IOUtils.closeQuietly(channel);
                    IOUtils.closeQuietly(inputStream);
                    throw th;
                }
            } catch (Throwable th5) {
                th2 = th5;
                outputStream = outputStream2;
                th = th2;
                inputStream = fileInputStream;
                obj = outputStream;
                obj2 = outputStream2;
                outputStream2 = fileOutputStream;
                IOUtils.closeQuietly(closeable);
                IOUtils.closeQuietly(outputStream2);
                IOUtils.closeQuietly(channel);
                IOUtils.closeQuietly(inputStream);
                throw th;
            }
            try {
                long size = channel.size();
                long j = 0;
                while (j < size) {
                    j += channel2.transferFrom(channel, j, size - j > FILE_COPY_BUFFER_SIZE ? FILE_COPY_BUFFER_SIZE : size - j);
                }
                IOUtils.closeQuietly(channel2);
                IOUtils.closeQuietly(fileOutputStream);
                IOUtils.closeQuietly(channel);
                IOUtils.closeQuietly(fileInputStream);
                if (file.length() != file2.length()) {
                    throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "'");
                } else if (z) {
                    file2.setLastModified(file.lastModified());
                }
            } catch (Throwable th6) {
                th2 = th6;
                closeable2 = channel;
                channel = channel2;
                channel2 = closeable2;
                th = th2;
                inputStream = fileInputStream;
                obj = outputStream;
                obj2 = outputStream2;
                outputStream2 = fileOutputStream;
                IOUtils.closeQuietly(closeable);
                IOUtils.closeQuietly(outputStream2);
                IOUtils.closeQuietly(channel);
                IOUtils.closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th32) {
            closeable = outputStream2;
            th = th32;
            inputStream = outputStream2;
            channel = outputStream2;
            IOUtils.closeQuietly(closeable);
            IOUtils.closeQuietly(outputStream2);
            IOUtils.closeQuietly(channel);
            IOUtils.closeQuietly(inputStream);
            throw th;
        }
    }

    public static void forceDelete(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectory(file);
            return;
        }
        boolean exists = file.exists();
        if (!file.delete()) {
            if (exists) {
                throw new IOException("Unable to delete file: " + file);
            }
            throw new FileNotFoundException("File does not exist: " + file);
        }
    }

    public static void forceDeleteOnExit(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectoryOnExit(file);
        } else {
            file.deleteOnExit();
        }
    }

    public static void forceMkdir(File file) throws IOException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new IOException("File " + file + " exists and is " + "not a directory. Unable to create directory.");
            }
        } else if (!file.mkdirs() && !file.isDirectory()) {
            throw new IOException("Unable to create directory " + file);
        }
    }

    public static File getFile(File file, String... strArr) {
        if (file == null) {
            throw new NullPointerException("directorydirectory must not be null");
        } else if (strArr == null) {
            throw new NullPointerException("names must not be null");
        } else {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                i++;
                file = new File(file, strArr[i]);
            }
            return file;
        }
    }

    public static File getFile(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("names must not be null");
        }
        int length = strArr.length;
        int i = 0;
        File file = null;
        while (i < length) {
            String str = strArr[i];
            i++;
            file = file == null ? new File(str) : new File(file, str);
        }
        return file;
    }

    public static File getTempDirectory() {
        return new File(getTempDirectoryPath());
    }

    public static String getTempDirectoryPath() {
        return System.getProperty("java.io.tmpdir");
    }

    public static File getUserDirectory() {
        return new File(getUserDirectoryPath());
    }

    public static String getUserDirectoryPath() {
        return System.getProperty("user.home");
    }

    private static void innerListFiles(Collection<File> collection, File file, IOFileFilter iOFileFilter, boolean z) {
        File[] listFiles = file.listFiles(iOFileFilter);
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    if (z) {
                        collection.add(file2);
                    }
                    innerListFiles(collection, file2, iOFileFilter, z);
                } else {
                    collection.add(file2);
                }
            }
        }
    }

    public static boolean isFileNewer(File file, long j) {
        if (file != null) {
            return file.exists() && file.lastModified() > j;
        } else {
            throw new IllegalArgumentException("No specified file");
        }
    }

    public static boolean isFileNewer(File file, File file2) {
        if (file2 == null) {
            throw new IllegalArgumentException("No specified reference file");
        } else if (file2.exists()) {
            return isFileNewer(file, file2.lastModified());
        } else {
            throw new IllegalArgumentException("The reference file '" + file2 + "' doesn't exist");
        }
    }

    public static boolean isFileNewer(File file, Date date) {
        if (date != null) {
            return isFileNewer(file, date.getTime());
        }
        throw new IllegalArgumentException("No specified date");
    }

    public static boolean isFileOlder(File file, long j) {
        if (file != null) {
            return file.exists() && file.lastModified() < j;
        } else {
            throw new IllegalArgumentException("No specified file");
        }
    }

    public static boolean isFileOlder(File file, File file2) {
        if (file2 == null) {
            throw new IllegalArgumentException("No specified reference file");
        } else if (file2.exists()) {
            return isFileOlder(file, file2.lastModified());
        } else {
            throw new IllegalArgumentException("The reference file '" + file2 + "' doesn't exist");
        }
    }

    public static boolean isFileOlder(File file, Date date) {
        if (date != null) {
            return isFileOlder(file, date.getTime());
        }
        throw new IllegalArgumentException("No specified date");
    }

    public static boolean isSymlink(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("File must not be null");
        } else if (FilenameUtils.isSystemWindows()) {
            return false;
        } else {
            if (file.getParent() != null) {
                file = new File(file.getParentFile().getCanonicalFile(), file.getName());
            }
            return !file.getCanonicalFile().equals(file.getAbsoluteFile());
        }
    }

    public static Iterator<File> iterateFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return listFiles(file, iOFileFilter, iOFileFilter2).iterator();
    }

    public static Iterator<File> iterateFiles(File file, String[] strArr, boolean z) {
        return listFiles(file, strArr, z).iterator();
    }

    public static Iterator<File> iterateFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return listFilesAndDirs(file, iOFileFilter, iOFileFilter2).iterator();
    }

    public static LineIterator lineIterator(File file) throws IOException {
        return lineIterator(file, null);
    }

    public static LineIterator lineIterator(File file, String str) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = openInputStream(file);
            return IOUtils.lineIterator(inputStream, str);
        } catch (IOException e) {
            IOUtils.closeQuietly(inputStream);
            throw e;
        } catch (RuntimeException e2) {
            IOUtils.closeQuietly(inputStream);
            throw e2;
        }
    }

    public static Collection<File> listFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        validateListFilesParameters(file, iOFileFilter);
        IOFileFilter upEffectiveFileFilter = setUpEffectiveFileFilter(iOFileFilter);
        IOFileFilter upEffectiveDirFilter = setUpEffectiveDirFilter(iOFileFilter2);
        Collection<File> linkedList = new LinkedList();
        innerListFiles(linkedList, file, FileFilterUtils.or(upEffectiveFileFilter, upEffectiveDirFilter), false);
        return linkedList;
    }

    public static Collection<File> listFiles(File file, String[] strArr, boolean z) {
        IOFileFilter iOFileFilter;
        if (strArr == null) {
            iOFileFilter = TrueFileFilter.INSTANCE;
        } else {
            Object suffixFileFilter = new SuffixFileFilter(toSuffixes(strArr));
        }
        return listFiles(file, iOFileFilter, z ? TrueFileFilter.INSTANCE : FalseFileFilter.INSTANCE);
    }

    public static Collection<File> listFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        validateListFilesParameters(file, iOFileFilter);
        IOFileFilter upEffectiveFileFilter = setUpEffectiveFileFilter(iOFileFilter);
        IOFileFilter upEffectiveDirFilter = setUpEffectiveDirFilter(iOFileFilter2);
        Collection<File> linkedList = new LinkedList();
        if (file.isDirectory()) {
            linkedList.add(file);
        }
        innerListFiles(linkedList, file, FileFilterUtils.or(upEffectiveFileFilter, upEffectiveDirFilter), true);
        return linkedList;
    }

    public static void moveDirectory(File file, File file2) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (!file.isDirectory()) {
            throw new IOException("Source '" + file + "' is not a directory");
        } else if (file2.exists()) {
            throw new FileExistsException("Destination '" + file2 + "' already exists");
        } else if (!file.renameTo(file2)) {
            if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
                throw new IOException("Cannot move directory: " + file + " to a subdirectory of itself: " + file2);
            }
            copyDirectory(file, file2);
            deleteDirectory(file);
            if (file.exists()) {
                throw new IOException("Failed to delete original directory '" + file + "' after copy to '" + file2 + "'");
            }
        }
    }

    public static void moveDirectoryToDirectory(File file, File file2, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination directory must not be null");
        } else {
            if (!file2.exists() && z) {
                file2.mkdirs();
            }
            if (!file2.exists()) {
                throw new FileNotFoundException("Destination directory '" + file2 + "' does not exist [createDestDir=" + z + "]");
            } else if (file2.isDirectory()) {
                moveDirectory(file, new File(file2, file.getName()));
            } else {
                throw new IOException("Destination '" + file2 + "' is not a directory");
            }
        }
    }

    public static void moveFile(File file, File file2) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' is a directory");
        } else if (file2.exists()) {
            throw new FileExistsException("Destination '" + file2 + "' already exists");
        } else if (file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' is a directory");
        } else if (!file.renameTo(file2)) {
            copyFile(file, file2);
            if (!file.delete()) {
                deleteQuietly(file2);
                throw new IOException("Failed to delete original file '" + file + "' after copy to '" + file2 + "'");
            }
        }
    }

    public static void moveFileToDirectory(File file, File file2, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination directory must not be null");
        } else {
            if (!file2.exists() && z) {
                file2.mkdirs();
            }
            if (!file2.exists()) {
                throw new FileNotFoundException("Destination directory '" + file2 + "' does not exist [createDestDir=" + z + "]");
            } else if (file2.isDirectory()) {
                moveFile(file, new File(file2, file.getName()));
            } else {
                throw new IOException("Destination '" + file2 + "' is not a directory");
            }
        }
    }

    public static void moveToDirectory(File file, File file2, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        } else if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        } else if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (file.isDirectory()) {
            moveDirectoryToDirectory(file, file2, z);
        } else {
            moveFileToDirectory(file, file2, z);
        }
    }

    public static FileInputStream openInputStream(File file) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException("File '" + file + "' does not exist");
        } else if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        } else if (file.canRead()) {
            return new FileInputStream(file);
        } else {
            throw new IOException("File '" + file + "' cannot be read");
        }
    }

    public static FileOutputStream openOutputStream(File file) throws IOException {
        return openOutputStream(file, false);
    }

    public static FileOutputStream openOutputStream(File file, boolean z) throws IOException {
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (!(parentFile == null || parentFile.mkdirs() || parentFile.isDirectory())) {
                throw new IOException("Directory '" + parentFile + "' could not be created");
            }
        } else if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        } else if (!file.canWrite()) {
            throw new IOException("File '" + file + "' cannot be written to");
        }
        return new FileOutputStream(file, z);
    }

    public static byte[] readFileToByteArray(File file) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = openInputStream(file);
            byte[] toByteArray = IOUtils.toByteArray(inputStream, file.length());
            return toByteArray;
        } finally {
            IOUtils.closeQuietly(inputStream);
        }
    }

    public static String readFileToString(File file) throws IOException {
        return readFileToString(file, Charset.defaultCharset());
    }

    public static String readFileToString(File file, String str) throws IOException {
        return readFileToString(file, Charsets.toCharset(str));
    }

    public static String readFileToString(File file, Charset charset) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = openInputStream(file);
            String iOUtils = IOUtils.toString(inputStream, Charsets.toCharset(charset));
            return iOUtils;
        } finally {
            IOUtils.closeQuietly(inputStream);
        }
    }

    public static List<String> readLines(File file) throws IOException {
        return readLines(file, Charset.defaultCharset());
    }

    public static List<String> readLines(File file, String str) throws IOException {
        return readLines(file, Charsets.toCharset(str));
    }

    public static List<String> readLines(File file, Charset charset) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = openInputStream(file);
            List<String> readLines = IOUtils.readLines(inputStream, Charsets.toCharset(charset));
            return readLines;
        } finally {
            IOUtils.closeQuietly(inputStream);
        }
    }

    private static IOFileFilter setUpEffectiveDirFilter(IOFileFilter iOFileFilter) {
        if (iOFileFilter == null) {
            return FalseFileFilter.INSTANCE;
        }
        return FileFilterUtils.and(iOFileFilter, DirectoryFileFilter.INSTANCE);
    }

    private static IOFileFilter setUpEffectiveFileFilter(IOFileFilter iOFileFilter) {
        return FileFilterUtils.and(iOFileFilter, FileFilterUtils.notFileFilter(DirectoryFileFilter.INSTANCE));
    }

    public static long sizeOf(File file) {
        if (file.exists()) {
            return file.isDirectory() ? sizeOfDirectory(file) : file.length();
        } else {
            throw new IllegalArgumentException(file + " does not exist");
        }
    }

    public static BigInteger sizeOfAsBigInteger(File file) {
        if (file.exists()) {
            return file.isDirectory() ? sizeOfDirectoryAsBigInteger(file) : BigInteger.valueOf(file.length());
        } else {
            throw new IllegalArgumentException(file + " does not exist");
        }
    }

    public static long sizeOfDirectory(File file) {
        checkDirectory(file);
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return 0;
        }
        long j = 0;
        for (File file2 : listFiles) {
            try {
                if (!isSymlink(file2)) {
                    j += sizeOf(file2);
                    if (j < 0) {
                        break;
                    }
                } else {
                    continue;
                }
            } catch (IOException e) {
            }
        }
        return j;
    }

    public static BigInteger sizeOfDirectoryAsBigInteger(File file) {
        checkDirectory(file);
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return BigInteger.ZERO;
        }
        BigInteger bigInteger = BigInteger.ZERO;
        BigInteger bigInteger2 = bigInteger;
        for (File file2 : listFiles) {
            try {
                if (!isSymlink(file2)) {
                    bigInteger2 = bigInteger2.add(BigInteger.valueOf(sizeOf(file2)));
                }
            } catch (IOException e) {
            }
        }
        return bigInteger2;
    }

    public static File toFile(URL url) {
        return (url == null || !Scheme.FILE.equalsIgnoreCase(url.getProtocol())) ? null : new File(decodeUrl(url.getFile().replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar)));
    }

    public static File[] toFiles(URL[] urlArr) {
        if (urlArr == null || urlArr.length == 0) {
            return EMPTY_FILE_ARRAY;
        }
        File[] fileArr = new File[urlArr.length];
        for (int i = 0; i < urlArr.length; i++) {
            URL url = urlArr[i];
            if (url != null) {
                if (url.getProtocol().equals(Scheme.FILE)) {
                    fileArr[i] = toFile(url);
                } else {
                    throw new IllegalArgumentException("URL could not be converted to a File: " + url);
                }
            }
        }
        return fileArr;
    }

    private static String[] toSuffixes(String[] strArr) {
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = "." + strArr[i];
        }
        return strArr2;
    }

    public static URL[] toURLs(File[] fileArr) throws IOException {
        URL[] urlArr = new URL[fileArr.length];
        for (int i = 0; i < urlArr.length; i++) {
            urlArr[i] = fileArr[i].toURI().toURL();
        }
        return urlArr;
    }

    public static void touch(File file) throws IOException {
        if (!file.exists()) {
            IOUtils.closeQuietly(openOutputStream(file));
        }
        if (!file.setLastModified(System.currentTimeMillis())) {
            throw new IOException("Unable to set the last modification time for " + file);
        }
    }

    private static void validateListFilesParameters(File file, IOFileFilter iOFileFilter) {
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("Parameter 'directory' is not a directory");
        } else if (iOFileFilter == null) {
            throw new NullPointerException("Parameter 'fileFilter' is null");
        }
    }

    public static boolean waitFor(File file, int i) {
        int i2 = 0;
        int i3 = 0;
        while (!file.exists()) {
            if (i3 < 10) {
                i3++;
            } else if (i2 > i) {
                return false;
            } else {
                i2++;
                i3 = 0;
            }
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
            } catch (Exception e2) {
            }
        }
        return true;
    }

    public static void write(File file, CharSequence charSequence) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), false);
    }

    public static void write(File file, CharSequence charSequence, String str) throws IOException {
        write(file, charSequence, str, false);
    }

    public static void write(File file, CharSequence charSequence, String str, boolean z) throws IOException {
        write(file, charSequence, Charsets.toCharset(str), z);
    }

    public static void write(File file, CharSequence charSequence, Charset charset) throws IOException {
        write(file, charSequence, charset, false);
    }

    public static void write(File file, CharSequence charSequence, Charset charset, boolean z) throws IOException {
        writeStringToFile(file, charSequence == null ? null : charSequence.toString(), charset, z);
    }

    public static void write(File file, CharSequence charSequence, boolean z) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), z);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr) throws IOException {
        writeByteArrayToFile(file, bArr, false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, boolean z) throws IOException {
        OutputStream outputStream = null;
        try {
            outputStream = openOutputStream(file, z);
            outputStream.write(bArr);
            outputStream.close();
        } finally {
            IOUtils.closeQuietly(outputStream);
        }
    }

    public static void writeLines(File file, String str, Collection<?> collection) throws IOException {
        writeLines(file, str, collection, null, false);
    }

    public static void writeLines(File file, String str, Collection<?> collection, String str2) throws IOException {
        writeLines(file, str, collection, str2, false);
    }

    public static void writeLines(File file, String str, Collection<?> collection, String str2, boolean z) throws IOException {
        OutputStream outputStream = null;
        try {
            outputStream = openOutputStream(file, z);
            OutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
            IOUtils.writeLines((Collection) collection, str2, bufferedOutputStream, str);
            bufferedOutputStream.flush();
            outputStream.close();
        } finally {
            IOUtils.closeQuietly(outputStream);
        }
    }

    public static void writeLines(File file, String str, Collection<?> collection, boolean z) throws IOException {
        writeLines(file, str, collection, null, z);
    }

    public static void writeLines(File file, Collection<?> collection) throws IOException {
        writeLines(file, null, collection, null, false);
    }

    public static void writeLines(File file, Collection<?> collection, String str) throws IOException {
        writeLines(file, null, collection, str, false);
    }

    public static void writeLines(File file, Collection<?> collection, String str, boolean z) throws IOException {
        writeLines(file, null, collection, str, z);
    }

    public static void writeLines(File file, Collection<?> collection, boolean z) throws IOException {
        writeLines(file, null, collection, null, z);
    }

    public static void writeStringToFile(File file, String str) throws IOException {
        writeStringToFile(file, str, Charset.defaultCharset(), false);
    }

    public static void writeStringToFile(File file, String str, String str2) throws IOException {
        writeStringToFile(file, str, str2, false);
    }

    public static void writeStringToFile(File file, String str, String str2, boolean z) throws IOException {
        writeStringToFile(file, str, Charsets.toCharset(str2), z);
    }

    public static void writeStringToFile(File file, String str, Charset charset) throws IOException {
        writeStringToFile(file, str, charset, false);
    }

    public static void writeStringToFile(File file, String str, Charset charset, boolean z) throws IOException {
        OutputStream outputStream = null;
        try {
            outputStream = openOutputStream(file, z);
            IOUtils.write(str, outputStream, charset);
            outputStream.close();
        } finally {
            IOUtils.closeQuietly(outputStream);
        }
    }

    public static void writeStringToFile(File file, String str, boolean z) throws IOException {
        writeStringToFile(file, str, Charset.defaultCharset(), z);
    }
}
