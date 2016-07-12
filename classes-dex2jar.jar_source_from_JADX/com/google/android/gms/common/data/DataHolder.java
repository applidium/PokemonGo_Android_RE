package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class DataHolder implements SafeParcelable {
    public static final zze CREATOR;
    private static final zza zzadx;
    boolean mClosed;
    private final int mVersionCode;
    private final int zzYm;
    private final String[] zzadp;
    Bundle zzadq;
    private final CursorWindow[] zzadr;
    private final Bundle zzads;
    int[] zzadt;
    int zzadu;
    private Object zzadv;
    private boolean zzadw;

    public static class zza {
        private final HashMap<Object, Integer> zzadA;
        private boolean zzadB;
        private String zzadC;
        private final String[] zzadp;
        private final ArrayList<HashMap<String, Object>> zzady;
        private final String zzadz;

        private zza(String[] strArr, String str) {
            this.zzadp = (String[]) zzx.zzw(strArr);
            this.zzady = new ArrayList();
            this.zzadz = str;
            this.zzadA = new HashMap();
            this.zzadB = false;
            this.zzadC = null;
        }
    }

    /* renamed from: com.google.android.gms.common.data.DataHolder.1 */
    static final class C02321 extends zza {
        C02321(String[] strArr, String str) {
            super(str, null);
        }
    }

    public static class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    static {
        CREATOR = new zze();
        zzadx = new C02321(new String[0], null);
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.zzadw = true;
        this.mVersionCode = i;
        this.zzadp = strArr;
        this.zzadr = cursorWindowArr;
        this.zzYm = i2;
        this.zzads = bundle;
    }

    private DataHolder(zza com_google_android_gms_common_data_DataHolder_zza, int i, Bundle bundle) {
        this(com_google_android_gms_common_data_DataHolder_zza.zzadp, zza(com_google_android_gms_common_data_DataHolder_zza, -1), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.zzadw = true;
        this.mVersionCode = 1;
        this.zzadp = (String[]) zzx.zzw(strArr);
        this.zzadr = (CursorWindow[]) zzx.zzw(cursorWindowArr);
        this.zzYm = i;
        this.zzads = bundle;
        zzov();
    }

    public static DataHolder zza(int i, Bundle bundle) {
        return new DataHolder(zzadx, i, bundle);
    }

    private static CursorWindow[] zza(zza com_google_android_gms_common_data_DataHolder_zza, int i) {
        int size;
        int i2 = 0;
        if (com_google_android_gms_common_data_DataHolder_zza.zzadp.length == 0) {
            return new CursorWindow[0];
        }
        List zzb = (i < 0 || i >= com_google_android_gms_common_data_DataHolder_zza.zzady.size()) ? com_google_android_gms_common_data_DataHolder_zza.zzady : com_google_android_gms_common_data_DataHolder_zza.zzady.subList(0, i);
        int size2 = zzb.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow);
        cursorWindow.setNumColumns(com_google_android_gms_common_data_DataHolder_zza.zzadp.length);
        int i3 = 0;
        int i4 = 0;
        while (i4 < size2) {
            if (!cursorWindow.allocRow()) {
                Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + i4 + ")");
                cursorWindow = new CursorWindow(false);
                cursorWindow.setStartPosition(i4);
                cursorWindow.setNumColumns(com_google_android_gms_common_data_DataHolder_zza.zzadp.length);
                arrayList.add(cursorWindow);
                if (!cursorWindow.allocRow()) {
                    Log.e("DataHolder", "Unable to allocate row to hold data.");
                    arrayList.remove(cursorWindow);
                    return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                }
            }
            try {
                CursorWindow cursorWindow2;
                int i5;
                int i6;
                Map map = (Map) zzb.get(i4);
                boolean z = true;
                for (int i7 = 0; i7 < com_google_android_gms_common_data_DataHolder_zza.zzadp.length && z; i7++) {
                    String str = com_google_android_gms_common_data_DataHolder_zza.zzadp[i7];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z = cursorWindow.putNull(i4, i7);
                    } else if (obj instanceof String) {
                        z = cursorWindow.putString((String) obj, i4, i7);
                    } else if (obj instanceof Long) {
                        z = cursorWindow.putLong(((Long) obj).longValue(), i4, i7);
                    } else if (obj instanceof Integer) {
                        z = cursorWindow.putLong((long) ((Integer) obj).intValue(), i4, i7);
                    } else if (obj instanceof Boolean) {
                        z = cursorWindow.putLong(((Boolean) obj).booleanValue() ? 1 : 0, i4, i7);
                    } else if (obj instanceof byte[]) {
                        z = cursorWindow.putBlob((byte[]) obj, i4, i7);
                    } else if (obj instanceof Double) {
                        z = cursorWindow.putDouble(((Double) obj).doubleValue(), i4, i7);
                    } else if (obj instanceof Float) {
                        z = cursorWindow.putDouble((double) ((Float) obj).floatValue(), i4, i7);
                    } else {
                        throw new IllegalArgumentException("Unsupported object for column " + str + ": " + obj);
                    }
                }
                if (z) {
                    cursorWindow2 = cursorWindow;
                    i5 = i4;
                    i6 = 0;
                } else if (i3 != 0) {
                    throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                } else {
                    Log.d("DataHolder", "Couldn't populate window data for row " + i4 + " - allocating new window.");
                    cursorWindow.freeLastRow();
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i4);
                    cursorWindow2.setNumColumns(com_google_android_gms_common_data_DataHolder_zza.zzadp.length);
                    arrayList.add(cursorWindow2);
                    i5 = i4 - 1;
                    i6 = 1;
                }
                i4 = i5 + 1;
                i3 = i6;
                cursorWindow = cursorWindow2;
            } catch (RuntimeException e) {
                RuntimeException runtimeException = e;
                size = arrayList.size();
                while (i2 < size) {
                    ((CursorWindow) arrayList.get(i2)).close();
                    i2++;
                }
                throw runtimeException;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    public static DataHolder zzbu(int i) {
        return zza(i, null);
    }

    private void zzh(String str, int i) {
        if (this.zzadq == null || !this.zzadq.containsKey(str)) {
            throw new IllegalArgumentException("No such column: " + str);
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.zzadu) {
            throw new CursorIndexOutOfBoundsException(i, this.zzadu);
        }
    }

    public void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (CursorWindow close : this.zzadr) {
                    close.close();
                }
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        try {
            if (this.zzadw && this.zzadr.length > 0 && !isClosed()) {
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (" + (this.zzadv == null ? "internal object: " + toString() : this.zzadv.toString()) + ")");
                close();
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    public int getCount() {
        return this.zzadu;
    }

    public int getStatusCode() {
        return this.zzYm;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzh(str, i);
        this.zzadr[i2].copyStringToBuffer(i, this.zzadq.getInt(str), charArrayBuffer);
    }

    public long zzb(String str, int i, int i2) {
        zzh(str, i);
        return this.zzadr[i2].getLong(i, this.zzadq.getInt(str));
    }

    public int zzbt(int i) {
        int i2 = 0;
        boolean z = i >= 0 && i < this.zzadu;
        zzx.zzZ(z);
        while (i2 < this.zzadt.length) {
            if (i < this.zzadt[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.zzadt.length ? i2 - 1 : i2;
    }

    public int zzc(String str, int i, int i2) {
        zzh(str, i);
        return this.zzadr[i2].getInt(i, this.zzadq.getInt(str));
    }

    public boolean zzce(String str) {
        return this.zzadq.containsKey(str);
    }

    public String zzd(String str, int i, int i2) {
        zzh(str, i);
        return this.zzadr[i2].getString(i, this.zzadq.getInt(str));
    }

    public boolean zze(String str, int i, int i2) {
        zzh(str, i);
        return Long.valueOf(this.zzadr[i2].getLong(i, this.zzadq.getInt(str))).longValue() == 1;
    }

    public float zzf(String str, int i, int i2) {
        zzh(str, i);
        return this.zzadr[i2].getFloat(i, this.zzadq.getInt(str));
    }

    public byte[] zzg(String str, int i, int i2) {
        zzh(str, i);
        return this.zzadr[i2].getBlob(i, this.zzadq.getInt(str));
    }

    public Uri zzh(String str, int i, int i2) {
        String zzd = zzd(str, i, i2);
        return zzd == null ? null : Uri.parse(zzd);
    }

    public boolean zzi(String str, int i, int i2) {
        zzh(str, i);
        return this.zzadr[i2].isNull(i, this.zzadq.getInt(str));
    }

    public Bundle zzor() {
        return this.zzads;
    }

    public void zzov() {
        int i;
        int i2 = 0;
        this.zzadq = new Bundle();
        for (i = 0; i < this.zzadp.length; i++) {
            this.zzadq.putInt(this.zzadp[i], i);
        }
        this.zzadt = new int[this.zzadr.length];
        for (i = 0; i < this.zzadr.length; i++) {
            this.zzadt[i] = i2;
            i2 += this.zzadr[i].getNumRows() - (i2 - this.zzadr[i].getStartPosition());
        }
        this.zzadu = i2;
    }

    String[] zzow() {
        return this.zzadp;
    }

    CursorWindow[] zzox() {
        return this.zzadr;
    }

    public void zzr(Object obj) {
        this.zzadv = obj;
    }
}
