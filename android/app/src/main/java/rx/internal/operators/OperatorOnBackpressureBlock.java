package rx.internal.operators;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.internal.util.BackpressureDrainManager;
import rx.internal.util.BackpressureDrainManager.BackpressureQueueCallback;

public class OperatorOnBackpressureBlock<T> implements Operator<T, T> {
    final int max;

    static final class BlockingSubscriber<T> extends Subscriber<T> implements BackpressureQueueCallback {
        final Subscriber<? super T> child;
        final BackpressureDrainManager manager;
        final NotificationLite<T> nl;
        final BlockingQueue<Object> queue;

        public BlockingSubscriber(int i, Subscriber<? super T> subscriber) {
            this.nl = NotificationLite.instance();
            this.queue = new ArrayBlockingQueue(i);
            this.child = subscriber;
            this.manager = new BackpressureDrainManager(this);
        }

        public boolean accept(Object obj) {
            return this.nl.accept(this.child, obj);
        }

        public void complete(Throwable th) {
            if (th != null) {
                this.child.onError(th);
            } else {
                this.child.onCompleted();
            }
        }

        void init() {
            this.child.add(this);
            this.child.setProducer(this.manager);
        }

        public void onCompleted() {
            this.manager.terminateAndDrain();
        }

        public void onError(Throwable th) {
            this.manager.terminateAndDrain(th);
        }

        public void onNext(T t) {
            try {
                this.queue.put(this.nl.next(t));
                this.manager.drain();
            } catch (Throwable e) {
                if (!isUnsubscribed()) {
                    onError(e);
                }
            }
        }

        public Object peek() {
            return this.queue.peek();
        }

        public Object poll() {
            return this.queue.poll();
        }
    }

    public OperatorOnBackpressureBlock(int i) {
        this.max = i;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscriber blockingSubscriber = new BlockingSubscriber(this.max, subscriber);
        blockingSubscriber.init();
        return blockingSubscriber;
    }
}
