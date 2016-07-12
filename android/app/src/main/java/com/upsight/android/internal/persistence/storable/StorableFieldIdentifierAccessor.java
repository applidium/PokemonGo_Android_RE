package com.upsight.android.internal.persistence.storable;

import com.upsight.android.UpsightException;
import java.lang.reflect.Field;

class StorableFieldIdentifierAccessor implements StorableIdentifierAccessor {
    private final Field mField;

    StorableFieldIdentifierAccessor(Field field) {
        if (field == null) {
            throw new IllegalArgumentException("Specified Field can not be null.");
        }
        this.mField = field;
    }

    public String getId(Object obj) throws UpsightException {
        try {
            this.mField.setAccessible(true);
            String str = (String) this.mField.get(obj);
            this.mField.setAccessible(false);
            return str;
        } catch (Exception e) {
            throw new UpsightException("Error accessing field: " + this.mField, e);
        } catch (Throwable th) {
            this.mField.setAccessible(false);
        }
    }

    public void setId(Object obj, String str) throws UpsightException {
        try {
            this.mField.setAccessible(true);
            this.mField.set(obj, str);
            this.mField.setAccessible(false);
        } catch (Exception e) {
            throw new UpsightException("Error accessing field: " + this.mField, e);
        } catch (Throwable th) {
            this.mField.setAccessible(false);
        }
    }
}
