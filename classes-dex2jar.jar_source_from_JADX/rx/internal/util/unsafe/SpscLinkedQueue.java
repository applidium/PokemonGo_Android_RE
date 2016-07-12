package rx.internal.util.unsafe;

import rx.internal.util.atomic.LinkedQueueNode;

public final class SpscLinkedQueue<E> extends BaseLinkedQueue<E> {
    public SpscLinkedQueue() {
        spProducerNode(new LinkedQueueNode());
        spConsumerNode(this.producerNode);
        this.consumerNode.soNext(null);
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new IllegalArgumentException("null elements not allowed");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(e);
        this.producerNode.soNext(linkedQueueNode);
        this.producerNode = linkedQueueNode;
        return true;
    }

    public E peek() {
        LinkedQueueNode lvNext = this.consumerNode.lvNext();
        return lvNext != null ? lvNext.lpValue() : null;
    }

    public E poll() {
        LinkedQueueNode lvNext = this.consumerNode.lvNext();
        if (lvNext == null) {
            return null;
        }
        E andNullValue = lvNext.getAndNullValue();
        this.consumerNode = lvNext;
        return andNullValue;
    }
}
