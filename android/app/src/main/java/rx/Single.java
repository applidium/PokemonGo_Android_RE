package rx;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import rx.Observable.Operator;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorNotImplementedException;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.internal.operators.OnSubscribeToObservableFuture;
import rx.internal.operators.OperatorMap;
import rx.internal.operators.OperatorObserveOn;
import rx.internal.operators.OperatorOnErrorReturn;
import rx.internal.operators.OperatorSubscribeOn;
import rx.internal.operators.OperatorTimeout;
import rx.internal.operators.OperatorZip;
import rx.internal.producers.SingleDelayedProducer;
import rx.observers.SafeSubscriber;
import rx.plugins.RxJavaObservableExecutionHook;
import rx.plugins.RxJavaPlugins;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

@Experimental
public class Single<T> {
    private static final RxJavaObservableExecutionHook hook;
    final rx.Observable.OnSubscribe<T> onSubscribe;

    /* renamed from: rx.Single.1 */
    class C11301 implements rx.Observable.OnSubscribe<T> {
        final /* synthetic */ OnSubscribe val$f;

        /* renamed from: rx.Single.1.1 */
        class C11291 extends SingleSubscriber<T> {
            final /* synthetic */ Subscriber val$child;
            final /* synthetic */ SingleDelayedProducer val$producer;

            C11291(SingleDelayedProducer singleDelayedProducer, Subscriber subscriber) {
                this.val$producer = singleDelayedProducer;
                this.val$child = subscriber;
            }

            public void onError(Throwable th) {
                this.val$child.onError(th);
            }

            public void onSuccess(T t) {
                this.val$producer.setValue(t);
            }
        }

        C11301(OnSubscribe onSubscribe) {
            this.val$f = onSubscribe;
        }

        public void call(Subscriber<? super T> subscriber) {
            Object singleDelayedProducer = new SingleDelayedProducer(subscriber);
            subscriber.setProducer(singleDelayedProducer);
            Subscription c11291 = new C11291(singleDelayedProducer, subscriber);
            subscriber.add(c11291);
            this.val$f.call(c11291);
        }
    }

    /* renamed from: rx.Single.2 */
    class C11312 implements rx.Observable.OnSubscribe<R> {
        final /* synthetic */ Operator val$lift;

        C11312(Operator operator) {
            this.val$lift = operator;
        }

        public void call(Subscriber<? super R> subscriber) {
            OnErrorNotImplementedException onErrorNotImplementedException;
            Subscriber subscriber2;
            try {
                subscriber2 = (Subscriber) Single.hook.onLift(this.val$lift).call(subscriber);
                subscriber2.onStart();
                Single.this.onSubscribe.call(subscriber2);
            } catch (Throwable th) {
                if (th instanceof OnErrorNotImplementedException) {
                    onErrorNotImplementedException = (OnErrorNotImplementedException) th;
                } else {
                    subscriber.onError(th);
                }
            }
        }
    }

    public interface OnSubscribe<T> extends Action1<SingleSubscriber<? super T>> {
    }

    /* renamed from: rx.Single.3 */
    static final class C11323 implements OnSubscribe<T> {
        final /* synthetic */ Throwable val$exception;

        C11323(Throwable th) {
            this.val$exception = th;
        }

        public void call(SingleSubscriber<? super T> singleSubscriber) {
            singleSubscriber.onError(this.val$exception);
        }
    }

    /* renamed from: rx.Single.4 */
    static final class C11334 implements OnSubscribe<T> {
        final /* synthetic */ Object val$value;

        C11334(Object obj) {
            this.val$value = obj;
        }

        public void call(SingleSubscriber<? super T> singleSubscriber) {
            singleSubscriber.onSuccess(this.val$value);
        }
    }

    /* renamed from: rx.Single.5 */
    static final class C11355 implements OnSubscribe<T> {
        final /* synthetic */ Single val$source;

        /* renamed from: rx.Single.5.1 */
        class C11341 extends SingleSubscriber<Single<? extends T>> {
            final /* synthetic */ SingleSubscriber val$child;

            C11341(SingleSubscriber singleSubscriber) {
                this.val$child = singleSubscriber;
            }

            public void onError(Throwable th) {
                this.val$child.onError(th);
            }

            public void onSuccess(Single<? extends T> single) {
                single.subscribe(this.val$child);
            }
        }

        C11355(Single single) {
            this.val$source = single;
        }

        public void call(SingleSubscriber<? super T> singleSubscriber) {
            this.val$source.subscribe(new C11341(singleSubscriber));
        }
    }

    /* renamed from: rx.Single.6 */
    class C11366 extends Subscriber<T> {
        C11366() {
        }

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }

        public final void onNext(T t) {
        }
    }

    /* renamed from: rx.Single.7 */
    class C11377 extends Subscriber<T> {
        final /* synthetic */ Action1 val$onSuccess;

        C11377(Action1 action1) {
            this.val$onSuccess = action1;
        }

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }

        public final void onNext(T t) {
            this.val$onSuccess.call(t);
        }
    }

    /* renamed from: rx.Single.8 */
    class C11388 extends Subscriber<T> {
        final /* synthetic */ Action1 val$onError;
        final /* synthetic */ Action1 val$onSuccess;

        C11388(Action1 action1, Action1 action12) {
            this.val$onError = action1;
            this.val$onSuccess = action12;
        }

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
            this.val$onError.call(th);
        }

        public final void onNext(T t) {
            this.val$onSuccess.call(t);
        }
    }

    /* renamed from: rx.Single.9 */
    class C11399 extends Subscriber<T> {
        final /* synthetic */ SingleSubscriber val$te;

        C11399(SingleSubscriber singleSubscriber) {
            this.val$te = singleSubscriber;
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
            this.val$te.onError(th);
        }

        public void onNext(T t) {
            this.val$te.onSuccess(t);
        }
    }

    public interface Transformer<T, R> extends Func1<Single<T>, Single<R>> {
    }

    static {
        hook = RxJavaPlugins.getInstance().getObservableExecutionHook();
    }

    private Single(rx.Observable.OnSubscribe<T> onSubscribe) {
        this.onSubscribe = onSubscribe;
    }

    protected Single(OnSubscribe<T> onSubscribe) {
        this.onSubscribe = new C11301(onSubscribe);
    }

    private static <T> Observable<T> asObservable(Single<T> single) {
        return Observable.create(single.onSubscribe);
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2) {
        return Observable.concat(asObservable(single), asObservable(single2));
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3));
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4));
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5));
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6));
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7));
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8));
    }

    public static final <T> Observable<T> concat(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8, Single<? extends T> single9) {
        return Observable.concat(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8), asObservable(single9));
    }

    public static final <T> Single<T> create(OnSubscribe<T> onSubscribe) {
        return new Single((OnSubscribe) onSubscribe);
    }

    public static final <T> Single<T> error(Throwable th) {
        return create(new C11323(th));
    }

    public static final <T> Single<T> from(Future<? extends T> future) {
        return new Single(OnSubscribeToObservableFuture.toObservableFuture(future));
    }

    public static final <T> Single<T> from(Future<? extends T> future, long j, TimeUnit timeUnit) {
        return new Single(OnSubscribeToObservableFuture.toObservableFuture(future, j, timeUnit));
    }

    public static final <T> Single<T> from(Future<? extends T> future, Scheduler scheduler) {
        return new Single(OnSubscribeToObservableFuture.toObservableFuture(future)).subscribeOn(scheduler);
    }

    public static final <T> Single<T> just(T t) {
        return create(new C11334(t));
    }

    private final <R> Single<R> lift(Operator<? extends R, ? super T> operator) {
        return new Single(new C11312(operator));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2) {
        return Observable.merge(asObservable(single), asObservable(single2));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8));
    }

    public static final <T> Observable<T> merge(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8, Single<? extends T> single9) {
        return Observable.merge(asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8), asObservable(single9));
    }

    public static final <T> Single<T> merge(Single<? extends Single<? extends T>> single) {
        return create(new C11355(single));
    }

    private final Single<Observable<T>> nest() {
        return just(asObservable(this));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Single<? extends T8> single8, Single<? extends T9> single9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> func9) {
        return just(new Observable[]{asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8), asObservable(single9)}).lift(new OperatorZip((Func9) func9));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, T8, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Single<? extends T8> single8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func8) {
        return just(new Observable[]{asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7), asObservable(single8)}).lift(new OperatorZip((Func8) func8));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func7) {
        return just(new Observable[]{asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6), asObservable(single7)}).lift(new OperatorZip((Func7) func7));
    }

    public static final <T1, T2, T3, T4, T5, T6, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func6) {
        return just(new Observable[]{asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5), asObservable(single6)}).lift(new OperatorZip((Func6) func6));
    }

    public static final <T1, T2, T3, T4, T5, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func5) {
        return just(new Observable[]{asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4), asObservable(single5)}).lift(new OperatorZip((Func5) func5));
    }

    public static final <T1, T2, T3, T4, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func4) {
        return just(new Observable[]{asObservable(single), asObservable(single2), asObservable(single3), asObservable(single4)}).lift(new OperatorZip((Func4) func4));
    }

    public static final <T1, T2, T3, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Func3<? super T1, ? super T2, ? super T3, ? extends R> func3) {
        return just(new Observable[]{asObservable(single), asObservable(single2), asObservable(single3)}).lift(new OperatorZip((Func3) func3));
    }

    public static final <T1, T2, R> Single<R> zip(Single<? extends T1> single, Single<? extends T2> single2, Func2<? super T1, ? super T2, ? extends R> func2) {
        return just(new Observable[]{asObservable(single), asObservable(single2)}).lift(new OperatorZip((Func2) func2));
    }

    public <R> Single<R> compose(Transformer<? super T, ? extends R> transformer) {
        return (Single) transformer.call(this);
    }

    public final Observable<T> concatWith(Single<? extends T> single) {
        return concat(this, single);
    }

    public final <R> Single<R> flatMap(Func1<? super T, ? extends Single<? extends R>> func1) {
        return merge(map(func1));
    }

    public final <R> Observable<R> flatMapObservable(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return Observable.merge(asObservable(map(func1)));
    }

    public final <R> Single<R> map(Func1<? super T, ? extends R> func1) {
        return lift(new OperatorMap(func1));
    }

    public final Observable<T> mergeWith(Single<? extends T> single) {
        return merge(this, single);
    }

    public final Single<T> observeOn(Scheduler scheduler) {
        return lift(new OperatorObserveOn(scheduler));
    }

    public final Single<T> onErrorReturn(Func1<Throwable, ? extends T> func1) {
        return lift(new OperatorOnErrorReturn(func1));
    }

    public final Subscription subscribe() {
        return subscribe(new C11366());
    }

    public final Subscription subscribe(SingleSubscriber<? super T> singleSubscriber) {
        Subscriber c11399 = new C11399(singleSubscriber);
        singleSubscriber.add(c11399);
        subscribe(c11399);
        return c11399;
    }

    public final Subscription subscribe(Subscriber<? super T> subscriber) {
        if (subscriber == null) {
            throw new IllegalArgumentException("observer can not be null");
        } else if (this.onSubscribe == null) {
            throw new IllegalStateException("onSubscribe function can not be null.");
        } else {
            Object safeSubscriber;
            subscriber.onStart();
            if (!(subscriber instanceof SafeSubscriber)) {
                safeSubscriber = new SafeSubscriber(subscriber);
            }
            try {
                this.onSubscribe.call(safeSubscriber);
                return hook.onSubscribeReturn(safeSubscriber);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                try {
                    safeSubscriber.onError(hook.onSubscribeError(th));
                    return Subscriptions.empty();
                } catch (OnErrorNotImplementedException e) {
                    throw e;
                } catch (Throwable th2) {
                    hook.onSubscribeError(new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2));
                }
            }
        }
    }

    public final Subscription subscribe(Action1<? super T> action1) {
        if (action1 != null) {
            return subscribe(new C11377(action1));
        }
        throw new IllegalArgumentException("onSuccess can not be null");
    }

    public final Subscription subscribe(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onSuccess can not be null");
        } else if (action12 != null) {
            return subscribe(new C11388(action12, action1));
        } else {
            throw new IllegalArgumentException("onError can not be null");
        }
    }

    public final Single<T> subscribeOn(Scheduler scheduler) {
        return nest().lift(new OperatorSubscribeOn(scheduler));
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit) {
        return timeout(j, timeUnit, null, Schedulers.computation());
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return timeout(j, timeUnit, null, scheduler);
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit, Single<? extends T> single) {
        return timeout(j, timeUnit, single, Schedulers.computation());
    }

    public final Single<T> timeout(long j, TimeUnit timeUnit, Single<? extends T> single, Scheduler scheduler) {
        Single error;
        if (single == null) {
            error = error(new TimeoutException());
        }
        return lift(new OperatorTimeout(j, timeUnit, asObservable(error), scheduler));
    }

    public final Observable<T> toObservable() {
        return asObservable(this);
    }

    public final void unsafeSubscribe(Subscriber<? super T> subscriber) {
        try {
            subscriber.onStart();
            this.onSubscribe.call(subscriber);
            hook.onSubscribeReturn(subscriber);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            try {
                subscriber.onError(hook.onSubscribeError(th));
            } catch (OnErrorNotImplementedException e) {
                throw e;
            } catch (Throwable th2) {
                hook.onSubscribeError(new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2));
            }
        }
    }

    public final <T2, R> Single<R> zipWith(Single<? extends T2> single, Func2<? super T, ? super T2, ? extends R> func2) {
        return zip(this, single, func2);
    }
}
