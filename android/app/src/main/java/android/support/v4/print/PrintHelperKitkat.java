package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument.Page;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentAdapter.WriteResultCallback;
import android.print.PrintDocumentInfo;
import android.print.PrintDocumentInfo.Builder;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

class PrintHelperKitkat {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    private static final String LOG_TAG = "PrintHelperKitkat";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode;
    final Context mContext;
    Options mDecodeOptions;
    private final Object mLock;
    int mOrientation;
    int mScaleMode;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    /* renamed from: android.support.v4.print.PrintHelperKitkat.1 */
    class C00691 extends PrintDocumentAdapter {
        private PrintAttributes mAttributes;
        final /* synthetic */ Bitmap val$bitmap;
        final /* synthetic */ OnPrintFinishCallback val$callback;
        final /* synthetic */ int val$fittingMode;
        final /* synthetic */ String val$jobName;

        C00691(String str, Bitmap bitmap, int i, OnPrintFinishCallback onPrintFinishCallback) {
            this.val$jobName = str;
            this.val$bitmap = bitmap;
            this.val$fittingMode = i;
            this.val$callback = onPrintFinishCallback;
        }

        public void onFinish() {
            if (this.val$callback != null) {
                this.val$callback.onFinish();
            }
        }

        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
            boolean z = true;
            this.mAttributes = printAttributes2;
            PrintDocumentInfo build = new Builder(this.val$jobName).setContentType(PrintHelperKitkat.SCALE_MODE_FIT).setPageCount(PrintHelperKitkat.SCALE_MODE_FIT).build();
            if (printAttributes2.equals(printAttributes)) {
                z = false;
            }
            layoutResultCallback.onLayoutFinished(build, z);
        }

        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
            PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, this.mAttributes);
            Bitmap access$000 = PrintHelperKitkat.this.convertBitmapForColorMode(this.val$bitmap, this.mAttributes.getColorMode());
            try {
                Page startPage = printedPdfDocument.startPage(PrintHelperKitkat.SCALE_MODE_FIT);
                startPage.getCanvas().drawBitmap(access$000, PrintHelperKitkat.this.getMatrix(access$000.getWidth(), access$000.getHeight(), new RectF(startPage.getInfo().getContentRect()), this.val$fittingMode), null);
                printedPdfDocument.finishPage(startPage);
                printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                PageRange[] pageRangeArr2 = new PageRange[PrintHelperKitkat.SCALE_MODE_FIT];
                pageRangeArr2[0] = PageRange.ALL_PAGES;
                writeResultCallback.onWriteFinished(pageRangeArr2);
            } catch (Throwable e) {
                Log.e(PrintHelperKitkat.LOG_TAG, "Error writing printed content", e);
                writeResultCallback.onWriteFailed(null);
            } catch (Throwable th) {
                if (printedPdfDocument != null) {
                    printedPdfDocument.close();
                }
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                    } catch (IOException e2) {
                    }
                }
                if (access$000 != this.val$bitmap) {
                    access$000.recycle();
                }
            }
            if (printedPdfDocument != null) {
                printedPdfDocument.close();
            }
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException e3) {
                }
            }
            if (access$000 != this.val$bitmap) {
                access$000.recycle();
            }
        }
    }

    /* renamed from: android.support.v4.print.PrintHelperKitkat.2 */
    class C00722 extends PrintDocumentAdapter {
        private PrintAttributes mAttributes;
        Bitmap mBitmap;
        AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;
        final /* synthetic */ OnPrintFinishCallback val$callback;
        final /* synthetic */ int val$fittingMode;
        final /* synthetic */ Uri val$imageFile;
        final /* synthetic */ String val$jobName;

        /* renamed from: android.support.v4.print.PrintHelperKitkat.2.1 */
        class C00711 extends AsyncTask<Uri, Boolean, Bitmap> {
            final /* synthetic */ CancellationSignal val$cancellationSignal;
            final /* synthetic */ LayoutResultCallback val$layoutResultCallback;
            final /* synthetic */ PrintAttributes val$newPrintAttributes;
            final /* synthetic */ PrintAttributes val$oldPrintAttributes;

            /* renamed from: android.support.v4.print.PrintHelperKitkat.2.1.1 */
            class C00701 implements OnCancelListener {
                C00701() {
                }

                public void onCancel() {
                    C00722.this.cancelLoad();
                    C00711.this.cancel(false);
                }
            }

            C00711(CancellationSignal cancellationSignal, PrintAttributes printAttributes, PrintAttributes printAttributes2, LayoutResultCallback layoutResultCallback) {
                this.val$cancellationSignal = cancellationSignal;
                this.val$newPrintAttributes = printAttributes;
                this.val$oldPrintAttributes = printAttributes2;
                this.val$layoutResultCallback = layoutResultCallback;
            }

            protected Bitmap doInBackground(Uri... uriArr) {
                try {
                    return PrintHelperKitkat.this.loadConstrainedBitmap(C00722.this.val$imageFile, PrintHelperKitkat.MAX_PRINT_SIZE);
                } catch (FileNotFoundException e) {
                    return null;
                }
            }

            protected void onCancelled(Bitmap bitmap) {
                this.val$layoutResultCallback.onLayoutCancelled();
                C00722.this.mLoadBitmap = null;
            }

            protected void onPostExecute(Bitmap bitmap) {
                boolean z = true;
                super.onPostExecute(bitmap);
                C00722.this.mBitmap = bitmap;
                if (bitmap != null) {
                    PrintDocumentInfo build = new Builder(C00722.this.val$jobName).setContentType(PrintHelperKitkat.SCALE_MODE_FIT).setPageCount(PrintHelperKitkat.SCALE_MODE_FIT).build();
                    if (this.val$newPrintAttributes.equals(this.val$oldPrintAttributes)) {
                        z = false;
                    }
                    this.val$layoutResultCallback.onLayoutFinished(build, z);
                } else {
                    this.val$layoutResultCallback.onLayoutFailed(null);
                }
                C00722.this.mLoadBitmap = null;
            }

            protected void onPreExecute() {
                this.val$cancellationSignal.setOnCancelListener(new C00701());
            }
        }

        C00722(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback, int i) {
            this.val$jobName = str;
            this.val$imageFile = uri;
            this.val$callback = onPrintFinishCallback;
            this.val$fittingMode = i;
            this.mBitmap = null;
        }

        private void cancelLoad() {
            synchronized (PrintHelperKitkat.this.mLock) {
                if (PrintHelperKitkat.this.mDecodeOptions != null) {
                    PrintHelperKitkat.this.mDecodeOptions.requestCancelDecode();
                    PrintHelperKitkat.this.mDecodeOptions = null;
                }
            }
        }

        public void onFinish() {
            super.onFinish();
            cancelLoad();
            if (this.mLoadBitmap != null) {
                this.mLoadBitmap.cancel(true);
            }
            if (this.val$callback != null) {
                this.val$callback.onFinish();
            }
            if (this.mBitmap != null) {
                this.mBitmap.recycle();
                this.mBitmap = null;
            }
        }

        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
            boolean z = true;
            this.mAttributes = printAttributes2;
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.mBitmap != null) {
                PrintDocumentInfo build = new Builder(this.val$jobName).setContentType(PrintHelperKitkat.SCALE_MODE_FIT).setPageCount(PrintHelperKitkat.SCALE_MODE_FIT).build();
                if (printAttributes2.equals(printAttributes)) {
                    z = false;
                }
                layoutResultCallback.onLayoutFinished(build, z);
            } else {
                this.mLoadBitmap = new C00711(cancellationSignal, printAttributes2, printAttributes, layoutResultCallback).execute(new Uri[0]);
            }
        }

        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
            PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, this.mAttributes);
            Bitmap access$000 = PrintHelperKitkat.this.convertBitmapForColorMode(this.mBitmap, this.mAttributes.getColorMode());
            try {
                Page startPage = printedPdfDocument.startPage(PrintHelperKitkat.SCALE_MODE_FIT);
                startPage.getCanvas().drawBitmap(access$000, PrintHelperKitkat.this.getMatrix(this.mBitmap.getWidth(), this.mBitmap.getHeight(), new RectF(startPage.getInfo().getContentRect()), this.val$fittingMode), null);
                printedPdfDocument.finishPage(startPage);
                printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                PageRange[] pageRangeArr2 = new PageRange[PrintHelperKitkat.SCALE_MODE_FIT];
                pageRangeArr2[0] = PageRange.ALL_PAGES;
                writeResultCallback.onWriteFinished(pageRangeArr2);
            } catch (Throwable e) {
                Log.e(PrintHelperKitkat.LOG_TAG, "Error writing printed content", e);
                writeResultCallback.onWriteFailed(null);
            } catch (Throwable th) {
                if (printedPdfDocument != null) {
                    printedPdfDocument.close();
                }
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                    } catch (IOException e2) {
                    }
                }
                if (access$000 != this.mBitmap) {
                    access$000.recycle();
                }
            }
            if (printedPdfDocument != null) {
                printedPdfDocument.close();
            }
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException e3) {
                }
            }
            if (access$000 != this.mBitmap) {
                access$000.recycle();
            }
        }
    }

    PrintHelperKitkat(Context context) {
        this.mDecodeOptions = null;
        this.mLock = new Object();
        this.mScaleMode = SCALE_MODE_FILL;
        this.mColorMode = SCALE_MODE_FILL;
        this.mOrientation = SCALE_MODE_FIT;
        this.mContext = context;
    }

    private Bitmap convertBitmapForColorMode(Bitmap bitmap, int i) {
        if (i != SCALE_MODE_FIT) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    private Matrix getMatrix(int i, int i2, RectF rectF, int i3) {
        Matrix matrix = new Matrix();
        float width = rectF.width() / ((float) i);
        width = i3 == SCALE_MODE_FILL ? Math.max(width, rectF.height() / ((float) i2)) : Math.min(width, rectF.height() / ((float) i2));
        matrix.postScale(width, width);
        matrix.postTranslate((rectF.width() - (((float) i) * width)) / 2.0f, (rectF.height() - (width * ((float) i2))) / 2.0f);
        return matrix;
    }

    private Bitmap loadBitmap(Uri uri, Options options) throws FileNotFoundException {
        InputStream inputStream = null;
        if (uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        try {
            inputStream = this.mContext.getContentResolver().openInputStream(uri);
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable e) {
                    Log.w(LOG_TAG, "close fail ", e);
                }
            }
            return decodeStream;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable e2) {
                    Log.w(LOG_TAG, "close fail ", e2);
                }
            }
        }
    }

    private Bitmap loadConstrainedBitmap(Uri uri, int i) throws FileNotFoundException {
        Bitmap bitmap = null;
        int i2 = SCALE_MODE_FIT;
        if (i <= 0 || uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        loadBitmap(uri, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (i3 > 0 && i4 > 0) {
            int max = Math.max(i3, i4);
            while (max > i) {
                max >>>= SCALE_MODE_FIT;
                i2 <<= SCALE_MODE_FIT;
            }
            if (i2 > 0 && Math.min(i3, i4) / i2 > 0) {
                Options options2;
                synchronized (this.mLock) {
                    this.mDecodeOptions = new Options();
                    this.mDecodeOptions.inMutable = true;
                    this.mDecodeOptions.inSampleSize = i2;
                    options2 = this.mDecodeOptions;
                }
                try {
                    bitmap = loadBitmap(uri, options2);
                    synchronized (this.mLock) {
                        this.mDecodeOptions = null;
                    }
                } catch (Throwable th) {
                    synchronized (this.mLock) {
                    }
                    this.mDecodeOptions = null;
                }
            }
        }
        return bitmap;
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getScaleMode() {
        return this.mScaleMode;
    }

    public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        if (bitmap != null) {
            int i = this.mScaleMode;
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            MediaSize mediaSize = MediaSize.UNKNOWN_PORTRAIT;
            if (bitmap.getWidth() > bitmap.getHeight()) {
                mediaSize = MediaSize.UNKNOWN_LANDSCAPE;
            }
            printManager.print(str, new C00691(str, bitmap, i, onPrintFinishCallback), new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build());
        }
    }

    public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        PrintDocumentAdapter c00722 = new C00722(str, uri, onPrintFinishCallback, this.mScaleMode);
        PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.mColorMode);
        if (this.mOrientation == SCALE_MODE_FIT) {
            builder.setMediaSize(MediaSize.UNKNOWN_LANDSCAPE);
        } else if (this.mOrientation == SCALE_MODE_FILL) {
            builder.setMediaSize(MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(str, c00722, builder.build());
    }

    public void setColorMode(int i) {
        this.mColorMode = i;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public void setScaleMode(int i) {
        this.mScaleMode = i;
    }
}
