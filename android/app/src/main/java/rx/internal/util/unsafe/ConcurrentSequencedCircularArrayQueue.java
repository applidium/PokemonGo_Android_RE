package rx.internal.util.unsafe;

public abstract class ConcurrentSequencedCircularArrayQueue<E> extends ConcurrentCircularArrayQueue<E> {
    private static final long ARRAY_BASE;
    private static final int ELEMENT_SHIFT;
    protected final long[] sequenceBuffer;

    static {
        if (8 == UnsafeAccess.UNSAFE.arrayIndexScale(long[].class)) {
            ELEMENT_SHIFT = SPARSE_SHIFT + 3;
            ARRAY_BASE = (long) (UnsafeAccess.UNSAFE.arrayBaseOffset(long[].class) + (32 << (ELEMENT_SHIFT - SPARSE_SHIFT)));
            return;
        }
        throw new IllegalStateException("Unexpected long[] element size");
    }

    public ConcurrentSequencedCircularArrayQueue(int i) {
        super(i);
        int i2 = (int) (this.mask + 1);
        this.sequenceBuffer = new long[((i2 << SPARSE_SHIFT) + 64)];
        for (long j = 0; j < ((long) i2); j++) {
            soSequence(this.sequenceBuffer, calcSequenceOffset(j), j);
        }
    }

    protected final long calcSequenceOffset(long j) {
        return ARRAY_BASE + ((this.mask & j) << ELEMENT_SHIFT);
    }

    protected final long lvSequence(long[] jArr, long j) {
        return UnsafeAccess.UNSAFE.getLongVolatile(jArr, j);
    }

    protected final void soSequence(long[] jArr, long j, long j2) {
        UnsafeAccess.UNSAFE.putOrderedLong(jArr, j, j2);
    }
}
