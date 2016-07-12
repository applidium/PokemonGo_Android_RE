package rx.internal.util.unsafe;

abstract class SpmcArrayQueueConsumerField<E> extends SpmcArrayQueueL2Pad<E> {
    protected static final long C_INDEX_OFFSET;
    private volatile long consumerIndex;

    static {
        try {
            C_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(SpmcArrayQueueConsumerField.class.getDeclaredField("consumerIndex"));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public SpmcArrayQueueConsumerField(int i) {
        super(i);
    }

    protected final boolean casHead(long j, long j2) {
        return UnsafeAccess.UNSAFE.compareAndSwapLong(this, C_INDEX_OFFSET, j, j2);
    }

    protected final long lvConsumerIndex() {
        return this.consumerIndex;
    }
}
