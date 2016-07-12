package org.apache.commons.io;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

public class FileSystemUtils {
    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE;
    private static final int OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        int i = POSIX_UNIX;
        INSTANCE = new FileSystemUtils();
        String str = "df";
        try {
            String property = System.getProperty("os.name");
            if (property == null) {
                throw new IOException("os.name not found");
            }
            property = property.toLowerCase(Locale.ENGLISH);
            if (property.indexOf("windows") != INIT_PROBLEM) {
                i = WINDOWS;
            } else if (property.indexOf("linux") != INIT_PROBLEM || property.indexOf("mpe/ix") != INIT_PROBLEM || property.indexOf("freebsd") != INIT_PROBLEM || property.indexOf("irix") != INIT_PROBLEM || property.indexOf("digital unix") != INIT_PROBLEM || property.indexOf("unix") != INIT_PROBLEM || property.indexOf("mac os x") != INIT_PROBLEM) {
                i = UNIX;
            } else if (property.indexOf("sun os") != INIT_PROBLEM || property.indexOf("sunos") != INIT_PROBLEM || property.indexOf("solaris") != INIT_PROBLEM) {
                str = "/usr/xpg4/bin/df";
            } else if (property.indexOf("hp-ux") == INIT_PROBLEM && property.indexOf("aix") == INIT_PROBLEM) {
                i = OTHER;
            }
            OS = i;
            DF = str;
        } catch (Exception e) {
            i = INIT_PROBLEM;
        }
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, false, -1);
    }

    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1);
    }

    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(new File(".").getAbsolutePath(), j);
    }

    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1);
    }

    public static long freeSpaceKb(String str, long j) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, true, j);
    }

    long freeSpaceOS(String str, int i, boolean z, long j) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        switch (i) {
            case OTHER /*0*/:
                throw new IllegalStateException("Unsupported operating system");
            case WINDOWS /*1*/:
                return z ? freeSpaceWindows(str, j) / FileUtils.ONE_KB : freeSpaceWindows(str, j);
            case UNIX /*2*/:
                return freeSpaceUnix(str, z, false, j);
            case POSIX_UNIX /*3*/:
                return freeSpaceUnix(str, z, true, j);
            default:
                throw new IllegalStateException("Exception caught when determining operating system");
        }
    }

    long freeSpaceUnix(String str, boolean z, boolean z2, long j) throws IOException {
        if (str.length() == 0) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String[] strArr;
        String str2 = "-";
        if (z) {
            str2 = "-" + "k";
        }
        if (z2) {
            str2 = str2 + "P";
        }
        if (str2.length() > WINDOWS) {
            String[] strArr2 = new String[POSIX_UNIX];
            strArr2[OTHER] = DF;
            strArr2[WINDOWS] = str2;
            strArr2[UNIX] = str;
            strArr = strArr2;
        } else {
            strArr = new String[UNIX];
            strArr[OTHER] = DF;
            strArr[WINDOWS] = str;
        }
        List performCommand = performCommand(strArr, POSIX_UNIX, j);
        if (performCommand.size() < UNIX) {
            throw new IOException("Command line '" + DF + "' did not return info as expected " + "for path '" + str + "'- response was " + performCommand);
        }
        StringTokenizer stringTokenizer;
        StringTokenizer stringTokenizer2 = new StringTokenizer((String) performCommand.get(WINDOWS), MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
        if (stringTokenizer2.countTokens() >= 4) {
            stringTokenizer2.nextToken();
            stringTokenizer = stringTokenizer2;
        } else if (stringTokenizer2.countTokens() != WINDOWS || performCommand.size() < POSIX_UNIX) {
            throw new IOException("Command line '" + DF + "' did not return data as expected " + "for path '" + str + "'- check path is valid");
        } else {
            stringTokenizer = new StringTokenizer((String) performCommand.get(UNIX), MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), str);
    }

    long freeSpaceWindows(String str, long j) throws IOException {
        String normalize = FilenameUtils.normalize(str, false);
        String str2 = (normalize.length() <= 0 || normalize.charAt(OTHER) == '\"') ? normalize : "\"" + normalize + "\"";
        String[] strArr = new String[POSIX_UNIX];
        strArr[OTHER] = "cmd.exe";
        strArr[WINDOWS] = "/C";
        strArr[UNIX] = "dir /a /-c " + str2;
        List performCommand = performCommand(strArr, Integer.MAX_VALUE, j);
        for (int size = performCommand.size() + INIT_PROBLEM; size >= 0; size += INIT_PROBLEM) {
            normalize = (String) performCommand.get(size);
            if (normalize.length() > 0) {
                return parseDir(normalize, str2);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + str2 + "'");
    }

    Process openProcess(String[] strArr) throws IOException {
        return Runtime.getRuntime().exec(strArr);
    }

    long parseBytes(String str, String str2) throws IOException {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong >= 0) {
                return parseLong;
            }
            throw new IOException("Command line '" + DF + "' did not find free space in response " + "for path '" + str2 + "'- check path is valid");
        } catch (Throwable e) {
            throw new IOExceptionWithCause("Command line '" + DF + "' did not return numeric data as expected " + "for path '" + str2 + "'- check path is valid", e);
        }
    }

    long parseDir(String str, String str2) throws IOException {
        int i;
        int i2;
        int i3 = OTHER;
        int length = str.length() + INIT_PROBLEM;
        while (length >= 0) {
            if (Character.isDigit(str.charAt(length))) {
                i = length;
                length += WINDOWS;
                break;
            }
            length += INIT_PROBLEM;
        }
        i = length;
        length = OTHER;
        while (i >= 0) {
            char charAt = str.charAt(i);
            if (!Character.isDigit(charAt) && charAt != ',' && charAt != FilenameUtils.EXTENSION_SEPARATOR) {
                i2 = i + WINDOWS;
                break;
            }
            i += INIT_PROBLEM;
        }
        i2 = OTHER;
        if (i < 0) {
            throw new IOException("Command line 'dir /-c' did not return valid info for path '" + str2 + "'");
        }
        StringBuilder stringBuilder = new StringBuilder(str.substring(i2, length));
        while (i3 < stringBuilder.length()) {
            if (stringBuilder.charAt(i3) == ',' || stringBuilder.charAt(i3) == FilenameUtils.EXTENSION_SEPARATOR) {
                stringBuilder.deleteCharAt(i3);
                i3 += INIT_PROBLEM;
            }
            i3 += WINDOWS;
        }
        return parseBytes(stringBuilder.toString(), str2);
    }

    List<String> performCommand(String[] strArr, int i, long j) throws IOException {
        Process openProcess;
        InputStream inputStream;
        OutputStream outputStream;
        Throwable e;
        Process process;
        InputStream inputStream2;
        OutputStream outputStream2;
        Reader reader;
        Throwable th;
        Throwable th2;
        List<String> arrayList = new ArrayList(20);
        InputStream errorStream;
        Reader bufferedReader;
        try {
            Thread start = ThreadMonitor.start(j);
            openProcess = openProcess(strArr);
            try {
                inputStream = openProcess.getInputStream();
                try {
                    outputStream = openProcess.getOutputStream();
                    try {
                        errorStream = openProcess.getErrorStream();
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        } catch (InterruptedException e2) {
                            e = e2;
                            process = openProcess;
                            inputStream2 = inputStream;
                            outputStream2 = outputStream;
                            reader = null;
                            try {
                                throw new IOExceptionWithCause("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e);
                            } catch (Throwable e3) {
                                th = e3;
                                bufferedReader = reader;
                                outputStream = outputStream2;
                                inputStream = inputStream2;
                                openProcess = process;
                                th2 = th;
                                IOUtils.closeQuietly(inputStream);
                                IOUtils.closeQuietly(outputStream);
                                IOUtils.closeQuietly(errorStream);
                                IOUtils.closeQuietly(bufferedReader);
                                if (openProcess != null) {
                                    openProcess.destroy();
                                }
                                throw th2;
                            }
                        } catch (Throwable e32) {
                            th = e32;
                            bufferedReader = null;
                            th2 = th;
                            IOUtils.closeQuietly(inputStream);
                            IOUtils.closeQuietly(outputStream);
                            IOUtils.closeQuietly(errorStream);
                            IOUtils.closeQuietly(bufferedReader);
                            if (openProcess != null) {
                                openProcess.destroy();
                            }
                            throw th2;
                        }
                    } catch (InterruptedException e4) {
                        e32 = e4;
                        errorStream = null;
                        process = openProcess;
                        inputStream2 = inputStream;
                        outputStream2 = outputStream;
                        reader = null;
                        throw new IOExceptionWithCause("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e32);
                    } catch (Throwable e322) {
                        errorStream = null;
                        th2 = e322;
                        bufferedReader = null;
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly(outputStream);
                        IOUtils.closeQuietly(errorStream);
                        IOUtils.closeQuietly(bufferedReader);
                        if (openProcess != null) {
                            openProcess.destroy();
                        }
                        throw th2;
                    }
                    try {
                        for (String readLine = bufferedReader.readLine(); readLine != null && arrayList.size() < i; readLine = bufferedReader.readLine()) {
                            arrayList.add(readLine.toLowerCase(Locale.ENGLISH).trim());
                        }
                        openProcess.waitFor();
                        ThreadMonitor.stop(start);
                        if (openProcess.exitValue() != 0) {
                            throw new IOException("Command line returned OS error code '" + openProcess.exitValue() + "' for command " + Arrays.asList(strArr));
                        } else if (arrayList.isEmpty()) {
                            throw new IOException("Command line did not return any info for command " + Arrays.asList(strArr));
                        } else {
                            IOUtils.closeQuietly(inputStream);
                            IOUtils.closeQuietly(outputStream);
                            IOUtils.closeQuietly(errorStream);
                            IOUtils.closeQuietly(bufferedReader);
                            if (openProcess != null) {
                                openProcess.destroy();
                            }
                            return arrayList;
                        }
                    } catch (Throwable th22) {
                        th = th22;
                        process = openProcess;
                        inputStream2 = inputStream;
                        outputStream2 = outputStream;
                        reader = bufferedReader;
                        e322 = th;
                        throw new IOExceptionWithCause("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e322);
                    } catch (Throwable th3) {
                        th22 = th3;
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly(outputStream);
                        IOUtils.closeQuietly(errorStream);
                        IOUtils.closeQuietly(bufferedReader);
                        if (openProcess != null) {
                            openProcess.destroy();
                        }
                        throw th22;
                    }
                } catch (InterruptedException e5) {
                    e322 = e5;
                    errorStream = null;
                    outputStream = null;
                    process = openProcess;
                    inputStream2 = inputStream;
                    outputStream2 = outputStream;
                    reader = null;
                    throw new IOExceptionWithCause("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e322);
                } catch (Throwable e3222) {
                    outputStream = null;
                    errorStream = null;
                    th = e3222;
                    bufferedReader = null;
                    th22 = th;
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly(outputStream);
                    IOUtils.closeQuietly(errorStream);
                    IOUtils.closeQuietly(bufferedReader);
                    if (openProcess != null) {
                        openProcess.destroy();
                    }
                    throw th22;
                }
            } catch (InterruptedException e6) {
                e3222 = e6;
                errorStream = null;
                inputStream = null;
                outputStream = null;
                process = openProcess;
                inputStream2 = inputStream;
                outputStream2 = outputStream;
                reader = null;
                throw new IOExceptionWithCause("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e3222);
            } catch (Throwable e32222) {
                outputStream = null;
                inputStream = null;
                errorStream = null;
                th22 = e32222;
                bufferedReader = null;
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly(outputStream);
                IOUtils.closeQuietly(errorStream);
                IOUtils.closeQuietly(bufferedReader);
                if (openProcess != null) {
                    openProcess.destroy();
                }
                throw th22;
            }
        } catch (InterruptedException e7) {
            e32222 = e7;
            errorStream = null;
            inputStream = null;
            outputStream = null;
            openProcess = null;
            process = openProcess;
            inputStream2 = inputStream;
            outputStream2 = outputStream;
            reader = null;
            throw new IOExceptionWithCause("Command line threw an InterruptedException for command " + Arrays.asList(strArr) + " timeout=" + j, e32222);
        } catch (Throwable e322222) {
            openProcess = null;
            outputStream = null;
            inputStream = null;
            errorStream = null;
            th = e322222;
            bufferedReader = null;
            th22 = th;
            IOUtils.closeQuietly(inputStream);
            IOUtils.closeQuietly(outputStream);
            IOUtils.closeQuietly(errorStream);
            IOUtils.closeQuietly(bufferedReader);
            if (openProcess != null) {
                openProcess.destroy();
            }
            throw th22;
        }
    }
}
