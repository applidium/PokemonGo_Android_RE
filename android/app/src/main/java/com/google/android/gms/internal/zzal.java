package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public abstract class zzal extends zzak {
    private static long startTime;
    private static Method zzmY;
    private static Method zzmZ;
    private static Method zzna;
    private static Method zznb;
    private static Method zznc;
    private static Method zznd;
    private static Method zzne;
    private static Method zznf;
    private static Method zzng;
    private static Method zznh;
    private static Method zzni;
    private static Method zznj;
    private static Method zznk;
    private static String zznl;
    private static String zznm;
    private static String zznn;
    private static zzar zzno;
    static boolean zznp;

    static class zza extends Exception {
        public zza(Throwable th) {
            super(th);
        }
    }

    static {
        startTime = 0;
        zznp = false;
    }

    protected zzal(Context context, zzap com_google_android_gms_internal_zzap, zzaq com_google_android_gms_internal_zzaq) {
        super(context, com_google_android_gms_internal_zzap, com_google_android_gms_internal_zzaq);
    }

    static String zzU() throws zza {
        if (zznl != null) {
            return zznl;
        }
        throw new zza();
    }

    static Long zzV() throws zza {
        if (zzmY == null) {
            throw new zza();
        }
        try {
            return (Long) zzmY.invoke(null, new Object[0]);
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static String zzW() throws zza {
        if (zzna == null) {
            throw new zza();
        }
        try {
            return (String) zzna.invoke(null, new Object[0]);
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static Long zzX() throws zza {
        if (zzmZ == null) {
            throw new zza();
        }
        try {
            return (Long) zzmZ.invoke(null, new Object[0]);
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static String zza(Context context, zzap com_google_android_gms_internal_zzap) throws zza {
        if (zznm != null) {
            return zznm;
        }
        if (zznb == null) {
            throw new zza();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) zznb.invoke(null, new Object[]{context});
            if (byteBuffer == null) {
                throw new zza();
            }
            zznm = com_google_android_gms_internal_zzap.zza(byteBuffer.array(), true);
            return zznm;
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static ArrayList<Long> zza(MotionEvent motionEvent, DisplayMetrics displayMetrics) throws zza {
        if (zznc == null || motionEvent == null) {
            throw new zza();
        }
        try {
            return (ArrayList) zznc.invoke(null, new Object[]{motionEvent, displayMetrics});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    protected static void zza(String str, Context context, zzap com_google_android_gms_internal_zzap) {
        synchronized (zzal.class) {
            try {
                if (!zznp) {
                    try {
                        zzno = new zzar(com_google_android_gms_internal_zzap, null);
                        zznl = str;
                        zzl(context);
                        startTime = zzV().longValue();
                        zznp = true;
                    } catch (zza e) {
                    } catch (UnsupportedOperationException e2) {
                    }
                }
            } catch (Throwable th) {
                Class cls = zzal.class;
            }
        }
    }

    static String zzb(Context context, zzap com_google_android_gms_internal_zzap) throws zza {
        if (zznn != null) {
            return zznn;
        }
        if (zzne == null) {
            throw new zza();
        }
        try {
            ByteBuffer byteBuffer = (ByteBuffer) zzne.invoke(null, new Object[]{context});
            if (byteBuffer == null) {
                throw new zza();
            }
            zznn = com_google_android_gms_internal_zzap.zza(byteBuffer.array(), true);
            return zznn;
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    private static String zzb(byte[] bArr, String str) throws zza {
        try {
            return new String(zzno.zzc(bArr, str), "UTF-8");
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static String zze(Context context) throws zza {
        if (zznd == null) {
            throw new zza();
        }
        try {
            String str = (String) zznd.invoke(null, new Object[]{context});
            if (str != null) {
                return str;
            }
            throw new zza();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static String zzf(Context context) throws zza {
        if (zznh == null) {
            throw new zza();
        }
        try {
            return (String) zznh.invoke(null, new Object[]{context});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static Long zzg(Context context) throws zza {
        if (zzni == null) {
            throw new zza();
        }
        try {
            return (Long) zzni.invoke(null, new Object[]{context});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static ArrayList<Long> zzh(Context context) throws zza {
        if (zznf == null) {
            throw new zza();
        }
        try {
            ArrayList<Long> arrayList = (ArrayList) zznf.invoke(null, new Object[]{context});
            if (arrayList != null && arrayList.size() == 2) {
                return arrayList;
            }
            throw new zza();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static int[] zzi(Context context) throws zza {
        if (zzng == null) {
            throw new zza();
        }
        try {
            return (int[]) zzng.invoke(null, new Object[]{context});
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static int zzj(Context context) throws zza {
        if (zznj == null) {
            throw new zza();
        }
        try {
            return ((Integer) zznj.invoke(null, new Object[]{context})).intValue();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    static int zzk(Context context) throws zza {
        if (zznk == null) {
            throw new zza();
        }
        try {
            return ((Integer) zznk.invoke(null, new Object[]{context})).intValue();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        }
    }

    private static void zzl(Context context) throws zza {
        File file;
        File createTempFile;
        try {
            byte[] zzl = zzno.zzl(zzat.getKey());
            byte[] zzc = zzno.zzc(zzl, zzat.zzad());
            File cacheDir = context.getCacheDir();
            if (cacheDir == null) {
                cacheDir = context.getDir("dex", 0);
                if (cacheDir == null) {
                    throw new zza();
                }
            }
            file = cacheDir;
            createTempFile = File.createTempFile("ads", ".jar", file);
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(zzc, 0, zzc.length);
            fileOutputStream.close();
            DexClassLoader dexClassLoader = new DexClassLoader(createTempFile.getAbsolutePath(), file.getAbsolutePath(), null, context.getClassLoader());
            Class loadClass = dexClassLoader.loadClass(zzb(zzl, zzat.zzam()));
            Class loadClass2 = dexClassLoader.loadClass(zzb(zzl, zzat.zzaA()));
            Class loadClass3 = dexClassLoader.loadClass(zzb(zzl, zzat.zzau()));
            Class loadClass4 = dexClassLoader.loadClass(zzb(zzl, zzat.zzaq()));
            Class loadClass5 = dexClassLoader.loadClass(zzb(zzl, zzat.zzaC()));
            Class loadClass6 = dexClassLoader.loadClass(zzb(zzl, zzat.zzao()));
            Class loadClass7 = dexClassLoader.loadClass(zzb(zzl, zzat.zzay()));
            Class loadClass8 = dexClassLoader.loadClass(zzb(zzl, zzat.zzaw()));
            Class loadClass9 = dexClassLoader.loadClass(zzb(zzl, zzat.zzak()));
            Class loadClass10 = dexClassLoader.loadClass(zzb(zzl, zzat.zzai()));
            Class loadClass11 = dexClassLoader.loadClass(zzb(zzl, zzat.zzag()));
            Class loadClass12 = dexClassLoader.loadClass(zzb(zzl, zzat.zzas()));
            Class loadClass13 = dexClassLoader.loadClass(zzb(zzl, zzat.zzae()));
            zzmY = loadClass.getMethod(zzb(zzl, zzat.zzan()), new Class[0]);
            zzmZ = loadClass2.getMethod(zzb(zzl, zzat.zzaB()), new Class[0]);
            zzna = loadClass3.getMethod(zzb(zzl, zzat.zzav()), new Class[0]);
            zznb = loadClass4.getMethod(zzb(zzl, zzat.zzar()), new Class[]{Context.class});
            zznc = loadClass5.getMethod(zzb(zzl, zzat.zzaD()), new Class[]{MotionEvent.class, DisplayMetrics.class});
            zznd = loadClass6.getMethod(zzb(zzl, zzat.zzap()), new Class[]{Context.class});
            zzne = loadClass7.getMethod(zzb(zzl, zzat.zzaz()), new Class[]{Context.class});
            zznf = loadClass8.getMethod(zzb(zzl, zzat.zzax()), new Class[]{Context.class});
            zzng = loadClass9.getMethod(zzb(zzl, zzat.zzal()), new Class[]{Context.class});
            zznh = loadClass10.getMethod(zzb(zzl, zzat.zzaj()), new Class[]{Context.class});
            zzni = loadClass11.getMethod(zzb(zzl, zzat.zzah()), new Class[]{Context.class});
            zznj = loadClass12.getMethod(zzb(zzl, zzat.zzat()), new Class[]{Context.class});
            zznk = loadClass13.getMethod(zzb(zzl, zzat.zzaf()), new Class[]{Context.class});
            String name = createTempFile.getName();
            createTempFile.delete();
            new File(file, name.replace(".jar", ".dex")).delete();
        } catch (Throwable e) {
            throw new zza(e);
        } catch (Throwable e2) {
            throw new zza(e2);
        } catch (Throwable e22) {
            throw new zza(e22);
        } catch (Throwable e222) {
            throw new zza(e222);
        } catch (Throwable e2222) {
            throw new zza(e2222);
        } catch (Throwable e22222) {
            throw new zza(e22222);
        } catch (Throwable th) {
            String name2 = createTempFile.getName();
            createTempFile.delete();
            new File(file, name2.replace(".jar", ".dex")).delete();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void zzc(android.content.Context r7) {
        /*
        r6 = this;
        r0 = 1;
        r1 = zzW();	 Catch:{ zza -> 0x00b9, IOException -> 0x00d4 }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x00b9, IOException -> 0x00d4 }
    L_0x0008:
        r0 = 2;
        r1 = zzU();	 Catch:{ zza -> 0x00bc, IOException -> 0x00d4 }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x00bc, IOException -> 0x00d4 }
    L_0x0010:
        r0 = zzV();	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
        r0 = r0.longValue();	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
        r2 = 25;
        r6.zza(r2, r0);	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
        r2 = startTime;	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 == 0) goto L_0x0034;
    L_0x0025:
        r2 = 17;
        r4 = startTime;	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
        r0 = r0 - r4;
        r6.zza(r2, r0);	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
        r0 = 23;
        r2 = startTime;	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
        r6.zza(r0, r2);	 Catch:{ zza -> 0x00bf, IOException -> 0x00d4 }
    L_0x0034:
        r1 = zzh(r7);	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r2 = 31;
        r0 = 0;
        r0 = r1.get(r0);	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r0 = (java.lang.Long) r0;	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r4 = r0.longValue();	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r6.zza(r2, r4);	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r2 = 32;
        r0 = 1;
        r0 = r1.get(r0);	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r0 = (java.lang.Long) r0;	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r0 = r0.longValue();	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
        r6.zza(r2, r0);	 Catch:{ zza -> 0x00c2, IOException -> 0x00d4 }
    L_0x0058:
        r0 = 33;
        r1 = zzX();	 Catch:{ zza -> 0x00c4, IOException -> 0x00d4 }
        r2 = r1.longValue();	 Catch:{ zza -> 0x00c4, IOException -> 0x00d4 }
        r6.zza(r0, r2);	 Catch:{ zza -> 0x00c4, IOException -> 0x00d4 }
    L_0x0065:
        r0 = 27;
        r1 = r6.zzmW;	 Catch:{ zza -> 0x00c6, IOException -> 0x00d4 }
        r1 = zza(r7, r1);	 Catch:{ zza -> 0x00c6, IOException -> 0x00d4 }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x00c6, IOException -> 0x00d4 }
    L_0x0070:
        r0 = 29;
        r1 = r6.zzmW;	 Catch:{ zza -> 0x00c8, IOException -> 0x00d4 }
        r1 = zzb(r7, r1);	 Catch:{ zza -> 0x00c8, IOException -> 0x00d4 }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x00c8, IOException -> 0x00d4 }
    L_0x007b:
        r0 = zzi(r7);	 Catch:{ zza -> 0x00ca, IOException -> 0x00d4 }
        r1 = 5;
        r2 = 0;
        r2 = r0[r2];	 Catch:{ zza -> 0x00ca, IOException -> 0x00d4 }
        r2 = (long) r2;	 Catch:{ zza -> 0x00ca, IOException -> 0x00d4 }
        r6.zza(r1, r2);	 Catch:{ zza -> 0x00ca, IOException -> 0x00d4 }
        r1 = 6;
        r2 = 1;
        r0 = r0[r2];	 Catch:{ zza -> 0x00ca, IOException -> 0x00d4 }
        r2 = (long) r0;	 Catch:{ zza -> 0x00ca, IOException -> 0x00d4 }
        r6.zza(r1, r2);	 Catch:{ zza -> 0x00ca, IOException -> 0x00d4 }
    L_0x008f:
        r0 = 12;
        r1 = zzj(r7);	 Catch:{ zza -> 0x00cc, IOException -> 0x00d4 }
        r2 = (long) r1;	 Catch:{ zza -> 0x00cc, IOException -> 0x00d4 }
        r6.zza(r0, r2);	 Catch:{ zza -> 0x00cc, IOException -> 0x00d4 }
    L_0x0099:
        r0 = 3;
        r1 = zzk(r7);	 Catch:{ zza -> 0x00ce, IOException -> 0x00d4 }
        r2 = (long) r1;	 Catch:{ zza -> 0x00ce, IOException -> 0x00d4 }
        r6.zza(r0, r2);	 Catch:{ zza -> 0x00ce, IOException -> 0x00d4 }
    L_0x00a2:
        r0 = 34;
        r1 = zzf(r7);	 Catch:{ zza -> 0x00d0, IOException -> 0x00d4 }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x00d0, IOException -> 0x00d4 }
    L_0x00ab:
        r0 = 35;
        r1 = zzg(r7);	 Catch:{ zza -> 0x00d2, IOException -> 0x00d4 }
        r2 = r1.longValue();	 Catch:{ zza -> 0x00d2, IOException -> 0x00d4 }
        r6.zza(r0, r2);	 Catch:{ zza -> 0x00d2, IOException -> 0x00d4 }
    L_0x00b8:
        return;
    L_0x00b9:
        r0 = move-exception;
        goto L_0x0008;
    L_0x00bc:
        r0 = move-exception;
        goto L_0x0010;
    L_0x00bf:
        r0 = move-exception;
        goto L_0x0034;
    L_0x00c2:
        r0 = move-exception;
        goto L_0x0058;
    L_0x00c4:
        r0 = move-exception;
        goto L_0x0065;
    L_0x00c6:
        r0 = move-exception;
        goto L_0x0070;
    L_0x00c8:
        r0 = move-exception;
        goto L_0x007b;
    L_0x00ca:
        r0 = move-exception;
        goto L_0x008f;
    L_0x00cc:
        r0 = move-exception;
        goto L_0x0099;
    L_0x00ce:
        r0 = move-exception;
        goto L_0x00a2;
    L_0x00d0:
        r0 = move-exception;
        goto L_0x00ab;
    L_0x00d2:
        r0 = move-exception;
        goto L_0x00b8;
    L_0x00d4:
        r0 = move-exception;
        goto L_0x00b8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzal.zzc(android.content.Context):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void zzd(android.content.Context r7) {
        /*
        r6 = this;
        r0 = 2;
        r1 = zzU();	 Catch:{ zza -> 0x0073, IOException -> 0x007f }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x0073, IOException -> 0x007f }
    L_0x0008:
        r0 = 1;
        r1 = zzW();	 Catch:{ zza -> 0x0075, IOException -> 0x007f }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x0075, IOException -> 0x007f }
    L_0x0010:
        r0 = 25;
        r1 = zzV();	 Catch:{ zza -> 0x0077, IOException -> 0x007f }
        r2 = r1.longValue();	 Catch:{ zza -> 0x0077, IOException -> 0x007f }
        r6.zza(r0, r2);	 Catch:{ zza -> 0x0077, IOException -> 0x007f }
    L_0x001d:
        r0 = r6.zzmU;	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r1 = r6.zzmV;	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r1 = zza(r0, r1);	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r2 = 14;
        r0 = 0;
        r0 = r1.get(r0);	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r0 = (java.lang.Long) r0;	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r4 = r0.longValue();	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r6.zza(r2, r4);	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r2 = 15;
        r0 = 1;
        r0 = r1.get(r0);	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r0 = (java.lang.Long) r0;	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r4 = r0.longValue();	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r6.zza(r2, r4);	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r0 = r1.size();	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r2 = 3;
        if (r0 < r2) goto L_0x005c;
    L_0x004c:
        r2 = 16;
        r0 = 2;
        r0 = r1.get(r0);	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r0 = (java.lang.Long) r0;	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r0 = r0.longValue();	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
        r6.zza(r2, r0);	 Catch:{ zza -> 0x0079, IOException -> 0x007f }
    L_0x005c:
        r0 = 34;
        r1 = zzf(r7);	 Catch:{ zza -> 0x007b, IOException -> 0x007f }
        r6.zza(r0, r1);	 Catch:{ zza -> 0x007b, IOException -> 0x007f }
    L_0x0065:
        r0 = 35;
        r1 = zzg(r7);	 Catch:{ zza -> 0x007d, IOException -> 0x007f }
        r2 = r1.longValue();	 Catch:{ zza -> 0x007d, IOException -> 0x007f }
        r6.zza(r0, r2);	 Catch:{ zza -> 0x007d, IOException -> 0x007f }
    L_0x0072:
        return;
    L_0x0073:
        r0 = move-exception;
        goto L_0x0008;
    L_0x0075:
        r0 = move-exception;
        goto L_0x0010;
    L_0x0077:
        r0 = move-exception;
        goto L_0x001d;
    L_0x0079:
        r0 = move-exception;
        goto L_0x005c;
    L_0x007b:
        r0 = move-exception;
        goto L_0x0065;
    L_0x007d:
        r0 = move-exception;
        goto L_0x0072;
    L_0x007f:
        r0 = move-exception;
        goto L_0x0072;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzal.zzd(android.content.Context):void");
    }
}
