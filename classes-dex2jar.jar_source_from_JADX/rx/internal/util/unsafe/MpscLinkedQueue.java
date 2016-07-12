package rx.internal.util.unsafe;

import rx.internal.util.atomic.LinkedQueueNode;

public final class MpscLinkedQueue<E> extends BaseLinkedQueue<E> {
    public MpscLinkedQueue() {
        this.consumerNode = new LinkedQueueNode();
        xchgProducerNode(this.consumerNode);
    }

    public final boolean offer(E e) {
        if (e == null) {
            throw new IllegalArgumentException("null elements not allowed");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(e);
        xchgProducerNode(linkedQueueNode).soNext(linkedQueueNode);
        return true;
    }

    public final E peek() {
        LinkedQueueNode linkedQueueNode = this.consumerNode;
        LinkedQueueNode lvNext = linkedQueueNode.lvNext();
        if (lvNext != null) {
            return lvNext.lpValue();
        }
        if (linkedQueueNode == lvProducerNode()) {
            return null;
        }
        do {
            lvNext = linkedQueueNode.lvNext();
        } while (lvNext == null);
        return lvNext.lpValue();
    }

    public final E poll() {
        LinkedQueueNode lpConsumerNode = lpConsumerNode();
        LinkedQueueNode lvNext = lpConsumerNode.lvNext();
        E andNullValue;
        if (lvNext != null) {
            andNullValue = lvNext.getAndNullValue();
            spConsumerNode(lvNext);
            return andNullValue;
        } else if (lpConsumerNode == lvProducerNode()) {
            return null;
        } else {
            do {
                lvNext = lpConsumerNode.lvNext();
            } while (lvNext == null);
            andNullValue = lvNext.getAndNullValue();
            this.consumerNode = lvNext;
            return andNullValue;
        }
    }

    protected final LinkedQueueNode<E> xchgProducerNode(LinkedQueueNode<E> linkedQueueNode) {
        LinkedQueueNode linkedQueueNode2;
        do {
            linkedQueueNode2 = this.producerNode;
        } while (!UnsafeAccess.UNSAFE.compareAndSwapObject(this, P_NODE_OFFSET, linkedQueueNode2, linkedQueueNode));
        return linkedQueueNode2;
    }
}
