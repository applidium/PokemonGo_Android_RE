package com.google.android.gms.ads.internal.purchase;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzgr;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

@zzgr
public class zzh {
    private static final String zzCW;
    private static zzh zzCY;
    private static final Object zzpd;
    private final zza zzCX;

    public class zza extends SQLiteOpenHelper {
        final /* synthetic */ zzh zzCZ;

        public zza(zzh com_google_android_gms_ads_internal_purchase_zzh, Context context, String str) {
            this.zzCZ = com_google_android_gms_ads_internal_purchase_zzh;
            super(context, str, null, 4);
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(zzh.zzCW);
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            zzb.zzaG("Database updated from version " + i + " to version " + i2);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
            onCreate(sQLiteDatabase);
        }
    }

    static {
        zzCW = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", new Object[]{"InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time"});
        zzpd = new Object();
    }

    zzh(Context context) {
        this.zzCX = new zza(this, context, "google_inapp_purchase.db");
    }

    public static zzh zzw(Context context) {
        zzh com_google_android_gms_ads_internal_purchase_zzh;
        synchronized (zzpd) {
            if (zzCY == null) {
                zzCY = new zzh(context);
            }
            com_google_android_gms_ads_internal_purchase_zzh = zzCY;
        }
        return com_google_android_gms_ads_internal_purchase_zzh;
    }

    public int getRecordCount() {
        int i = 0;
        Cursor cursor = null;
        synchronized (zzpd) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
            } else {
                try {
                    cursor = writableDatabase.rawQuery("select count(*) from InAppPurchase", null);
                    if (cursor.moveToFirst()) {
                        i = cursor.getInt(0);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                } catch (SQLiteException e) {
                    zzb.zzaH("Error getting record count" + e.getMessage());
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        }
        return i;
    }

    public SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzCX.getWritableDatabase();
        } catch (SQLiteException e) {
            zzb.zzaH("Error opening writable conversion tracking database");
            return null;
        }
    }

    public zzf zza(Cursor cursor) {
        return cursor == null ? null : new zzf(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    public void zza(zzf com_google_android_gms_ads_internal_purchase_zzf) {
        if (com_google_android_gms_ads_internal_purchase_zzf != null) {
            synchronized (zzpd) {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (writableDatabase == null) {
                    return;
                }
                writableDatabase.delete("InAppPurchase", String.format(Locale.US, "%s = %d", new Object[]{"purchase_id", Long.valueOf(com_google_android_gms_ads_internal_purchase_zzf.zzCQ)}), null);
            }
        }
    }

    public void zzb(zzf com_google_android_gms_ads_internal_purchase_zzf) {
        if (com_google_android_gms_ads_internal_purchase_zzf != null) {
            synchronized (zzpd) {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (writableDatabase == null) {
                    return;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("product_id", com_google_android_gms_ads_internal_purchase_zzf.zzCS);
                contentValues.put("developer_payload", com_google_android_gms_ads_internal_purchase_zzf.zzCR);
                contentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
                com_google_android_gms_ads_internal_purchase_zzf.zzCQ = writableDatabase.insert("InAppPurchase", null, contentValues);
                if (((long) getRecordCount()) > 20000) {
                    zzfo();
                }
            }
        }
    }

    public void zzfo() {
        SQLiteException e;
        Throwable th;
        Cursor cursor = null;
        synchronized (zzpd) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            Cursor query;
            try {
                query = writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", "1");
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            zza(zza(query));
                        }
                    } catch (SQLiteException e2) {
                        e = e2;
                        try {
                            zzb.zzaH("Error remove oldest record" + e.getMessage());
                            if (query != null) {
                                query.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e3) {
                e = e3;
                query = null;
                zzb.zzaH("Error remove oldest record" + e.getMessage());
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th3) {
                th = th3;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
    }

    public List<zzf> zzg(long j) {
        List linkedList;
        SQLiteException e;
        Throwable th;
        Cursor cursor = null;
        synchronized (zzpd) {
            linkedList = new LinkedList();
            if (j <= 0) {
            } else {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (writableDatabase == null) {
                } else {
                    Cursor query;
                    try {
                        query = writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", String.valueOf(j));
                        try {
                            if (query.moveToFirst()) {
                                do {
                                    linkedList.add(zza(query));
                                } while (query.moveToNext());
                            }
                            if (query != null) {
                                query.close();
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                            try {
                                zzb.zzaH("Error extracing purchase info: " + e.getMessage());
                                if (query != null) {
                                    query.close();
                                }
                                return linkedList;
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = query;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                    } catch (SQLiteException e3) {
                        e = e3;
                        query = null;
                        zzb.zzaH("Error extracing purchase info: " + e.getMessage());
                        if (query != null) {
                            query.close();
                        }
                        return linkedList;
                    } catch (Throwable th3) {
                        th = th3;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
        }
        return linkedList;
    }
}
