package rx.internal.operators;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action0;
import rx.internal.util.BackpressureDrainManager;
import rx.internal.util.BackpressureDrainManager.BackpressureQueueCallback;

public class OperatorOnBackpressureBuffer<T> implements Operator<T, T> {
    private final Long capacity;
    private final Action0 onOverflow;

    private static final class BufferSubscriber<T> extends Subscriber<T> implements BackpressureQueueCallback {
        private final Long baseCapacity;
        private final AtomicLong capacity;
        private final Subscriber<? super T> child;
        private final BackpressureDrainManager manager;
        private final NotificationLite<T> on;
        private final Action0 onOverflow;
        private final ConcurrentLinkedQueue<Object> queue;
        private final AtomicBoolean saturated;

        public BufferSubscriber(Subscriber<? super T> subscriber, Long l, Action0 action0) {
            this.queue = new ConcurrentLinkedQueue();
            this.saturated = new AtomicBoolean(false);
            this.on = NotificationLite.instance();
            this.child = subscriber;
            this.baseCapacity = l;
            this.capacity = l != null ? new AtomicLong(l.longValue()) : null;
            this.onOverflow = action0;
            this.manager = new BackpressureDrainManager(this);
        }

        private boolean assertCapacity() {
            if (this.capacity == null) {
                return true;
            }
            long j;
            do {
                j = this.capacity.get();
                if (j <= 0) {
                    if (this.saturated.compareAndSet(false, true)) {
                        unsubscribe();
                        this.child.onError(new MissingBackpressureException("Overflowed buffer of " + this.baseCapacity));
                        if (this.onOverflow != null) {
                            this.onOverflow.call();
                        }
                    }
                    return false;
                }
            } while (!this.capacity.compareAndSet(j, j - 1));
            return true;
        }

        public boolean accept(Object obj) {
            return this.on.accept(this.child, obj);
        }

        public void complete(Throwable th) {
            if (th != null) {
                this.child.onError(th);
            } else {
                this.child.onCompleted();
            }
        }

        protected Producer manager() {
            return this.manager;
        }

        public void onCompleted() {
            if (!this.saturated.get()) {
                this.manager.terminateAndDrain();
            }
        }

        public void onError(Throwable th) {
            if (!this.saturated.get()) {
                this.manager.terminateAndDrain(th);
            }
        }

        public void onNext(T t) {
            if (assertCapacity()) {
                this.queue.offer(this.on.next(t));
                this.manager.drain();
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }

        public Object peek() {
            return this.queue.peek();
        }

        public Object poll() {
            Object poll = this.queue.poll();
            if (!(this.capacity == null || poll == null)) {
                this.capacity.incrementAndGet();
            }
            return poll;
        }
    }

    private static class Holder {
        static final OperatorOnBackpressureBuffer<?> INSTANCE;

        static {
            INSTANCE = new OperatorOnBackpressureBuffer();
        }

        private Holder() {
        }
    }

    private OperatorOnBackpressureBuffer() {
        this.capacity = null;
        this.onOverflow = null;
    }

    public OperatorOnBackpressureBuffer(long j) {
        this(j, null);
    }

    public OperatorOnBackpressureBuffer(long j, Action0 action0) {
        if (j <= 0) {
            throw new IllegalArgumentException("Buffer capacity must be > 0");
        }
        this.capacity = Long.valueOf(j);
        this.onOverflow = action0;
    }

    public static <T> OperatorOnBackpressureBuffer<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscriber<? super T> bufferSubscriber = new BufferSubscriber(subscriber, this.capacity, this.onOverflow);
        subscriber.add(bufferSubscriber);
        subscriber.setProducer(bufferSubscriber.manager());
        return bufferSubscriber;
    }
}
