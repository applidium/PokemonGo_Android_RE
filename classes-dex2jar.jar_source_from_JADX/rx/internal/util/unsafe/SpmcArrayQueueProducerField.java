package rx.internal.util.unsafe;

abstract class SpmcArrayQueueProducerField<E> extends SpmcArrayQueueL1Pad<E> {
    protected static final long P_INDEX_OFFSET;
    private volatile long producerIndex;

    static {
        try {
            P_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(SpmcArrayQueueProducerField.class.getDeclaredField("producerIndex"));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public SpmcArrayQueueProducerField(int i) {
        super(i);
    }

    protected final long lvProducerIndex() {
        return this.producerIndex;
    }

    protected final void soTail(long j) {
        UnsafeAccess.UNSAFE.putOrderedLong(this, P_INDEX_OFFSET, j);
    }
}
