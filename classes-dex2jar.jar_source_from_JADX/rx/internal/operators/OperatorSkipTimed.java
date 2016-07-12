package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;

public final class OperatorSkipTimed<T> implements Operator<T, T> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    /* renamed from: rx.internal.operators.OperatorSkipTimed.1 */
    class C12891 implements Action0 {
        final /* synthetic */ AtomicBoolean val$gate;

        C12891(AtomicBoolean atomicBoolean) {
            this.val$gate = atomicBoolean;
        }

        public void call() {
            this.val$gate.set(true);
        }
    }

    /* renamed from: rx.internal.operators.OperatorSkipTimed.2 */
    class C12902 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ AtomicBoolean val$gate;

        C12902(Subscriber subscriber, AtomicBoolean atomicBoolean, Subscriber subscriber2) {
            this.val$gate = atomicBoolean;
            this.val$child = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            try {
                this.val$child.onCompleted();
            } finally {
                unsubscribe();
            }
        }

        public void onError(Throwable th) {
            try {
                this.val$child.onError(th);
            } finally {
                unsubscribe();
            }
        }

        public void onNext(T t) {
            if (this.val$gate.get()) {
                this.val$child.onNext(t);
            }
        }
    }

    public OperatorSkipTimed(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        createWorker.schedule(new C12891(atomicBoolean), this.time, this.unit);
        return new C12902(subscriber, atomicBoolean, subscriber);
    }
}
