package spacemadness.com.lunarconsole.utils;

import java.lang.reflect.Array;
import java.util.Iterator;

public class CycleArray<E> implements Iterable<E> {
    private final Class<? extends E> componentType;
    private int headIndex;
    private E[] internalArray;
    private int length;

    private class CycleIterator implements Iterator<E> {
        private int index;

        public CycleIterator() {
            this.index = CycleArray.this.getHeadIndex();
        }

        public boolean hasNext() {
            return this.index < CycleArray.this.length();
        }

        public E next() {
            CycleArray cycleArray = CycleArray.this;
            int i = this.index;
            this.index = i + 1;
            return cycleArray.get(i);
        }

        public void remove() {
            throw new NotImplementedException();
        }
    }

    public CycleArray(Class<? extends E> cls, int i) {
        if (cls == null) {
            throw new NullPointerException("Component type is null");
        }
        this.componentType = cls;
        this.internalArray = (Object[]) Array.newInstance(cls, i);
    }

    private int toArrayIndex(E[] eArr, int i) {
        return i % eArr.length;
    }

    public E add(E e) {
        int toArrayIndex = toArrayIndex(this.length);
        E e2 = this.internalArray[toArrayIndex];
        this.internalArray[toArrayIndex] = e;
        this.length++;
        if (this.length - this.headIndex <= this.internalArray.length) {
            return null;
        }
        this.headIndex++;
        return e2;
    }

    public void clear() {
        for (int i = 0; i < this.internalArray.length; i++) {
            this.internalArray[i] = null;
        }
        this.length = 0;
        this.headIndex = 0;
    }

    public boolean contains(Object obj) {
        for (int i = this.headIndex; i < this.length; i++) {
            if (ObjectUtils.areEqual(this.internalArray[toArrayIndex(i)], obj)) {
                return true;
            }
        }
        return false;
    }

    public E get(int i) {
        return this.internalArray[toArrayIndex(i)];
    }

    public int getCapacity() {
        return this.internalArray.length;
    }

    public int getHeadIndex() {
        return this.headIndex;
    }

    public E[] internalArray() {
        return this.internalArray;
    }

    public boolean isValidIndex(int i) {
        return i >= this.headIndex && i < this.length;
    }

    public Iterator<E> iterator() {
        return new CycleIterator();
    }

    public int length() {
        return this.length;
    }

    public int realLength() {
        return this.length - this.headIndex;
    }

    public void set(int i, E e) {
        this.internalArray[toArrayIndex(i)] = e;
    }

    public void setCapacity(int i) {
        if (i > getCapacity()) {
            Object[] objArr = (Object[]) Array.newInstance(this.componentType, i);
            int realLength = realLength();
            int toArrayIndex = toArrayIndex(this.internalArray, this.headIndex);
            int toArrayIndex2 = toArrayIndex(objArr, this.headIndex);
            while (realLength > 0) {
                int min = Math.min(realLength, Math.min(this.internalArray.length - toArrayIndex, objArr.length - toArrayIndex2));
                System.arraycopy(this.internalArray, toArrayIndex, objArr, toArrayIndex2, min);
                realLength -= min;
                toArrayIndex = toArrayIndex(this.internalArray, toArrayIndex + min);
                toArrayIndex2 = toArrayIndex(objArr, toArrayIndex2 + min);
            }
            this.internalArray = objArr;
        } else if (i < getCapacity()) {
            throw new NotImplementedException();
        }
    }

    public int toArrayIndex(int i) {
        return i % this.internalArray.length;
    }

    public void trimHeadIndex(int i) {
        trimToHeadIndex(this.headIndex + i);
    }

    public void trimLength(int i) {
        trimToLength(this.length - i);
    }

    public void trimToHeadIndex(int i) {
        if (i < this.headIndex || i > this.length) {
            throw new IllegalArgumentException("Trimmed head index " + i + " should be between head index " + this.headIndex + " and length " + this.length);
        }
        this.headIndex = i;
    }

    public void trimToLength(int i) {
        if (i < this.headIndex || i > this.length) {
            throw new IllegalArgumentException("Trimmed length " + i + " should be between head index " + this.headIndex + " and length " + this.length);
        }
        this.length = i;
    }
}
