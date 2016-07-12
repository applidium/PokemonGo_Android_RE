package com.fasterxml.jackson.annotation;

import com.voxelbusters.nativeplugins.defines.Keys.WebView;
import java.io.Serializable;

public abstract class ObjectIdGenerator<T> implements Serializable {

    public static final class IdKey implements Serializable {
        private static final long serialVersionUID = 1;
        private final int hashCode;
        public final Object key;
        public final Class<?> scope;
        public final Class<?> type;

        public IdKey(Class<?> cls, Class<?> cls2, Object obj) {
            if (obj == null) {
                throw new IllegalArgumentException("Can not construct IdKey for null key");
            }
            this.type = cls;
            this.scope = cls2;
            this.key = obj;
            int hashCode = obj.hashCode() + cls.getName().hashCode();
            if (cls2 != null) {
                hashCode ^= cls2.getName().hashCode();
            }
            this.hashCode = hashCode;
        }

        public boolean equals(Object obj) {
            if (obj != this) {
                if (obj == null || obj.getClass() != getClass()) {
                    return false;
                }
                IdKey idKey = (IdKey) obj;
                if (!idKey.key.equals(this.key) || idKey.type != this.type) {
                    return false;
                }
                if (idKey.scope != this.scope) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            Object obj = this.key;
            String name = this.type == null ? WebView.TYPE_NO_CONTROLS : this.type.getName();
            String name2 = this.scope == null ? WebView.TYPE_NO_CONTROLS : this.scope.getName();
            return String.format("[ObjectId: key=%s, type=%s, scope=%s]", new Object[]{obj, name, name2});
        }
    }

    public abstract boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator);

    public abstract ObjectIdGenerator<T> forScope(Class<?> cls);

    public abstract T generateId(Object obj);

    public abstract Class<?> getScope();

    public boolean isValidReferencePropertyName(String str, Object obj) {
        return false;
    }

    public abstract IdKey key(Object obj);

    public boolean maySerializeAsObject() {
        return false;
    }

    public abstract ObjectIdGenerator<T> newForSerialization(Object obj);
}
