package rx.internal.util.atomic;

import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

abstract class BaseLinkedAtomicQueue<E> extends AbstractQueue<E> {
    private final AtomicReference<LinkedQueueNode<E>> consumerNode;
    private final AtomicReference<LinkedQueueNode<E>> producerNode;

    public BaseLinkedAtomicQueue() {
        this.producerNode = new AtomicReference();
        this.consumerNode = new AtomicReference();
    }

    public final boolean isEmpty() {
        return lvConsumerNode() == lvProducerNode();
    }

    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    protected final LinkedQueueNode<E> lpConsumerNode() {
        return (LinkedQueueNode) this.consumerNode.get();
    }

    protected final LinkedQueueNode<E> lpProducerNode() {
        return (LinkedQueueNode) this.producerNode.get();
    }

    protected final LinkedQueueNode<E> lvConsumerNode() {
        return (LinkedQueueNode) this.consumerNode.get();
    }

    protected final LinkedQueueNode<E> lvProducerNode() {
        return (LinkedQueueNode) this.producerNode.get();
    }

    public final int size() {
        LinkedQueueNode lvConsumerNode = lvConsumerNode();
        LinkedQueueNode lvProducerNode = lvProducerNode();
        int i = 0;
        while (lvConsumerNode != lvProducerNode && i < Integer.MAX_VALUE) {
            LinkedQueueNode lvNext;
            do {
                lvNext = lvConsumerNode.lvNext();
            } while (lvNext == null);
            i++;
            lvConsumerNode = lvNext;
        }
        return i;
    }

    protected final void spConsumerNode(LinkedQueueNode<E> linkedQueueNode) {
        this.consumerNode.lazySet(linkedQueueNode);
    }

    protected final void spProducerNode(LinkedQueueNode<E> linkedQueueNode) {
        this.producerNode.lazySet(linkedQueueNode);
    }

    protected final LinkedQueueNode<E> xchgProducerNode(LinkedQueueNode<E> linkedQueueNode) {
        return (LinkedQueueNode) this.producerNode.getAndSet(linkedQueueNode);
    }
}
