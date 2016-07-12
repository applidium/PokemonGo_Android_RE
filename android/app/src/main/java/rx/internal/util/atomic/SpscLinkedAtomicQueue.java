package rx.internal.util.atomic;

public final class SpscLinkedAtomicQueue<E> extends BaseLinkedAtomicQueue<E> {
    public SpscLinkedAtomicQueue() {
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        spProducerNode(linkedQueueNode);
        spConsumerNode(linkedQueueNode);
        linkedQueueNode.soNext(null);
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new IllegalArgumentException("null elements not allowed");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(e);
        lpProducerNode().soNext(linkedQueueNode);
        spProducerNode(linkedQueueNode);
        return true;
    }

    public E peek() {
        LinkedQueueNode lvNext = lpConsumerNode().lvNext();
        return lvNext != null ? lvNext.lpValue() : null;
    }

    public E poll() {
        LinkedQueueNode lvNext = lpConsumerNode().lvNext();
        if (lvNext == null) {
            return null;
        }
        E andNullValue = lvNext.getAndNullValue();
        spConsumerNode(lvNext);
        return andNullValue;
    }
}
