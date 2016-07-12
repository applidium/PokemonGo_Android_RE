package rx.internal.operators;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;

public final class OperatorTakeLastTimed<T> implements Operator<T, T> {
    private final long ageMillis;
    private final int count;
    private final Scheduler scheduler;

    /* renamed from: rx.internal.operators.OperatorTakeLastTimed.1 */
    class C13061 extends Subscriber<T> {
        final /* synthetic */ Deque val$buffer;
        final /* synthetic */ NotificationLite val$notification;
        final /* synthetic */ TakeLastQueueProducer val$producer;
        final /* synthetic */ Subscriber val$subscriber;
        final /* synthetic */ Deque val$timestampBuffer;

        C13061(Subscriber subscriber, Deque deque, Deque deque2, NotificationLite notificationLite, Subscriber subscriber2, TakeLastQueueProducer takeLastQueueProducer) {
            this.val$buffer = deque;
            this.val$timestampBuffer = deque2;
            this.val$notification = notificationLite;
            this.val$subscriber = subscriber2;
            this.val$producer = takeLastQueueProducer;
            super(subscriber);
        }

        public void onCompleted() {
            runEvictionPolicy(OperatorTakeLastTimed.this.scheduler.now());
            this.val$timestampBuffer.clear();
            this.val$buffer.offer(this.val$notification.completed());
            this.val$producer.startEmitting();
        }

        public void onError(Throwable th) {
            this.val$timestampBuffer.clear();
            this.val$buffer.clear();
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            long now = OperatorTakeLastTimed.this.scheduler.now();
            this.val$timestampBuffer.add(Long.valueOf(now));
            this.val$buffer.add(this.val$notification.next(t));
            runEvictionPolicy(now);
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }

        protected void runEvictionPolicy(long j) {
            while (OperatorTakeLastTimed.this.count >= 0 && this.val$buffer.size() > OperatorTakeLastTimed.this.count) {
                this.val$timestampBuffer.pollFirst();
                this.val$buffer.pollFirst();
            }
            while (!this.val$buffer.isEmpty() && ((Long) this.val$timestampBuffer.peekFirst()).longValue() < j - OperatorTakeLastTimed.this.ageMillis) {
                this.val$timestampBuffer.pollFirst();
                this.val$buffer.pollFirst();
            }
        }
    }

    public OperatorTakeLastTimed(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count could not be negative");
        }
        this.ageMillis = timeUnit.toMillis(j);
        this.scheduler = scheduler;
        this.count = i;
    }

    public OperatorTakeLastTimed(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.ageMillis = timeUnit.toMillis(j);
        this.scheduler = scheduler;
        this.count = -1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Deque arrayDeque = new ArrayDeque();
        Deque arrayDeque2 = new ArrayDeque();
        NotificationLite instance = NotificationLite.instance();
        Object takeLastQueueProducer = new TakeLastQueueProducer(instance, arrayDeque, subscriber);
        subscriber.setProducer(takeLastQueueProducer);
        return new C13061(subscriber, arrayDeque, arrayDeque2, instance, subscriber, takeLastQueueProducer);
    }
}
