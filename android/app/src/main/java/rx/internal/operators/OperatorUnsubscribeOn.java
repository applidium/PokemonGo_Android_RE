package rx.internal.operators;

import rx.Observable.Operator;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;
import rx.subscriptions.Subscriptions;

public class OperatorUnsubscribeOn<T> implements Operator<T, T> {
    private final Scheduler scheduler;

    /* renamed from: rx.internal.operators.OperatorUnsubscribeOn.1 */
    class C13291 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$subscriber;

        C13291(Subscriber subscriber) {
            this.val$subscriber = subscriber;
        }

        public void onCompleted() {
            this.val$subscriber.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            this.val$subscriber.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.OperatorUnsubscribeOn.2 */
    class C13312 implements Action0 {
        final /* synthetic */ Subscriber val$parent;

        /* renamed from: rx.internal.operators.OperatorUnsubscribeOn.2.1 */
        class C13301 implements Action0 {
            final /* synthetic */ Worker val$inner;

            C13301(Worker worker) {
                this.val$inner = worker;
            }

            public void call() {
                C13312.this.val$parent.unsubscribe();
                this.val$inner.unsubscribe();
            }
        }

        C13312(Subscriber subscriber) {
            this.val$parent = subscriber;
        }

        public void call() {
            Worker createWorker = OperatorUnsubscribeOn.this.scheduler.createWorker();
            createWorker.schedule(new C13301(createWorker));
        }
    }

    public OperatorUnsubscribeOn(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscriber<? super T> c13291 = new C13291(subscriber);
        subscriber.add(Subscriptions.create(new C13312(c13291)));
        return c13291;
    }
}
