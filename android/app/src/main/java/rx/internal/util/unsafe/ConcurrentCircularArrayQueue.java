package rx.internal.util.unsafe;

import java.util.Iterator;

public abstract class ConcurrentCircularArrayQueue<E> extends ConcurrentCircularArrayQueueL0Pad<E> {
    protected static final int BUFFER_PAD = 32;
    private static final long REF_ARRAY_BASE;
    private static final int REF_ELEMENT_SHIFT;
    protected static final int SPARSE_SHIFT;
    protected final E[] buffer;
    protected final long mask;

    static {
        SPARSE_SHIFT = Integer.getInteger("sparse.shift", 0).intValue();
        int arrayIndexScale = UnsafeAccess.UNSAFE.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            REF_ELEMENT_SHIFT = SPARSE_SHIFT + 2;
        } else if (8 == arrayIndexScale) {
            REF_ELEMENT_SHIFT = SPARSE_SHIFT + 3;
        } else {
            throw new IllegalStateException("Unknown pointer size");
        }
        REF_ARRAY_BASE = (long) (UnsafeAccess.UNSAFE.arrayBaseOffset(Object[].class) + (BUFFER_PAD << (REF_ELEMENT_SHIFT - SPARSE_SHIFT)));
    }

    public ConcurrentCircularArrayQueue(int i) {
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i);
        this.mask = (long) (roundToPowerOfTwo - 1);
        this.buffer = new Object[((roundToPowerOfTwo << SPARSE_SHIFT) + 64)];
    }

    protected final long calcElementOffset(long j) {
        return calcElementOffset(j, this.mask);
    }

    protected final long calcElementOffset(long j, long j2) {
        return REF_ARRAY_BASE + ((j & j2) << REF_ELEMENT_SHIFT);
    }

    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    protected final E lpElement(long j) {
        return lpElement(this.buffer, j);
    }

    protected final E lpElement(E[] eArr, long j) {
        return UnsafeAccess.UNSAFE.getObject(eArr, j);
    }

    protected final E lvElement(long j) {
        return lvElement(this.buffer, j);
    }

    protected final E lvElement(E[] eArr, long j) {
        return UnsafeAccess.UNSAFE.getObjectVolatile(eArr, j);
    }

    protected final void soElement(long j, E e) {
        soElement(this.buffer, j, e);
    }

    protected final void soElement(E[] eArr, long j, E e) {
        UnsafeAccess.UNSAFE.putOrderedObject(eArr, j, e);
    }

    protected final void spElement(long j, E e) {
        spElement(this.buffer, j, e);
    }

    protected final void spElement(E[] eArr, long j, E e) {
        UnsafeAccess.UNSAFE.putObject(eArr, j, e);
    }
}
