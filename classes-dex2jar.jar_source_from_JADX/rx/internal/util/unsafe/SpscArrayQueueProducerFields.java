package rx.internal.util.unsafe;

abstract class SpscArrayQueueProducerFields<E> extends SpscArrayQueueL1Pad<E> {
    protected static final long P_INDEX_OFFSET;
    protected long producerIndex;
    protected long producerLookAhead;

    static {
        try {
            P_INDEX_OFFSET = UnsafeAccess.UNSAFE.objectFieldOffset(SpscArrayQueueProducerFields.class.getDeclaredField("producerIndex"));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public SpscArrayQueueProducerFields(int i) {
        super(i);
    }
}
