package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.dynamic.zzd.zza;
import java.lang.reflect.Field;

public final class zze<T> extends zza {
    private final T mWrappedObject;

    private zze(T t) {
        this.mWrappedObject = t;
    }

    public static <T> T zzp(zzd com_google_android_gms_dynamic_zzd) {
        if (com_google_android_gms_dynamic_zzd instanceof zze) {
            return ((zze) com_google_android_gms_dynamic_zzd).mWrappedObject;
        }
        IBinder asBinder = com_google_android_gms_dynamic_zzd.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        if (declaredFields.length == 1) {
            Field field = declaredFields[0];
            if (field.isAccessible()) {
                throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
            }
            field.setAccessible(true);
            try {
                return field.get(asBinder);
            } catch (Throwable e) {
                throw new IllegalArgumentException("Binder object is null.", e);
            } catch (Throwable e2) {
                throw new IllegalArgumentException("remoteBinder is the wrong class.", e2);
            } catch (Throwable e22) {
                throw new IllegalArgumentException("Could not access the field in remoteBinder.", e22);
            }
        }
        throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
    }

    public static <T> zzd zzy(T t) {
        return new zze(t);
    }
}
