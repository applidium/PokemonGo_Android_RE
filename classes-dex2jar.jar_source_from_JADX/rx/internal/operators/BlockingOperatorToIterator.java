package rx.internal.operators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import rx.Notification;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;

public final class BlockingOperatorToIterator {

    /* renamed from: rx.internal.operators.BlockingOperatorToIterator.1 */
    static final class C11671 extends Subscriber<Notification<? extends T>> {
        final /* synthetic */ BlockingQueue val$notifications;

        C11671(BlockingQueue blockingQueue) {
            this.val$notifications = blockingQueue;
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
            this.val$notifications.offer(Notification.createOnError(th));
        }

        public void onNext(Notification<? extends T> notification) {
            this.val$notifications.offer(notification);
        }
    }

    /* renamed from: rx.internal.operators.BlockingOperatorToIterator.2 */
    static final class C11682 implements Iterator<T> {
        private Notification<? extends T> buf;
        final /* synthetic */ BlockingQueue val$notifications;
        final /* synthetic */ Subscription val$subscription;

        C11682(BlockingQueue blockingQueue, Subscription subscription) {
            this.val$notifications = blockingQueue;
            this.val$subscription = subscription;
        }

        private Notification<? extends T> take() {
            try {
                return (Notification) this.val$notifications.take();
            } catch (Throwable e) {
                this.val$subscription.unsubscribe();
                throw Exceptions.propagate(e);
            }
        }

        public boolean hasNext() {
            if (this.buf == null) {
                this.buf = take();
            }
            if (!this.buf.isOnError()) {
                return !this.buf.isOnCompleted();
            } else {
                throw Exceptions.propagate(this.buf.getThrowable());
            }
        }

        public T next() {
            if (hasNext()) {
                T value = this.buf.getValue();
                this.buf = null;
                return value;
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator");
        }
    }

    private BlockingOperatorToIterator() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Iterator<T> toIterator(Observable<? extends T> observable) {
        BlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        return new C11682(linkedBlockingQueue, observable.materialize().subscribe(new C11671(linkedBlockingQueue)));
    }
}
