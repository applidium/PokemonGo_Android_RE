package com.google.android.gms.internal;

import java.util.Map;

public class zzmi<K, V> {
    static Object[] mBaseCache;
    static int mBaseCacheSize;
    static Object[] mTwiceBaseCache;
    static int mTwiceBaseCacheSize;
    Object[] mArray;
    int[] mHashes;
    int mSize;

    public zzmi() {
        this.mHashes = zzmf.EMPTY_INTS;
        this.mArray = zzmf.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    public zzmi(int i) {
        if (i == 0) {
            this.mHashes = zzmf.EMPTY_INTS;
            this.mArray = zzmf.EMPTY_OBJECTS;
        } else {
            zzbO(i);
        }
        this.mSize = 0;
    }

    private static void zza(int[] iArr, Object[] objArr, int i) {
        Class cls;
        int i2;
        if (iArr.length == 8) {
            synchronized (zzme.class) {
                try {
                    if (mTwiceBaseCacheSize < 10) {
                        objArr[0] = mTwiceBaseCache;
                        objArr[1] = iArr;
                        for (i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        mTwiceBaseCache = objArr;
                        mTwiceBaseCacheSize++;
                    }
                } catch (Throwable th) {
                    cls = zzme.class;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (zzme.class) {
                try {
                    if (mBaseCacheSize < 10) {
                        objArr[0] = mBaseCache;
                        objArr[1] = iArr;
                        for (i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        mBaseCache = objArr;
                        mBaseCacheSize++;
                    }
                } catch (Throwable th2) {
                    cls = zzme.class;
                }
            }
        }
    }

    private void zzbO(int i) {
        Object[] objArr;
        Object obj;
        if (i == 8) {
            synchronized (zzme.class) {
                try {
                    if (mTwiceBaseCache != null) {
                        objArr = mTwiceBaseCache;
                        this.mArray = objArr;
                        mTwiceBaseCache = (Object[]) objArr[0];
                        this.mHashes = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        obj = mTwiceBaseCacheSize - 1;
                        mTwiceBaseCacheSize = obj;
                        return;
                    }
                } finally {
                    while (true) {
                        break;
                    }
                    r1 = zzme.class;
                }
            }
        } else if (i == 4) {
            synchronized (zzme.class) {
                try {
                    if (mBaseCache != null) {
                        objArr = mBaseCache;
                        this.mArray = objArr;
                        mBaseCache = (Object[]) objArr[0];
                        this.mHashes = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        obj = mBaseCacheSize - 1;
                        mBaseCacheSize = obj;
                        return;
                    }
                } finally {
                    Class cls;
                    cls = zzme.class;
                }
            }
        }
        this.mHashes = new int[i];
        this.mArray = new Object[(i << 1)];
    }

    public void clear() {
        if (this.mSize != 0) {
            zza(this.mHashes, this.mArray, this.mSize);
            this.mHashes = zzmf.EMPTY_INTS;
            this.mArray = zzmf.EMPTY_OBJECTS;
            this.mSize = 0;
        }
    }

    public boolean containsKey(Object obj) {
        if (obj == null) {
            if (indexOfNull() < 0) {
                return false;
            }
        } else if (indexOf(obj, obj.hashCode()) < 0) {
            return false;
        }
        return true;
    }

    public boolean containsValue(Object obj) {
        return indexOfValue(obj) >= 0;
    }

    public void ensureCapacity(int i) {
        if (this.mHashes.length < i) {
            Object obj = this.mHashes;
            Object obj2 = this.mArray;
            zzbO(i);
            if (this.mSize > 0) {
                System.arraycopy(obj, 0, this.mHashes, 0, this.mSize);
                System.arraycopy(obj2, 0, this.mArray, 0, this.mSize << 1);
            }
            zza(obj, obj2, this.mSize);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        int i = 0;
        while (i < this.mSize) {
            try {
                Object keyAt = keyAt(i);
                Object valueAt = valueAt(i);
                Object obj2 = map.get(keyAt);
                if (valueAt == null) {
                    if (obj2 != null || !map.containsKey(keyAt)) {
                        return false;
                    }
                } else if (!valueAt.equals(obj2)) {
                    return false;
                }
                i++;
            } catch (NullPointerException e) {
                return false;
            } catch (ClassCastException e2) {
                return false;
            }
        }
        return true;
    }

    public V get(Object obj) {
        int indexOfNull = obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
        return indexOfNull >= 0 ? this.mArray[(indexOfNull << 1) + 1] : null;
    }

    public int hashCode() {
        int[] iArr = this.mHashes;
        Object[] objArr = this.mArray;
        int i = this.mSize;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i4 < i) {
            Object obj = objArr[i2];
            i3 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i4];
            i4++;
            i2 += 2;
        }
        return i3;
    }

    int indexOf(Object obj, int i) {
        int i2 = this.mSize;
        if (i2 == 0) {
            return -1;
        }
        int binarySearch = zzmf.binarySearch(this.mHashes, i2, i);
        if (binarySearch >= 0 && !obj.equals(this.mArray[binarySearch << 1])) {
            int i3 = binarySearch + 1;
            while (i3 < i2 && this.mHashes[i3] == i) {
                if (obj.equals(this.mArray[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            binarySearch--;
            while (binarySearch >= 0 && this.mHashes[binarySearch] == i) {
                if (!obj.equals(this.mArray[binarySearch << 1])) {
                    binarySearch--;
                }
            }
            return i3 ^ -1;
        }
        return binarySearch;
    }

    int indexOfNull() {
        int i = this.mSize;
        if (i == 0) {
            return -1;
        }
        int binarySearch = zzmf.binarySearch(this.mHashes, i, 0);
        if (binarySearch >= 0 && this.mArray[binarySearch << 1] != null) {
            int i2 = binarySearch + 1;
            while (i2 < i && this.mHashes[i2] == 0) {
                if (this.mArray[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            binarySearch--;
            while (binarySearch >= 0 && this.mHashes[binarySearch] == 0) {
                if (this.mArray[binarySearch << 1] != null) {
                    binarySearch--;
                }
            }
            return i2 ^ -1;
        }
        return binarySearch;
    }

    int indexOfValue(Object obj) {
        int i = 1;
        int i2 = this.mSize * 2;
        Object[] objArr = this.mArray;
        if (obj == null) {
            while (i < i2) {
                if (objArr[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        } else {
            while (i < i2) {
                if (obj.equals(objArr[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    public K keyAt(int i) {
        return this.mArray[i << 1];
    }

    public V put(K k, V v) {
        int indexOfNull;
        int i;
        int i2 = 4;
        if (k == null) {
            indexOfNull = indexOfNull();
            i = 0;
        } else {
            i = k.hashCode();
            indexOfNull = indexOf(k, i);
        }
        if (indexOfNull >= 0) {
            int i3 = (indexOfNull << 1) + 1;
            V v2 = this.mArray[i3];
            this.mArray[i3] = v;
            return v2;
        }
        indexOfNull ^= -1;
        if (this.mSize >= this.mHashes.length) {
            if (this.mSize >= 8) {
                i2 = this.mSize + (this.mSize >> 1);
            } else if (this.mSize >= 4) {
                i2 = 8;
            }
            Object obj = this.mHashes;
            Object obj2 = this.mArray;
            zzbO(i2);
            if (this.mHashes.length > 0) {
                System.arraycopy(obj, 0, this.mHashes, 0, obj.length);
                System.arraycopy(obj2, 0, this.mArray, 0, obj2.length);
            }
            zza(obj, obj2, this.mSize);
        }
        if (indexOfNull < this.mSize) {
            System.arraycopy(this.mHashes, indexOfNull, this.mHashes, indexOfNull + 1, this.mSize - indexOfNull);
            System.arraycopy(this.mArray, indexOfNull << 1, this.mArray, (indexOfNull + 1) << 1, (this.mSize - indexOfNull) << 1);
        }
        this.mHashes[indexOfNull] = i;
        this.mArray[indexOfNull << 1] = k;
        this.mArray[(indexOfNull << 1) + 1] = v;
        this.mSize++;
        return null;
    }

    public V remove(Object obj) {
        int indexOfNull = obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
        return indexOfNull >= 0 ? removeAt(indexOfNull) : null;
    }

    public V removeAt(int i) {
        int i2 = 8;
        V v = this.mArray[(i << 1) + 1];
        if (this.mSize <= 1) {
            zza(this.mHashes, this.mArray, this.mSize);
            this.mHashes = zzmf.EMPTY_INTS;
            this.mArray = zzmf.EMPTY_OBJECTS;
            this.mSize = 0;
        } else if (this.mHashes.length <= 8 || this.mSize >= this.mHashes.length / 3) {
            this.mSize--;
            if (i < this.mSize) {
                System.arraycopy(this.mHashes, i + 1, this.mHashes, i, this.mSize - i);
                System.arraycopy(this.mArray, (i + 1) << 1, this.mArray, i << 1, (this.mSize - i) << 1);
            }
            this.mArray[this.mSize << 1] = null;
            this.mArray[(this.mSize << 1) + 1] = null;
        } else {
            if (this.mSize > 8) {
                i2 = this.mSize + (this.mSize >> 1);
            }
            Object obj = this.mHashes;
            Object obj2 = this.mArray;
            zzbO(i2);
            this.mSize--;
            if (i > 0) {
                System.arraycopy(obj, 0, this.mHashes, 0, i);
                System.arraycopy(obj2, 0, this.mArray, 0, i << 1);
            }
            if (i < this.mSize) {
                System.arraycopy(obj, i + 1, this.mHashes, i, this.mSize - i);
                System.arraycopy(obj2, (i + 1) << 1, this.mArray, i << 1, (this.mSize - i) << 1);
            }
        }
        return v;
    }

    public V setValueAt(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = this.mArray[i2];
        this.mArray[i2] = v;
        return v2;
    }

    public int size() {
        return this.mSize;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.mSize * 28);
        stringBuilder.append('{');
        for (int i = 0; i < this.mSize; i++) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            zzmi keyAt = keyAt(i);
            if (keyAt != this) {
                stringBuilder.append(keyAt);
            } else {
                stringBuilder.append("(this Map)");
            }
            stringBuilder.append('=');
            keyAt = valueAt(i);
            if (keyAt != this) {
                stringBuilder.append(keyAt);
            } else {
                stringBuilder.append("(this Map)");
            }
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public V valueAt(int i) {
        return this.mArray[(i << 1) + 1];
    }
}
