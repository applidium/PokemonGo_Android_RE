package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;
import rx.observers.SerializedSubscriber;

public final class OperatorTakeTimed<T> implements Operator<T, T> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    static final class TakeSubscriber<T> extends Subscriber<T> implements Action0 {
        final Subscriber<? super T> child;

        public TakeSubscriber(Subscriber<? super T> subscriber) {
            super(subscriber);
            this.child = subscriber;
        }

        public void call() {
            onCompleted();
        }

        public void onCompleted() {
            this.child.onCompleted();
            unsubscribe();
        }

        public void onError(Throwable th) {
            this.child.onError(th);
            unsubscribe();
        }

        public void onNext(T t) {
            this.child.onNext(t);
        }
    }

    public OperatorTakeTimed(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        Object takeSubscriber = new TakeSubscriber(new SerializedSubscriber(subscriber));
        createWorker.schedule(takeSubscriber, this.time, this.unit);
        return takeSubscriber;
    }
}
