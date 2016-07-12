package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;
import rx.observers.Subscribers;

public final class OnSubscribeDelaySubscription<T> implements OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<? extends T> source;
    final long time;
    final TimeUnit unit;

    /* renamed from: rx.internal.operators.OnSubscribeDelaySubscription.1 */
    class C11751 implements Action0 {
        final /* synthetic */ Subscriber val$s;

        C11751(Subscriber subscriber) {
            this.val$s = subscriber;
        }

        public void call() {
            if (!this.val$s.isUnsubscribed()) {
                OnSubscribeDelaySubscription.this.source.unsafeSubscribe(Subscribers.wrap(this.val$s));
            }
        }
    }

    public OnSubscribeDelaySubscription(Observable<? extends T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.source = observable;
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public void call(Subscriber<? super T> subscriber) {
        Object createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        createWorker.schedule(new C11751(subscriber), this.time, this.unit);
    }
}
