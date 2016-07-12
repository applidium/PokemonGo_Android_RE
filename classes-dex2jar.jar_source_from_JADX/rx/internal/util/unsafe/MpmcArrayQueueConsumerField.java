package rx.internal.util.unsafe;

abstract class MpmcArrayQueueConsumerField<E> extends MpmcArrayQueueL2Pad<E> {
    private static final long C_INDEX_OFFSET;
    private volatile long consumerIndex;

    static {
        try {
            C_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(MpmcArrayQueueConsumerField.class.getDeclaredField("consumerIndex"));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public MpmcArrayQueueConsumerField(int i) {
        super(i);
    }

    protected final boolean casConsumerIndex(long j, long j2) {
        return UnsafeAccess.UNSAFE.compareAndSwapLong(this, C_INDEX_OFFSET, j, j2);
    }

    protected final long lvConsumerIndex() {
        return this.consumerIndex;
    }
}
