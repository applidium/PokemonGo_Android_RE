package rx.internal.util.unsafe;

public final class SpmcArrayQueue<E> extends SpmcArrayQueueL3Pad<E> {
    public SpmcArrayQueue(int i) {
        super(i);
    }

    public boolean isEmpty() {
        return lvConsumerIndex() == lvProducerIndex();
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        Object[] objArr = this.buffer;
        long j = this.mask;
        long lvProducerIndex = lvProducerIndex();
        long calcElementOffset = calcElementOffset(lvProducerIndex);
        if (lvElement(objArr, calcElementOffset) == null) {
            spElement(objArr, calcElementOffset, e);
            soTail(1 + lvProducerIndex);
        } else if (lvProducerIndex - lvConsumerIndex() > j) {
            return false;
        } else {
            do {
            } while (lvElement(objArr, calcElementOffset) != null);
        }
        spElement(objArr, calcElementOffset, e);
        soTail(1 + lvProducerIndex);
        return true;
    }

    public E peek() {
        E lvElement;
        long lvProducerIndexCache = lvProducerIndexCache();
        do {
            long lvConsumerIndex = lvConsumerIndex();
            if (lvConsumerIndex >= lvProducerIndexCache) {
                long lvProducerIndex = lvProducerIndex();
                if (lvConsumerIndex >= lvProducerIndex) {
                    return null;
                }
                svProducerIndexCache(lvProducerIndex);
            }
            lvElement = lvElement(calcElementOffset(lvConsumerIndex));
        } while (lvElement == null);
        return lvElement;
    }

    public E poll() {
        long lvConsumerIndex;
        long lvProducerIndexCache = lvProducerIndexCache();
        do {
            lvConsumerIndex = lvConsumerIndex();
            if (lvConsumerIndex >= lvProducerIndexCache) {
                long lvProducerIndex = lvProducerIndex();
                if (lvConsumerIndex >= lvProducerIndex) {
                    return null;
                }
                svProducerIndexCache(lvProducerIndex);
            }
        } while (!casHead(lvConsumerIndex, 1 + lvConsumerIndex));
        lvProducerIndexCache = calcElementOffset(lvConsumerIndex);
        Object[] objArr = this.buffer;
        E lpElement = lpElement(objArr, lvProducerIndexCache);
        soElement(objArr, lvProducerIndexCache, null);
        return lpElement;
    }

    public int size() {
        long lvConsumerIndex = lvConsumerIndex();
        while (true) {
            long lvProducerIndex = lvProducerIndex();
            long lvConsumerIndex2 = lvConsumerIndex();
            if (lvConsumerIndex == lvConsumerIndex2) {
                return (int) (lvProducerIndex - lvConsumerIndex2);
            }
            lvConsumerIndex = lvConsumerIndex2;
        }
    }
}
