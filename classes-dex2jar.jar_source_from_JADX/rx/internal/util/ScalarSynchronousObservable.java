package rx.internal.util;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.schedulers.EventLoopsScheduler;

public final class ScalarSynchronousObservable<T> extends Observable<T> {
    private final T f923t;

    /* renamed from: rx.internal.util.ScalarSynchronousObservable.1 */
    class C13541 implements OnSubscribe<T> {
        final /* synthetic */ Object val$t;

        C13541(Object obj) {
            this.val$t = obj;
        }

        public void call(Subscriber<? super T> subscriber) {
            subscriber.onNext(this.val$t);
            subscriber.onCompleted();
        }
    }

    /* renamed from: rx.internal.util.ScalarSynchronousObservable.2 */
    class C13562 implements OnSubscribe<R> {
        final /* synthetic */ Func1 val$func;

        /* renamed from: rx.internal.util.ScalarSynchronousObservable.2.1 */
        class C13551 extends Subscriber<R> {
            final /* synthetic */ Subscriber val$child;

            C13551(Subscriber subscriber, Subscriber subscriber2) {
                this.val$child = subscriber2;
                super(subscriber);
            }

            public void onCompleted() {
                this.val$child.onCompleted();
            }

            public void onError(Throwable th) {
                this.val$child.onError(th);
            }

            public void onNext(R r) {
                this.val$child.onNext(r);
            }
        }

        C13562(Func1 func1) {
            this.val$func = func1;
        }

        public void call(Subscriber<? super R> subscriber) {
            Observable observable = (Observable) this.val$func.call(ScalarSynchronousObservable.this.f923t);
            if (observable.getClass() == ScalarSynchronousObservable.class) {
                subscriber.onNext(((ScalarSynchronousObservable) observable).f923t);
                subscriber.onCompleted();
                return;
            }
            observable.unsafeSubscribe(new C13551(subscriber, subscriber));
        }
    }

    static final class DirectScheduledEmission<T> implements OnSubscribe<T> {
        private final EventLoopsScheduler es;
        private final T value;

        DirectScheduledEmission(EventLoopsScheduler eventLoopsScheduler, T t) {
            this.es = eventLoopsScheduler;
            this.value = t;
        }

        public void call(Subscriber<? super T> subscriber) {
            subscriber.add(this.es.scheduleDirect(new ScalarSynchronousAction(this.value, null)));
        }
    }

    static final class NormalScheduledEmission<T> implements OnSubscribe<T> {
        private final Scheduler scheduler;
        private final T value;

        NormalScheduledEmission(Scheduler scheduler, T t) {
            this.scheduler = scheduler;
            this.value = t;
        }

        public void call(Subscriber<? super T> subscriber) {
            Object createWorker = this.scheduler.createWorker();
            subscriber.add(createWorker);
            createWorker.schedule(new ScalarSynchronousAction(this.value, null));
        }
    }

    static final class ScalarSynchronousAction<T> implements Action0 {
        private final Subscriber<? super T> subscriber;
        private final T value;

        private ScalarSynchronousAction(Subscriber<? super T> subscriber, T t) {
            this.subscriber = subscriber;
            this.value = t;
        }

        public void call() {
            try {
                this.subscriber.onNext(this.value);
                this.subscriber.onCompleted();
            } catch (Throwable th) {
                this.subscriber.onError(th);
            }
        }
    }

    protected ScalarSynchronousObservable(T t) {
        super(new C13541(t));
        this.f923t = t;
    }

    public static final <T> ScalarSynchronousObservable<T> create(T t) {
        return new ScalarSynchronousObservable(t);
    }

    public T get() {
        return this.f923t;
    }

    public <R> Observable<R> scalarFlatMap(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return Observable.create(new C13562(func1));
    }

    public Observable<T> scalarScheduleOn(Scheduler scheduler) {
        return scheduler instanceof EventLoopsScheduler ? Observable.create(new DirectScheduledEmission((EventLoopsScheduler) scheduler, this.f923t)) : Observable.create(new NormalScheduledEmission(scheduler, this.f923t));
    }
}
