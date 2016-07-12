package spacemadness.com.lunarconsole.console;

import java.util.Iterator;
import spacemadness.com.lunarconsole.utils.CycleArray;

public class LimitSizeList<T> implements Iterable<T> {
    private final CycleArray<T> internalArray;
    private final int trimSize;

    public LimitSizeList(Class<? extends T> cls, int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal capacity: " + i);
        }
        this.internalArray = new CycleArray(cls, i);
        this.trimSize = i2;
    }

    public void addObject(T t) {
        if (willOverflow()) {
            trimHead(this.trimSize);
        }
        this.internalArray.add(t);
    }

    public int capacity() {
        return this.internalArray.getCapacity();
    }

    public void clear() {
        this.internalArray.clear();
    }

    public int count() {
        return this.internalArray.realLength();
    }

    public int getTrimSize() {
        return this.trimSize;
    }

    public boolean isOverfloating() {
        return this.internalArray.getHeadIndex() > 0 && willOverflow();
    }

    public boolean isTrimmed() {
        return trimmedCount() > 0;
    }

    public Iterator<T> iterator() {
        return this.internalArray.iterator();
    }

    public T objectAtIndex(int i) {
        return this.internalArray.get(this.internalArray.getHeadIndex() + i);
    }

    public int overflowCount() {
        return this.internalArray.getHeadIndex();
    }

    public int totalCount() {
        return this.internalArray.length();
    }

    public void trimHead(int i) {
        this.internalArray.trimHeadIndex(i);
    }

    public int trimmedCount() {
        return totalCount() - count();
    }

    public boolean willOverflow() {
        return this.internalArray.realLength() == this.internalArray.getCapacity();
    }
}
