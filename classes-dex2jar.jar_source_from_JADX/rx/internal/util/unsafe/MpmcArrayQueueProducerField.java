package rx.internal.util.unsafe;

abstract class MpmcArrayQueueProducerField<E> extends MpmcArrayQueueL1Pad<E> {
    private static final long P_INDEX_OFFSET;
    private volatile long producerIndex;

    static {
        try {
            P_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(MpmcArrayQueueProducerField.class.getDeclaredField("producerIndex"));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public MpmcArrayQueueProducerField(int i) {
        super(i);
    }

    protected final boolean casProducerIndex(long j, long j2) {
        return UnsafeAccess.UNSAFE.compareAndSwapLong(this, P_INDEX_OFFSET, j, j2);
    }

    protected final long lvProducerIndex() {
        return this.producerIndex;
    }
}
