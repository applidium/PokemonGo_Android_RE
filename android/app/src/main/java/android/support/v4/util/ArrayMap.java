package android.support.v4.util;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    MapCollections<K, V> mCollections;

    /* renamed from: android.support.v4.util.ArrayMap.1 */
    class C00781 extends MapCollections<K, V> {
        C00781() {
        }

        protected void colClear() {
            ArrayMap.this.clear();
        }

        protected Object colGetEntry(int i, int i2) {
            return ArrayMap.this.mArray[(i << 1) + i2];
        }

        protected Map<K, V> colGetMap() {
            return ArrayMap.this;
        }

        protected int colGetSize() {
            return ArrayMap.this.mSize;
        }

        protected int colIndexOfKey(Object obj) {
            return ArrayMap.this.indexOfKey(obj);
        }

        protected int colIndexOfValue(Object obj) {
            return ArrayMap.this.indexOfValue(obj);
        }

        protected void colPut(K k, V v) {
            ArrayMap.this.put(k, v);
        }

        protected void colRemoveAt(int i) {
            ArrayMap.this.removeAt(i);
        }

        protected V colSetValue(int i, V v) {
            return ArrayMap.this.setValueAt(i, v);
        }
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    private MapCollections<K, V> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new C00781();
        }
        return this.mCollections;
    }

    public boolean containsAll(Collection<?> collection) {
        return MapCollections.containsAllHelper(this, collection);
    }

    public Set<Entry<K, V>> entrySet() {
        return getCollection().getEntrySet();
    }

    public Set<K> keySet() {
        return getCollection().getKeySet();
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.mSize + map.size());
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        return MapCollections.removeAllHelper(this, collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return MapCollections.retainAllHelper(this, collection);
    }

    public Collection<V> values() {
        return getCollection().getValues();
    }
}
