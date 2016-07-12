package org.apache.commons.io.input;

import com.google.android.gms.location.places.Place;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class Tailer implements Runnable {
    private static final int DEFAULT_BUFSIZE = 4096;
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final String RAF_MODE = "r";
    private final long delayMillis;
    private final boolean end;
    private final File file;
    private final byte[] inbuf;
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;

    public Tailer(File file, TailerListener tailerListener) {
        this(file, tailerListener, 1000);
    }

    public Tailer(File file, TailerListener tailerListener, long j) {
        this(file, tailerListener, j, false);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z) {
        this(file, tailerListener, j, z, (int) DEFAULT_BUFSIZE);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, int i) {
        this(file, tailerListener, j, z, false, i);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        this(file, tailerListener, j, z, z2, DEFAULT_BUFSIZE);
    }

    public Tailer(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this.run = true;
        this.file = file;
        this.delayMillis = j;
        this.end = z;
        this.inbuf = new byte[i];
        this.listener = tailerListener;
        tailerListener.init(this);
        this.reOpen = z2;
    }

    public static Tailer create(File file, TailerListener tailerListener) {
        return create(file, tailerListener, 1000, false);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j) {
        return create(file, tailerListener, j, false);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z) {
        return create(file, tailerListener, j, z, (int) DEFAULT_BUFSIZE);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, int i) {
        Object tailer = new Tailer(file, tailerListener, j, z, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2) {
        return create(file, tailerListener, j, z, z2, DEFAULT_BUFSIZE);
    }

    public static Tailer create(File file, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        Object tailer = new Tailer(file, tailerListener, j, z, z2, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    private long readLines(RandomAccessFile randomAccessFile) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        long filePointer = randomAccessFile.getFilePointer();
        long j = filePointer;
        int i = 0;
        while (this.run) {
            int read = randomAccessFile.read(this.inbuf);
            if (read != -1) {
                for (int i2 = 0; i2 < read; i2++) {
                    byte b = this.inbuf[i2];
                    switch (b) {
                        case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                            this.listener.handle(stringBuilder.toString());
                            stringBuilder.setLength(0);
                            j = (((long) i2) + filePointer) + 1;
                            i = 0;
                            break;
                        case Place.TYPE_BOWLING_ALLEY /*13*/:
                            if (i != 0) {
                                stringBuilder.append('\r');
                            }
                            i = 1;
                            break;
                        default:
                            if (i != 0) {
                                this.listener.handle(stringBuilder.toString());
                                stringBuilder.setLength(0);
                                j = (((long) i2) + filePointer) + 1;
                                i = 0;
                            }
                            stringBuilder.append((char) b);
                            break;
                    }
                }
                filePointer = randomAccessFile.getFilePointer();
            } else {
                randomAccessFile.seek(j);
                return j;
            }
        }
        randomAccessFile.seek(j);
        return j;
    }

    public long getDelay() {
        return this.delayMillis;
    }

    public File getFile() {
        return this.file;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r13 = this;
        r4 = 0;
        r0 = 0;
        r2 = r4;
        r6 = r4;
    L_0x0005:
        r1 = r13.run;	 Catch:{ Exception -> 0x0026, all -> 0x00c7 }
        if (r1 == 0) goto L_0x00d8;
    L_0x0009:
        if (r0 != 0) goto L_0x00d8;
    L_0x000b:
        r1 = new java.io.RandomAccessFile;	 Catch:{ FileNotFoundException -> 0x001f }
        r8 = r13.file;	 Catch:{ FileNotFoundException -> 0x001f }
        r9 = "r";
        r1.<init>(r8, r9);	 Catch:{ FileNotFoundException -> 0x001f }
        r0 = r1;
    L_0x0015:
        if (r0 != 0) goto L_0x0030;
    L_0x0017:
        r8 = r13.delayMillis;	 Catch:{ InterruptedException -> 0x001d }
        java.lang.Thread.sleep(r8);	 Catch:{ InterruptedException -> 0x001d }
        goto L_0x0005;
    L_0x001d:
        r1 = move-exception;
        goto L_0x0005;
    L_0x001f:
        r1 = move-exception;
        r1 = r13.listener;	 Catch:{ Exception -> 0x0026, all -> 0x00c7 }
        r1.fileNotFound();	 Catch:{ Exception -> 0x0026, all -> 0x00c7 }
        goto L_0x0015;
    L_0x0026:
        r1 = move-exception;
    L_0x0027:
        r2 = r13.listener;	 Catch:{ all -> 0x00bd }
        r2.handle(r1);	 Catch:{ all -> 0x00bd }
        org.apache.commons.io.IOUtils.closeQuietly(r0);
    L_0x002f:
        return;
    L_0x0030:
        r1 = r13.end;	 Catch:{ Exception -> 0x0042 }
        if (r1 == 0) goto L_0x0044;
    L_0x0034:
        r1 = r13.file;	 Catch:{ Exception -> 0x0042 }
        r6 = r1.length();	 Catch:{ Exception -> 0x0042 }
    L_0x003a:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0042 }
        r0.seek(r6);	 Catch:{ Exception -> 0x0042 }
        goto L_0x0005;
    L_0x0042:
        r1 = move-exception;
        goto L_0x0027;
    L_0x0044:
        r6 = r4;
        goto L_0x003a;
    L_0x0046:
        r0 = r13.run;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        if (r0 == 0) goto L_0x00b8;
    L_0x004a:
        r0 = r13.file;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r0 = org.apache.commons.io.FileUtils.isFileNewer(r0, r6);	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r8 = r13.file;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r8 = r8.length();	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r10 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1));
        if (r10 >= 0) goto L_0x0077;
    L_0x005a:
        r0 = r13.listener;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r0.fileRotated();	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r0 = new java.io.RandomAccessFile;	 Catch:{ FileNotFoundException -> 0x006e }
        r8 = r13.file;	 Catch:{ FileNotFoundException -> 0x006e }
        r9 = "r";
        r0.<init>(r8, r9);	 Catch:{ FileNotFoundException -> 0x006e }
        org.apache.commons.io.IOUtils.closeQuietly(r1);	 Catch:{ FileNotFoundException -> 0x00c2 }
        r1 = r0;
        r2 = r4;
        goto L_0x0046;
    L_0x006e:
        r0 = move-exception;
        r0 = r1;
    L_0x0070:
        r1 = r13.listener;	 Catch:{ Exception -> 0x0042 }
        r1.fileNotFound();	 Catch:{ Exception -> 0x0042 }
        r1 = r0;
        goto L_0x0046;
    L_0x0077:
        r8 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1));
        if (r8 <= 0) goto L_0x00a8;
    L_0x007b:
        r6 = r13.readLines(r1);	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
    L_0x0083:
        r0 = r13.reOpen;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        if (r0 == 0) goto L_0x008a;
    L_0x0087:
        org.apache.commons.io.IOUtils.closeQuietly(r1);	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
    L_0x008a:
        r8 = r13.delayMillis;	 Catch:{ InterruptedException -> 0x00c5 }
        java.lang.Thread.sleep(r8);	 Catch:{ InterruptedException -> 0x00c5 }
    L_0x008f:
        r0 = r13.run;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        if (r0 == 0) goto L_0x00a4;
    L_0x0093:
        r0 = r13.reOpen;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        if (r0 == 0) goto L_0x00a4;
    L_0x0097:
        r0 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r8 = r13.file;	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r9 = "r";
        r0.<init>(r8, r9);	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r0.seek(r6);	 Catch:{ Exception -> 0x0042 }
        r1 = r0;
    L_0x00a4:
        r11 = r2;
        r2 = r6;
        r6 = r11;
        goto L_0x0046;
    L_0x00a8:
        if (r0 == 0) goto L_0x00d4;
    L_0x00aa:
        r2 = 0;
        r1.seek(r2);	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r6 = r13.readLines(r1);	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x00ce, all -> 0x00c9 }
        goto L_0x0083;
    L_0x00b8:
        org.apache.commons.io.IOUtils.closeQuietly(r1);
        goto L_0x002f;
    L_0x00bd:
        r1 = move-exception;
    L_0x00be:
        org.apache.commons.io.IOUtils.closeQuietly(r0);
        throw r1;
    L_0x00c2:
        r1 = move-exception;
        r2 = r4;
        goto L_0x0070;
    L_0x00c5:
        r0 = move-exception;
        goto L_0x008f;
    L_0x00c7:
        r1 = move-exception;
        goto L_0x00be;
    L_0x00c9:
        r0 = move-exception;
        r11 = r0;
        r0 = r1;
        r1 = r11;
        goto L_0x00be;
    L_0x00ce:
        r0 = move-exception;
        r11 = r0;
        r0 = r1;
        r1 = r11;
        goto L_0x0027;
    L_0x00d4:
        r11 = r6;
        r6 = r2;
        r2 = r11;
        goto L_0x0083;
    L_0x00d8:
        r1 = r0;
        r11 = r2;
        r2 = r6;
        r6 = r11;
        goto L_0x0046;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.input.Tailer.run():void");
    }

    public void stop() {
        this.run = false;
    }
}
