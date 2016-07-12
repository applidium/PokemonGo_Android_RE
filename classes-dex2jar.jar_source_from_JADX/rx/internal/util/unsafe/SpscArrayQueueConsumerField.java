package rx.internal.util.unsafe;

abstract class SpscArrayQueueConsumerField<E> extends SpscArrayQueueL2Pad<E> {
    protected static final long C_INDEX_OFFSET;
    protected long consumerIndex;

    static {
        try {
            C_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(SpscArrayQueueConsumerField.class.getDeclaredField("consumerIndex"));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public SpscArrayQueueConsumerField(int i) {
        super(i);
    }
}
