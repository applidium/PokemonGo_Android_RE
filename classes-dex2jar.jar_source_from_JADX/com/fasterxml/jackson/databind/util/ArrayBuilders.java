package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class ArrayBuilders {
    private BooleanBuilder _booleanBuilder;
    private ByteBuilder _byteBuilder;
    private DoubleBuilder _doubleBuilder;
    private FloatBuilder _floatBuilder;
    private IntBuilder _intBuilder;
    private LongBuilder _longBuilder;
    private ShortBuilder _shortBuilder;

    /* renamed from: com.fasterxml.jackson.databind.util.ArrayBuilders.1 */
    static final class C01651 {
        final /* synthetic */ Object val$defaultValue;
        final /* synthetic */ Class val$defaultValueType;
        final /* synthetic */ int val$length;

        C01651(Class cls, int i, Object obj) {
            this.val$defaultValueType = cls;
            this.val$length = i;
            this.val$defaultValue = obj;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != this.val$defaultValueType) {
                return false;
            }
            if (Array.getLength(obj) != this.val$length) {
                return false;
            }
            for (int i = 0; i < this.val$length; i++) {
                Object obj2 = Array.get(this.val$defaultValue, i);
                Object obj3 = Array.get(obj, i);
                if (obj2 != obj3 && obj2 != null && !obj2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        }
    }

    public static final class BooleanBuilder extends PrimitiveArrayBuilder<boolean[]> {
        public final boolean[] _constructArray(int i) {
            return new boolean[i];
        }
    }

    public static final class ByteBuilder extends PrimitiveArrayBuilder<byte[]> {
        public final byte[] _constructArray(int i) {
            return new byte[i];
        }
    }

    public static final class DoubleBuilder extends PrimitiveArrayBuilder<double[]> {
        public final double[] _constructArray(int i) {
            return new double[i];
        }
    }

    public static final class FloatBuilder extends PrimitiveArrayBuilder<float[]> {
        public final float[] _constructArray(int i) {
            return new float[i];
        }
    }

    public static final class IntBuilder extends PrimitiveArrayBuilder<int[]> {
        public final int[] _constructArray(int i) {
            return new int[i];
        }
    }

    public static final class LongBuilder extends PrimitiveArrayBuilder<long[]> {
        public final long[] _constructArray(int i) {
            return new long[i];
        }
    }

    public static final class ShortBuilder extends PrimitiveArrayBuilder<short[]> {
        public final short[] _constructArray(int i) {
            return new short[i];
        }
    }

    public ArrayBuilders() {
        this._booleanBuilder = null;
        this._byteBuilder = null;
        this._shortBuilder = null;
        this._intBuilder = null;
        this._longBuilder = null;
        this._floatBuilder = null;
        this._doubleBuilder = null;
    }

    public static <T> List<T> addToList(List<T> list, T t) {
        if (list == null) {
            list = new ArrayList();
        }
        list.add(t);
        return list;
    }

    public static <T> ArrayList<T> arrayToList(T[] tArr) {
        ArrayList<T> arrayList = new ArrayList();
        if (tArr != null) {
            for (Object add : tArr) {
                arrayList.add(add);
            }
        }
        return arrayList;
    }

    public static <T> HashSet<T> arrayToSet(T[] tArr) {
        HashSet<T> hashSet = new HashSet();
        if (tArr != null) {
            for (Object add : tArr) {
                hashSet.add(add);
            }
        }
        return hashSet;
    }

    public static Object getArrayComparator(Object obj) {
        return new C01651(obj.getClass(), Array.getLength(obj), obj);
    }

    public static <T> T[] insertInList(T[] tArr, T t) {
        int length = tArr.length;
        Object[] objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + 1);
        if (length > 0) {
            System.arraycopy(tArr, 0, objArr, 1, length);
        }
        objArr[0] = t;
        return objArr;
    }

    public static <T> T[] insertInListNoDup(T[] tArr, T t) {
        Object[] objArr;
        int length = tArr.length;
        int i = 0;
        while (i < length) {
            if (tArr[i] != t) {
                i++;
            } else if (i == 0) {
                return tArr;
            } else {
                objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), length);
                System.arraycopy(tArr, 0, objArr, 1, i);
                objArr[0] = t;
                i++;
                int i2 = length - i;
                if (i2 <= 0) {
                    return objArr;
                }
                System.arraycopy(tArr, i, objArr, i, i2);
                return objArr;
            }
        }
        objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + 1);
        if (length > 0) {
            System.arraycopy(tArr, 0, objArr, 1, length);
        }
        objArr[0] = t;
        return objArr;
    }

    public static <T> HashSet<T> setAndArray(Set<T> set, T[] tArr) {
        HashSet<T> hashSet = new HashSet();
        if (set != null) {
            hashSet.addAll(set);
        }
        if (tArr != null) {
            for (Object add : tArr) {
                hashSet.add(add);
            }
        }
        return hashSet;
    }

    public BooleanBuilder getBooleanBuilder() {
        if (this._booleanBuilder == null) {
            this._booleanBuilder = new BooleanBuilder();
        }
        return this._booleanBuilder;
    }

    public ByteBuilder getByteBuilder() {
        if (this._byteBuilder == null) {
            this._byteBuilder = new ByteBuilder();
        }
        return this._byteBuilder;
    }

    public DoubleBuilder getDoubleBuilder() {
        if (this._doubleBuilder == null) {
            this._doubleBuilder = new DoubleBuilder();
        }
        return this._doubleBuilder;
    }

    public FloatBuilder getFloatBuilder() {
        if (this._floatBuilder == null) {
            this._floatBuilder = new FloatBuilder();
        }
        return this._floatBuilder;
    }

    public IntBuilder getIntBuilder() {
        if (this._intBuilder == null) {
            this._intBuilder = new IntBuilder();
        }
        return this._intBuilder;
    }

    public LongBuilder getLongBuilder() {
        if (this._longBuilder == null) {
            this._longBuilder = new LongBuilder();
        }
        return this._longBuilder;
    }

    public ShortBuilder getShortBuilder() {
        if (this._shortBuilder == null) {
            this._shortBuilder = new ShortBuilder();
        }
        return this._shortBuilder;
    }
}
