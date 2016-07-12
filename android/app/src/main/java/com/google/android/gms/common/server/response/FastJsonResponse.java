package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzmu;
import com.google.android.gms.internal.zzmv;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class FastJsonResponse {

    public interface zza<I, O> {
        I convertBack(O o);

        int zzpB();

        int zzpC();
    }

    public static class Field<I, O> implements SafeParcelable {
        public static final zza CREATOR;
        private final int mVersionCode;
        protected final int zzagU;
        protected final boolean zzagV;
        protected final int zzagW;
        protected final boolean zzagX;
        protected final String zzagY;
        protected final int zzagZ;
        protected final Class<? extends FastJsonResponse> zzaha;
        protected final String zzahb;
        private FieldMappingDictionary zzahc;
        private zza<I, O> zzahd;

        static {
            CREATOR = new zza();
        }

        Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
            this.mVersionCode = i;
            this.zzagU = i2;
            this.zzagV = z;
            this.zzagW = i3;
            this.zzagX = z2;
            this.zzagY = str;
            this.zzagZ = i4;
            if (str2 == null) {
                this.zzaha = null;
                this.zzahb = null;
            } else {
                this.zzaha = SafeParcelResponse.class;
                this.zzahb = str2;
            }
            if (converterWrapper == null) {
                this.zzahd = null;
            } else {
                this.zzahd = converterWrapper.zzpz();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, zza<I, O> com_google_android_gms_common_server_response_FastJsonResponse_zza_I__O) {
            this.mVersionCode = 1;
            this.zzagU = i;
            this.zzagV = z;
            this.zzagW = i2;
            this.zzagX = z2;
            this.zzagY = str;
            this.zzagZ = i3;
            this.zzaha = cls;
            if (cls == null) {
                this.zzahb = null;
            } else {
                this.zzahb = cls.getCanonicalName();
            }
            this.zzahd = com_google_android_gms_common_server_response_FastJsonResponse_zza_I__O;
        }

        public static Field zza(String str, int i, zza<?, ?> com_google_android_gms_common_server_response_FastJsonResponse_zza___, boolean z) {
            return new Field(com_google_android_gms_common_server_response_FastJsonResponse_zza___.zzpB(), z, com_google_android_gms_common_server_response_FastJsonResponse_zza___.zzpC(), false, str, i, null, com_google_android_gms_common_server_response_FastJsonResponse_zza___);
        }

        public static <T extends FastJsonResponse> Field<T, T> zza(String str, int i, Class<T> cls) {
            return new Field(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> zzb(String str, int i, Class<T> cls) {
            return new Field(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Integer, Integer> zzj(String str, int i) {
            return new Field(0, false, 0, false, str, i, null, null);
        }

        public static Field<Double, Double> zzk(String str, int i) {
            return new Field(4, false, 4, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> zzl(String str, int i) {
            return new Field(6, false, 6, false, str, i, null, null);
        }

        public static Field<String, String> zzm(String str, int i) {
            return new Field(7, false, 7, false, str, i, null, null);
        }

        public static Field<ArrayList<String>, ArrayList<String>> zzn(String str, int i) {
            return new Field(7, true, 7, true, str, i, null, null);
        }

        public I convertBack(O o) {
            return this.zzahd.convertBack(o);
        }

        public int describeContents() {
            zza com_google_android_gms_common_server_response_zza = CREATOR;
            return 0;
        }

        public int getVersionCode() {
            return this.mVersionCode;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Field\n");
            stringBuilder.append("            versionCode=").append(this.mVersionCode).append('\n');
            stringBuilder.append("                 typeIn=").append(this.zzagU).append('\n');
            stringBuilder.append("            typeInArray=").append(this.zzagV).append('\n');
            stringBuilder.append("                typeOut=").append(this.zzagW).append('\n');
            stringBuilder.append("           typeOutArray=").append(this.zzagX).append('\n');
            stringBuilder.append("        outputFieldName=").append(this.zzagY).append('\n');
            stringBuilder.append("      safeParcelFieldId=").append(this.zzagZ).append('\n');
            stringBuilder.append("       concreteTypeName=").append(zzpM()).append('\n');
            if (zzpL() != null) {
                stringBuilder.append("     concreteType.class=").append(zzpL().getCanonicalName()).append('\n');
            }
            stringBuilder.append("          converterName=").append(this.zzahd == null ? "null" : this.zzahd.getClass().getCanonicalName()).append('\n');
            return stringBuilder.toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            zza com_google_android_gms_common_server_response_zza = CREATOR;
            zza.zza(this, parcel, i);
        }

        public void zza(FieldMappingDictionary fieldMappingDictionary) {
            this.zzahc = fieldMappingDictionary;
        }

        public int zzpB() {
            return this.zzagU;
        }

        public int zzpC() {
            return this.zzagW;
        }

        public Field<I, O> zzpG() {
            return new Field(this.mVersionCode, this.zzagU, this.zzagV, this.zzagW, this.zzagX, this.zzagY, this.zzagZ, this.zzahb, zzpO());
        }

        public boolean zzpH() {
            return this.zzagV;
        }

        public boolean zzpI() {
            return this.zzagX;
        }

        public String zzpJ() {
            return this.zzagY;
        }

        public int zzpK() {
            return this.zzagZ;
        }

        public Class<? extends FastJsonResponse> zzpL() {
            return this.zzaha;
        }

        String zzpM() {
            return this.zzahb == null ? null : this.zzahb;
        }

        public boolean zzpN() {
            return this.zzahd != null;
        }

        ConverterWrapper zzpO() {
            return this.zzahd == null ? null : ConverterWrapper.zza(this.zzahd);
        }

        public Map<String, Field<?, ?>> zzpP() {
            zzx.zzw(this.zzahb);
            zzx.zzw(this.zzahc);
            return this.zzahc.zzcw(this.zzahb);
        }
    }

    private void zza(StringBuilder stringBuilder, Field field, Object obj) {
        if (field.zzpB() == 11) {
            stringBuilder.append(((FastJsonResponse) field.zzpL().cast(obj)).toString());
        } else if (field.zzpB() == 7) {
            stringBuilder.append("\"");
            stringBuilder.append(zzmu.zzcz((String) obj));
            stringBuilder.append("\"");
        } else {
            stringBuilder.append(obj);
        }
    }

    private void zza(StringBuilder stringBuilder, Field field, ArrayList<Object> arrayList) {
        stringBuilder.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                stringBuilder.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(stringBuilder, field, obj);
            }
        }
        stringBuilder.append("]");
    }

    public String toString() {
        Map zzpD = zzpD();
        StringBuilder stringBuilder = new StringBuilder(100);
        for (String str : zzpD.keySet()) {
            Field field = (Field) zzpD.get(str);
            if (zza(field)) {
                Object zza = zza(field, zzb(field));
                if (stringBuilder.length() == 0) {
                    stringBuilder.append("{");
                } else {
                    stringBuilder.append(",");
                }
                stringBuilder.append("\"").append(str).append("\":");
                if (zza != null) {
                    switch (field.zzpC()) {
                        case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                            stringBuilder.append("\"").append(zzmk.zzi((byte[]) zza)).append("\"");
                            break;
                        case Place.TYPE_BAR /*9*/:
                            stringBuilder.append("\"").append(zzmk.zzj((byte[]) zza)).append("\"");
                            break;
                        case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                            zzmv.zza(stringBuilder, (HashMap) zza);
                            break;
                        default:
                            if (!field.zzpH()) {
                                zza(stringBuilder, field, zza);
                                break;
                            }
                            zza(stringBuilder, field, (ArrayList) zza);
                            break;
                    }
                }
                stringBuilder.append("null");
            }
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.append("}");
        } else {
            stringBuilder.append("{}");
        }
        return stringBuilder.toString();
    }

    protected <O, I> I zza(Field<I, O> field, Object obj) {
        return field.zzahd != null ? field.convertBack(obj) : obj;
    }

    protected boolean zza(Field field) {
        return field.zzpC() == 11 ? field.zzpI() ? zzcv(field.zzpJ()) : zzcu(field.zzpJ()) : zzct(field.zzpJ());
    }

    protected Object zzb(Field field) {
        String zzpJ = field.zzpJ();
        if (field.zzpL() == null) {
            return zzcs(field.zzpJ());
        }
        zzx.zza(zzcs(field.zzpJ()) == null, "Concrete field shouldn't be value object: %s", field.zzpJ());
        Map zzpF = field.zzpI() ? zzpF() : zzpE();
        if (zzpF != null) {
            return zzpF.get(zzpJ);
        }
        try {
            return getClass().getMethod("get" + Character.toUpperCase(zzpJ.charAt(0)) + zzpJ.substring(1), new Class[0]).invoke(this, new Object[0]);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    protected abstract Object zzcs(String str);

    protected abstract boolean zzct(String str);

    protected boolean zzcu(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean zzcv(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public abstract Map<String, Field<?, ?>> zzpD();

    public HashMap<String, Object> zzpE() {
        return null;
    }

    public HashMap<String, Object> zzpF() {
        return null;
    }
}
