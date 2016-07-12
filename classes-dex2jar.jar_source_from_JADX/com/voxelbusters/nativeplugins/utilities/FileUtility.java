package com.voxelbusters.nativeplugins.utilities;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.v4.content.FileProvider;
import com.google.android.gms.location.places.Place;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileUtility {
    public static final int IMAGE_QUALITY = 100;

    public static void createDirectoriesIfUnAvailable(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static String createFileFromStream(InputStream inputStream, File file, String str) {
        File file2 = new File(file, str);
        createPathIfUnAvailable(file, file2);
        try {
            OutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[Place.TYPE_SUBLOCALITY_LEVEL_2];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            inputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file2.getAbsolutePath();
    }

    static void createPathIfUnAvailable(File file, File file2) {
        if (!file2.exists()) {
            try {
                file.mkdirs();
                file2.createNewFile();
            } catch (IOException e) {
                Debug.error(CommonDefines.FILE_UTILS_TAG, "Creating file failed!");
                e.printStackTrace();
            }
        }
    }

    public static Uri createSharingFileUri(Context context, byte[] bArr, int i, String str, String str2) {
        boolean hasExternalStorageWritable = ApplicationUtility.hasExternalStorageWritable(context);
        String savedFile = getSavedFile(bArr, i, ApplicationUtility.getExternalTempDirectoryIfExists(context, str), str2, false);
        Debug.log(CommonDefines.SHARING_TAG, "Saving temp at " + savedFile);
        Uri uri = null;
        if (!StringUtility.isNullOrEmpty(savedFile)) {
            uri = !hasExternalStorageWritable ? FileProvider.getUriForFile(context, ApplicationUtility.getFileProviderAuthoityName(context), new File(savedFile)) : Uri.fromFile(new File(savedFile));
            context.grantUriPermission(ApplicationUtility.getPackageName(context), uri, 3);
        }
        return uri;
    }

    public static ByteArrayOutputStream getBitmapStream(String str) {
        Bitmap decodeFile = BitmapFactory.decodeFile(new File(str).getAbsolutePath());
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        decodeFile.compress(CompressFormat.PNG, IMAGE_QUALITY, byteArrayOutputStream);
        return byteArrayOutputStream;
    }

    public static String getContentsOfFile(String str) {
        BufferedReader bufferedReader;
        IOException e;
        String str2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(str));
            if (bufferedReader != null) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    try {
                        str2 = new StringBuilder(String.valueOf(str2)).append(readLine).toString();
                    } catch (IOException e2) {
                        e = e2;
                    }
                }
            }
        } catch (IOException e3) {
            e = e3;
            bufferedReader = null;
            e.printStackTrace();
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            return str2;
        }
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        return str2;
    }

    public static String getFilePathromURI(Context context, Uri uri) {
        return new File(uri.toString()).getAbsolutePath();
    }

    public static String getSavedFile(byte[] bArr, int i, File file, String str, boolean z) {
        return getSavedFile(bArr, i, file, str, z, true);
    }

    public static String getSavedFile(byte[] bArr, int i, File file, String str, boolean z, boolean z2) {
        FileNotFoundException e;
        IOException e2;
        String str2 = null;
        if (bArr == null || i <= 0) {
            return str2;
        }
        createDirectoriesIfUnAvailable(file.getAbsolutePath());
        File file2 = new File(file, str);
        if (file2.exists()) {
            file2.delete();
            try {
                file2.createNewFile();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        if (z2) {
            file2.setReadable(true, false);
            file2.setWritable(true, false);
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
                str2 = file2.getAbsolutePath();
            } catch (FileNotFoundException e4) {
                e = e4;
                e.printStackTrace();
                return str2 != null ? str2 : str2;
            } catch (IOException e5) {
                e2 = e5;
                e2.printStackTrace();
                if (str2 != null) {
                }
            }
        } catch (FileNotFoundException e6) {
            e = e6;
            e.printStackTrace();
            if (str2 != null) {
            }
        } catch (IOException e7) {
            e2 = e7;
            e2.printStackTrace();
            if (str2 != null) {
            }
        }
        if (str2 != null && z) {
            return "file://" + str2;
        }
    }

    public static String getSavedFileFromUri(Context context, Uri uri, File file, String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] toByteArray;
        FileNotFoundException e;
        IOException e2;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[Place.TYPE_SUBLOCALITY_LEVEL_2];
                while (openInputStream.read(bArr) != -1) {
                    byteArrayOutputStream.write(bArr);
                }
                byteArrayOutputStream.flush();
                toByteArray = byteArrayOutputStream.toByteArray();
            } catch (FileNotFoundException e3) {
                e = e3;
            } catch (IOException e4) {
                e2 = e4;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            byteArrayOutputStream = null;
            e.printStackTrace();
            toByteArray = null;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            return toByteArray != null ? null : getSavedFile(toByteArray, toByteArray.length, file, str, true);
        } catch (IOException e7) {
            e2 = e7;
            byteArrayOutputStream = null;
            e2.printStackTrace();
            toByteArray = null;
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            if (toByteArray != null) {
            }
        }
        if (byteArrayOutputStream != null) {
            byteArrayOutputStream.close();
        }
        if (toByteArray != null) {
        }
    }

    public static Uri getSavedFileUri(byte[] bArr, int i, File file, String str, boolean z) {
        return Uri.fromFile(new File(getSavedFile(bArr, i, file, str, z, true)));
    }

    public static String getSavedLocalFileFromUri(Context context, Uri uri, String str, String str2) {
        return getSavedFileFromUri(context, uri, context.getDir(str, 0), str2);
    }

    public static String getScaledImagePath(String str, File file, String str2, float f, boolean z) {
        File file2 = new File(str);
        String scaledImagePathFromBitmap = getScaledImagePathFromBitmap(BitmapFactory.decodeFile(file2.getAbsolutePath()), file, str2, f);
        if (z) {
            file2.delete();
        }
        return scaledImagePathFromBitmap;
    }

    public static String getScaledImagePathFromBitmap(Bitmap bitmap, File file, String str, float f) {
        FileNotFoundException e;
        Throwable th;
        Throwable th2;
        int i = 0;
        String str2 = null;
        File file2 = new File(file, str);
        createPathIfUnAvailable(file, file2);
        OutputStream fileOutputStream;
        try {
            int height;
            fileOutputStream = new FileOutputStream(file2);
            if (bitmap != null) {
                try {
                    i = (int) (((float) bitmap.getWidth()) * f);
                    height = (int) (((float) bitmap.getHeight()) * f);
                } catch (FileNotFoundException e2) {
                    e = e2;
                    try {
                        Debug.error(CommonDefines.FILE_UTILS_TAG, "Error creating scaled bitmap " + e.getMessage());
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        return str2;
                    } catch (Throwable th3) {
                        th = th3;
                        th2 = th;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            } catch (IOException e32) {
                                e32.printStackTrace();
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    if (fileOutputStream != null) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    }
                    throw th2;
                }
            }
            height = 0;
            if (i == 0 || height == 0) {
                Debug.error(CommonDefines.FILE_UTILS_TAG, "Width and height should be greater than zero. Returning null reference");
            } else {
                Bitmap.createScaledBitmap(bitmap, i, height, true).compress(CompressFormat.JPEG, IMAGE_QUALITY, fileOutputStream);
                str2 = file2.getAbsolutePath();
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                } catch (IOException e322) {
                    e322.printStackTrace();
                }
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            fileOutputStream = null;
            Debug.error(CommonDefines.FILE_UTILS_TAG, "Error creating scaled bitmap " + e.getMessage());
            e.printStackTrace();
            if (fileOutputStream != null) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
            return str2;
        } catch (Throwable th5) {
            th4 = th5;
            fileOutputStream = null;
            th2 = th4;
            if (fileOutputStream != null) {
                fileOutputStream.flush();
                fileOutputStream.close();
            }
            throw th2;
        }
        return str2;
    }

    public static void replaceFile(byte[] bArr, File file, String str) {
        if (bArr != null) {
            getSavedFile(bArr, bArr.length, file, str, false);
            return;
        }
        File file2 = new File(file, str);
        if (file2.exists()) {
            file2.delete();
        }
    }
}
