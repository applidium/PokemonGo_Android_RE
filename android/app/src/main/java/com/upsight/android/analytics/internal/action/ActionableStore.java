package com.upsight.android.analytics.internal.action;

import java.util.HashMap;
import java.util.Map;

public interface ActionableStore<T extends Actionable> {

    public static class DefaultImpl<T extends Actionable> implements ActionableStore<T> {
        private Map<String, T> mMap;

        public DefaultImpl() {
            this.mMap = new HashMap();
        }

        public T get(String str) {
            Actionable actionable;
            synchronized (this) {
                actionable = (Actionable) this.mMap.get(str);
            }
            return actionable;
        }

        public boolean put(String str, T t) {
            synchronized (this) {
                this.mMap.put(str, t);
            }
            return true;
        }

        public boolean remove(String str) {
            boolean z;
            synchronized (this) {
                z = this.mMap.remove(str) != null;
            }
            return z;
        }
    }

    T get(String str);

    boolean put(String str, T t);

    boolean remove(String str);
}
