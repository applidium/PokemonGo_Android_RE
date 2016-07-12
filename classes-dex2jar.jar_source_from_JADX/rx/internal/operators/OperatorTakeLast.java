package rx.internal.operators;

import java.util.ArrayDeque;
import java.util.Deque;
import rx.Observable.Operator;
import rx.Subscriber;

public final class OperatorTakeLast<T> implements Operator<T, T> {
    private final int count;

    /* renamed from: rx.internal.operators.OperatorTakeLast.1 */
    class C13041 extends Subscriber<T> {
        final /* synthetic */ Deque val$deque;
        final /* synthetic */ NotificationLite val$notification;
        final /* synthetic */ TakeLastQueueProducer val$producer;
        final /* synthetic */ Subscriber val$subscriber;

        C13041(Subscriber subscriber, Deque deque, NotificationLite notificationLite, TakeLastQueueProducer takeLastQueueProducer, Subscriber subscriber2) {
            this.val$deque = deque;
            this.val$notification = notificationLite;
            this.val$producer = takeLastQueueProducer;
            this.val$subscriber = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$deque.offer(this.val$notification.completed());
            this.val$producer.startEmitting();
        }

        public void onError(Throwable th) {
            this.val$deque.clear();
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            if (OperatorTakeLast.this.count != 0) {
                if (this.val$deque.size() == OperatorTakeLast.this.count) {
                    this.val$deque.removeFirst();
                }
                this.val$deque.offerLast(this.val$notification.next(t));
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public OperatorTakeLast(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count cannot be negative");
        }
        this.count = i;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Deque arrayDeque = new ArrayDeque();
        NotificationLite instance = NotificationLite.instance();
        Object takeLastQueueProducer = new TakeLastQueueProducer(instance, arrayDeque, subscriber);
        subscriber.setProducer(takeLastQueueProducer);
        return new C13041(subscriber, arrayDeque, instance, takeLastQueueProducer, subscriber);
    }
}
