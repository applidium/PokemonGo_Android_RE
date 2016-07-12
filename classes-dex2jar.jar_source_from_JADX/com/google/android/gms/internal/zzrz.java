package com.google.android.gms.internal;

import com.google.android.gms.location.places.Place;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class zzrz<M extends zzry<M>, T> {
    public final int tag;
    protected final int type;
    protected final Class<T> zzbil;
    protected final boolean zzbim;

    private zzrz(int i, Class<T> cls, int i2, boolean z) {
        this.type = i;
        this.zzbil = cls;
        this.tag = i2;
        this.zzbim = z;
    }

    private T zzF(List<zzsg> list) {
        int i;
        int i2 = 0;
        List arrayList = new ArrayList();
        for (i = 0; i < list.size(); i++) {
            zzsg com_google_android_gms_internal_zzsg = (zzsg) list.get(i);
            if (com_google_android_gms_internal_zzsg.zzbiw.length != 0) {
                zza(com_google_android_gms_internal_zzsg, arrayList);
            }
        }
        i = arrayList.size();
        if (i == 0) {
            return null;
        }
        T cast = this.zzbil.cast(Array.newInstance(this.zzbil.getComponentType(), i));
        while (i2 < i) {
            Array.set(cast, i2, arrayList.get(i2));
            i2++;
        }
        return cast;
    }

    private T zzG(List<zzsg> list) {
        if (list.isEmpty()) {
            return null;
        }
        return this.zzbil.cast(zzF(zzrw.zzB(((zzsg) list.get(list.size() - 1)).zzbiw)));
    }

    public static <M extends zzry<M>, T extends zzse> zzrz<M, T> zza(int i, Class<T> cls, long j) {
        return new zzrz(i, cls, (int) j, false);
    }

    final T zzE(List<zzsg> list) {
        return list == null ? null : this.zzbim ? zzF((List) list) : zzG(list);
    }

    protected Object zzF(zzrw com_google_android_gms_internal_zzrw) {
        Class componentType = this.zzbim ? this.zzbil.getComponentType() : this.zzbil;
        try {
            zzse com_google_android_gms_internal_zzse;
            switch (this.type) {
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    com_google_android_gms_internal_zzse = (zzse) componentType.newInstance();
                    com_google_android_gms_internal_zzrw.zza(com_google_android_gms_internal_zzse, zzsh.zzlV(this.tag));
                    return com_google_android_gms_internal_zzse;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    com_google_android_gms_internal_zzse = (zzse) componentType.newInstance();
                    com_google_android_gms_internal_zzrw.zza(com_google_android_gms_internal_zzse);
                    return com_google_android_gms_internal_zzse;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (Throwable e) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e);
        } catch (Throwable e2) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e2);
        } catch (Throwable e22) {
            throw new IllegalArgumentException("Error reading extension field", e22);
        }
    }

    int zzX(Object obj) {
        return this.zzbim ? zzY(obj) : zzZ(obj);
    }

    protected int zzY(Object obj) {
        int i = 0;
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            if (Array.get(obj, i2) != null) {
                i += zzZ(Array.get(obj, i2));
            }
        }
        return i;
    }

    protected int zzZ(Object obj) {
        int zzlV = zzsh.zzlV(this.tag);
        switch (this.type) {
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                return zzrx.zzb(zzlV, (zzse) obj);
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return zzrx.zzc(zzlV, (zzse) obj);
            default:
                throw new IllegalArgumentException("Unknown type " + this.type);
        }
    }

    protected void zza(zzsg com_google_android_gms_internal_zzsg, List<Object> list) {
        list.add(zzF(zzrw.zzB(com_google_android_gms_internal_zzsg.zzbiw)));
    }

    void zza(Object obj, zzrx com_google_android_gms_internal_zzrx) throws IOException {
        if (this.zzbim) {
            zzc(obj, com_google_android_gms_internal_zzrx);
        } else {
            zzb(obj, com_google_android_gms_internal_zzrx);
        }
    }

    protected void zzb(Object obj, zzrx com_google_android_gms_internal_zzrx) {
        try {
            com_google_android_gms_internal_zzrx.zzlN(this.tag);
            switch (this.type) {
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    zzse com_google_android_gms_internal_zzse = (zzse) obj;
                    int zzlV = zzsh.zzlV(this.tag);
                    com_google_android_gms_internal_zzrx.zzb(com_google_android_gms_internal_zzse);
                    com_google_android_gms_internal_zzrx.zzC(zzlV, 4);
                    return;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    com_google_android_gms_internal_zzrx.zzc((zzse) obj);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
        throw new IllegalStateException(e);
    }

    protected void zzc(Object obj, zzrx com_google_android_gms_internal_zzrx) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                zzb(obj2, com_google_android_gms_internal_zzrx);
            }
        }
    }
}
