package crittercism.android;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

public final class eb {
    public static void m765a(File file) {
        if (file.getAbsolutePath().contains("com.crittercism")) {
            if (file.isDirectory()) {
                for (File a : file.listFiles()) {
                    m765a(a);
                }
            }
            file.delete();
        }
    }

    public static String m766b(File file) {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        InputStreamReader inputStreamReader = null;
        StringBuilder stringBuilder = new StringBuilder();
        try {
            InputStream fileInputStream = new FileInputStream(file);
            try {
                InputStreamReader inputStreamReader2 = new InputStreamReader(fileInputStream);
                while (true) {
                    try {
                        int read = inputStreamReader2.read();
                        if (read != -1) {
                            stringBuilder.append((char) read);
                        } else {
                            fileInputStream.close();
                            inputStreamReader2.close();
                            return stringBuilder.toString();
                        }
                    } catch (Throwable th2) {
                        inputStreamReader = inputStreamReader2;
                        inputStream = fileInputStream;
                        th = th2;
                        inputStream2 = inputStream;
                    }
                }
            } catch (Throwable th22) {
                inputStream = fileInputStream;
                th = th22;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                throw th;
            }
        } catch (Throwable th222) {
            th = th222;
            inputStream2 = null;
            if (inputStream2 != null) {
                inputStream2.close();
            }
            if (inputStreamReader != null) {
                inputStreamReader.close();
            }
            throw th;
        }
    }
}
