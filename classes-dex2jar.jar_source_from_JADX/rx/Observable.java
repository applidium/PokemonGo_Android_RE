package rx;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import rx.annotations.Beta;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorNotImplementedException;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Action2;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;
import rx.functions.Functions;
import rx.internal.operators.OnSubscribeAmb;
import rx.internal.operators.OnSubscribeCache;
import rx.internal.operators.OnSubscribeCombineLatest;
import rx.internal.operators.OnSubscribeDefer;
import rx.internal.operators.OnSubscribeDelaySubscription;
import rx.internal.operators.OnSubscribeDelaySubscriptionWithSelector;
import rx.internal.operators.OnSubscribeFromIterable;
import rx.internal.operators.OnSubscribeGroupJoin;
import rx.internal.operators.OnSubscribeJoin;
import rx.internal.operators.OnSubscribeMulticastSelector;
import rx.internal.operators.OnSubscribeRange;
import rx.internal.operators.OnSubscribeRedo;
import rx.internal.operators.OnSubscribeSingle;
import rx.internal.operators.OnSubscribeTimerOnce;
import rx.internal.operators.OnSubscribeTimerPeriodically;
import rx.internal.operators.OnSubscribeToObservableFuture;
import rx.internal.operators.OnSubscribeUsing;
import rx.internal.operators.OperatorAll;
import rx.internal.operators.OperatorAny;
import rx.internal.operators.OperatorAsObservable;
import rx.internal.operators.OperatorBufferWithSingleObservable;
import rx.internal.operators.OperatorBufferWithSize;
import rx.internal.operators.OperatorBufferWithStartEndObservable;
import rx.internal.operators.OperatorBufferWithTime;
import rx.internal.operators.OperatorCast;
import rx.internal.operators.OperatorConcat;
import rx.internal.operators.OperatorDebounceWithSelector;
import rx.internal.operators.OperatorDebounceWithTime;
import rx.internal.operators.OperatorDelay;
import rx.internal.operators.OperatorDelayWithSelector;
import rx.internal.operators.OperatorDematerialize;
import rx.internal.operators.OperatorDistinct;
import rx.internal.operators.OperatorDistinctUntilChanged;
import rx.internal.operators.OperatorDoOnEach;
import rx.internal.operators.OperatorDoOnRequest;
import rx.internal.operators.OperatorDoOnSubscribe;
import rx.internal.operators.OperatorDoOnUnsubscribe;
import rx.internal.operators.OperatorElementAt;
import rx.internal.operators.OperatorFilter;
import rx.internal.operators.OperatorFinally;
import rx.internal.operators.OperatorGroupBy;
import rx.internal.operators.OperatorIgnoreElements;
import rx.internal.operators.OperatorMap;
import rx.internal.operators.OperatorMapNotification;
import rx.internal.operators.OperatorMapPair;
import rx.internal.operators.OperatorMaterialize;
import rx.internal.operators.OperatorMerge;
import rx.internal.operators.OperatorMulticast;
import rx.internal.operators.OperatorObserveOn;
import rx.internal.operators.OperatorOnBackpressureBlock;
import rx.internal.operators.OperatorOnBackpressureBuffer;
import rx.internal.operators.OperatorOnBackpressureDrop;
import rx.internal.operators.OperatorOnBackpressureLatest;
import rx.internal.operators.OperatorOnErrorResumeNextViaFunction;
import rx.internal.operators.OperatorOnErrorResumeNextViaObservable;
import rx.internal.operators.OperatorOnErrorReturn;
import rx.internal.operators.OperatorOnExceptionResumeNextViaObservable;
import rx.internal.operators.OperatorPublish;
import rx.internal.operators.OperatorReplay;
import rx.internal.operators.OperatorRetryWithPredicate;
import rx.internal.operators.OperatorSampleWithObservable;
import rx.internal.operators.OperatorSampleWithTime;
import rx.internal.operators.OperatorScan;
import rx.internal.operators.OperatorSequenceEqual;
import rx.internal.operators.OperatorSerialize;
import rx.internal.operators.OperatorSingle;
import rx.internal.operators.OperatorSkip;
import rx.internal.operators.OperatorSkipLast;
import rx.internal.operators.OperatorSkipLastTimed;
import rx.internal.operators.OperatorSkipTimed;
import rx.internal.operators.OperatorSkipUntil;
import rx.internal.operators.OperatorSkipWhile;
import rx.internal.operators.OperatorSubscribeOn;
import rx.internal.operators.OperatorSwitch;
import rx.internal.operators.OperatorSwitchIfEmpty;
import rx.internal.operators.OperatorTake;
import rx.internal.operators.OperatorTakeLast;
import rx.internal.operators.OperatorTakeLastOne;
import rx.internal.operators.OperatorTakeLastTimed;
import rx.internal.operators.OperatorTakeTimed;
import rx.internal.operators.OperatorTakeUntil;
import rx.internal.operators.OperatorTakeUntilPredicate;
import rx.internal.operators.OperatorTakeWhile;
import rx.internal.operators.OperatorThrottleFirst;
import rx.internal.operators.OperatorTimeInterval;
import rx.internal.operators.OperatorTimeout;
import rx.internal.operators.OperatorTimeoutWithSelector;
import rx.internal.operators.OperatorTimestamp;
import rx.internal.operators.OperatorToMap;
import rx.internal.operators.OperatorToMultimap;
import rx.internal.operators.OperatorToObservableList;
import rx.internal.operators.OperatorToObservableSortedList;
import rx.internal.operators.OperatorUnsubscribeOn;
import rx.internal.operators.OperatorWindowWithObservable;
import rx.internal.operators.OperatorWindowWithObservableFactory;
import rx.internal.operators.OperatorWindowWithSize;
import rx.internal.operators.OperatorWindowWithStartEndObservable;
import rx.internal.operators.OperatorWindowWithTime;
import rx.internal.operators.OperatorWithLatestFrom;
import rx.internal.operators.OperatorZip;
import rx.internal.operators.OperatorZipIterable;
import rx.internal.producers.SingleProducer;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.UtilityFunctions;
import rx.observables.BlockingObservable;
import rx.observables.ConnectableObservable;
import rx.observables.GroupedObservable;
import rx.observers.SafeSubscriber;
import rx.plugins.RxJavaObservableExecutionHook;
import rx.plugins.RxJavaPlugins;
import rx.schedulers.Schedulers;
import rx.schedulers.TimeInterval;
import rx.schedulers.Timestamped;
import rx.subjects.ReplaySubject;
import rx.subjects.Subject;
import rx.subscriptions.Subscriptions;

public class Observable<T> {
    private static final RxJavaObservableExecutionHook hook;
    final OnSubscribe<T> onSubscribe;

    public interface OnSubscribe<T> extends Action1<Subscriber<? super T>> {
    }

    public interface Operator<R, T> extends Func1<Subscriber<? super R>, Subscriber<? super T>> {
    }

    /* renamed from: rx.Observable.10 */
    class AnonymousClass10 implements Observer<T> {
        final /* synthetic */ Action1 val$onNext;

        AnonymousClass10(Action1 action1) {
            this.val$onNext = action1;
        }

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
        }

        public final void onNext(T t) {
            this.val$onNext.call(t);
        }
    }

    /* renamed from: rx.Observable.11 */
    class AnonymousClass11 implements Observer<T> {
        final /* synthetic */ Action0 val$onTerminate;

        AnonymousClass11(Action0 action0) {
            this.val$onTerminate = action0;
        }

        public final void onCompleted() {
            this.val$onTerminate.call();
        }

        public final void onError(Throwable th) {
            this.val$onTerminate.call();
        }

        public final void onNext(T t) {
        }
    }

    /* renamed from: rx.Observable.12 */
    class AnonymousClass12 implements Func1<T, Boolean> {
        final /* synthetic */ Class val$klass;

        AnonymousClass12(Class cls) {
            this.val$klass = cls;
        }

        public final Boolean call(T t) {
            return Boolean.valueOf(this.val$klass.isInstance(t));
        }
    }

    /* renamed from: rx.Observable.13 */
    class AnonymousClass13 implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final /* synthetic */ Func1 val$notificationHandler;

        /* renamed from: rx.Observable.13.1 */
        class C11101 implements Func1<Notification<?>, Void> {
            C11101() {
            }

            public Void call(Notification<?> notification) {
                return null;
            }
        }

        AnonymousClass13(Func1 func1) {
            this.val$notificationHandler = func1;
        }

        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return (Observable) this.val$notificationHandler.call(observable.map(new C11101()));
        }
    }

    /* renamed from: rx.Observable.14 */
    class AnonymousClass14 implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final /* synthetic */ Func1 val$notificationHandler;

        /* renamed from: rx.Observable.14.1 */
        class C11111 implements Func1<Notification<?>, Void> {
            C11111() {
            }

            public Void call(Notification<?> notification) {
                return null;
            }
        }

        AnonymousClass14(Func1 func1) {
            this.val$notificationHandler = func1;
        }

        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return (Observable) this.val$notificationHandler.call(observable.map(new C11111()));
        }
    }

    /* renamed from: rx.Observable.17 */
    class AnonymousClass17 implements Func0<Subject<T, T>> {
        final /* synthetic */ int val$bufferSize;

        AnonymousClass17(int i) {
            this.val$bufferSize = i;
        }

        public final Subject<T, T> call() {
            return ReplaySubject.createWithSize(this.val$bufferSize);
        }
    }

    /* renamed from: rx.Observable.18 */
    class AnonymousClass18 implements Func0<Subject<T, T>> {
        final /* synthetic */ int val$bufferSize;
        final /* synthetic */ Scheduler val$scheduler;
        final /* synthetic */ long val$time;
        final /* synthetic */ TimeUnit val$unit;

        AnonymousClass18(long j, TimeUnit timeUnit, int i, Scheduler scheduler) {
            this.val$time = j;
            this.val$unit = timeUnit;
            this.val$bufferSize = i;
            this.val$scheduler = scheduler;
        }

        public final Subject<T, T> call() {
            return ReplaySubject.createWithTimeAndSize(this.val$time, this.val$unit, this.val$bufferSize, this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.19 */
    class AnonymousClass19 implements Func0<Subject<T, T>> {
        final /* synthetic */ int val$bufferSize;
        final /* synthetic */ Scheduler val$scheduler;

        AnonymousClass19(int i, Scheduler scheduler) {
            this.val$bufferSize = i;
            this.val$scheduler = scheduler;
        }

        public final Subject<T, T> call() {
            return OperatorReplay.createScheduledSubject(ReplaySubject.createWithSize(this.val$bufferSize), this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.1 */
    class C11121 implements OnSubscribe<R> {
        final /* synthetic */ Operator val$lift;

        C11121(Operator operator) {
            this.val$lift = operator;
        }

        public void call(Subscriber<? super R> subscriber) {
            Subscriber subscriber2;
            OnErrorNotImplementedException onErrorNotImplementedException;
            try {
                subscriber2 = (Subscriber) Observable.hook.onLift(this.val$lift).call(subscriber);
                subscriber2.onStart();
                Observable.this.onSubscribe.call(subscriber2);
            } catch (Throwable th) {
                if (th instanceof OnErrorNotImplementedException) {
                    onErrorNotImplementedException = (OnErrorNotImplementedException) th;
                } else {
                    subscriber.onError(th);
                }
            }
        }
    }

    /* renamed from: rx.Observable.20 */
    class AnonymousClass20 implements Func0<Subject<T, T>> {
        final /* synthetic */ Scheduler val$scheduler;
        final /* synthetic */ long val$time;
        final /* synthetic */ TimeUnit val$unit;

        AnonymousClass20(long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.val$time = j;
            this.val$unit = timeUnit;
            this.val$scheduler = scheduler;
        }

        public final Subject<T, T> call() {
            return ReplaySubject.createWithTime(this.val$time, this.val$unit, this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.21 */
    class AnonymousClass21 implements Func0<Subject<T, T>> {
        final /* synthetic */ Scheduler val$scheduler;

        AnonymousClass21(Scheduler scheduler) {
            this.val$scheduler = scheduler;
        }

        public final Subject<T, T> call() {
            return OperatorReplay.createScheduledSubject(ReplaySubject.create(), this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.22 */
    class AnonymousClass22 implements Func0<Subject<? super T, ? extends T>> {
        final /* synthetic */ int val$bufferSize;

        AnonymousClass22(int i) {
            this.val$bufferSize = i;
        }

        public Subject<? super T, ? extends T> call() {
            return ReplaySubject.createWithSize(this.val$bufferSize);
        }
    }

    /* renamed from: rx.Observable.23 */
    class AnonymousClass23 implements Func0<Subject<? super T, ? extends T>> {
        final /* synthetic */ int val$bufferSize;
        final /* synthetic */ Scheduler val$scheduler;
        final /* synthetic */ long val$time;
        final /* synthetic */ TimeUnit val$unit;

        AnonymousClass23(long j, TimeUnit timeUnit, int i, Scheduler scheduler) {
            this.val$time = j;
            this.val$unit = timeUnit;
            this.val$bufferSize = i;
            this.val$scheduler = scheduler;
        }

        public Subject<? super T, ? extends T> call() {
            return ReplaySubject.createWithTimeAndSize(this.val$time, this.val$unit, this.val$bufferSize, this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.24 */
    class AnonymousClass24 implements Func0<Subject<? super T, ? extends T>> {
        final /* synthetic */ int val$bufferSize;
        final /* synthetic */ Scheduler val$scheduler;

        AnonymousClass24(int i, Scheduler scheduler) {
            this.val$bufferSize = i;
            this.val$scheduler = scheduler;
        }

        public Subject<? super T, ? extends T> call() {
            return OperatorReplay.createScheduledSubject(ReplaySubject.createWithSize(this.val$bufferSize), this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.25 */
    class AnonymousClass25 implements Func0<Subject<? super T, ? extends T>> {
        final /* synthetic */ Scheduler val$scheduler;
        final /* synthetic */ long val$time;
        final /* synthetic */ TimeUnit val$unit;

        AnonymousClass25(long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.val$time = j;
            this.val$unit = timeUnit;
            this.val$scheduler = scheduler;
        }

        public Subject<? super T, ? extends T> call() {
            return ReplaySubject.createWithTime(this.val$time, this.val$unit, this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.26 */
    class AnonymousClass26 implements Func0<Subject<? super T, ? extends T>> {
        final /* synthetic */ Scheduler val$scheduler;

        AnonymousClass26(Scheduler scheduler) {
            this.val$scheduler = scheduler;
        }

        public Subject<? super T, ? extends T> call() {
            return OperatorReplay.createScheduledSubject(ReplaySubject.create(), this.val$scheduler);
        }
    }

    /* renamed from: rx.Observable.27 */
    class AnonymousClass27 implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final /* synthetic */ Func1 val$notificationHandler;

        /* renamed from: rx.Observable.27.1 */
        class C11131 implements Func1<Notification<?>, Throwable> {
            C11131() {
            }

            public Throwable call(Notification<?> notification) {
                return notification.getThrowable();
            }
        }

        AnonymousClass27(Func1 func1) {
            this.val$notificationHandler = func1;
        }

        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return (Observable) this.val$notificationHandler.call(observable.map(new C11131()));
        }
    }

    /* renamed from: rx.Observable.28 */
    class AnonymousClass28 implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final /* synthetic */ Func1 val$notificationHandler;

        /* renamed from: rx.Observable.28.1 */
        class C11141 implements Func1<Notification<?>, Throwable> {
            C11141() {
            }

            public Throwable call(Notification<?> notification) {
                return notification.getThrowable();
            }
        }

        AnonymousClass28(Func1 func1) {
            this.val$notificationHandler = func1;
        }

        public Observable<?> call(Observable<? extends Notification<?>> observable) {
            return (Observable) this.val$notificationHandler.call(observable.map(new C11141()));
        }
    }

    /* renamed from: rx.Observable.2 */
    static final class C11152 implements Func2<T, T, Boolean> {
        C11152() {
        }

        public final Boolean call(T t, T t2) {
            if (t != null) {
                return Boolean.valueOf(t.equals(t2));
            }
            return Boolean.valueOf(t2 == null);
        }
    }

    /* renamed from: rx.Observable.30 */
    class AnonymousClass30 extends Subscriber<T> {
        final /* synthetic */ Action1 val$onNext;

        AnonymousClass30(Action1 action1) {
            this.val$onNext = action1;
        }

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }

        public final void onNext(T t) {
            this.val$onNext.call(t);
        }
    }

    /* renamed from: rx.Observable.31 */
    class AnonymousClass31 extends Subscriber<T> {
        final /* synthetic */ Action1 val$onError;
        final /* synthetic */ Action1 val$onNext;

        AnonymousClass31(Action1 action1, Action1 action12) {
            this.val$onError = action1;
            this.val$onNext = action12;
        }

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
            this.val$onError.call(th);
        }

        public final void onNext(T t) {
            this.val$onNext.call(t);
        }
    }

    /* renamed from: rx.Observable.32 */
    class AnonymousClass32 extends Subscriber<T> {
        final /* synthetic */ Action0 val$onComplete;
        final /* synthetic */ Action1 val$onError;
        final /* synthetic */ Action1 val$onNext;

        AnonymousClass32(Action0 action0, Action1 action1, Action1 action12) {
            this.val$onComplete = action0;
            this.val$onError = action1;
            this.val$onNext = action12;
        }

        public final void onCompleted() {
            this.val$onComplete.call();
        }

        public final void onError(Throwable th) {
            this.val$onError.call(th);
        }

        public final void onNext(T t) {
            this.val$onNext.call(t);
        }
    }

    /* renamed from: rx.Observable.33 */
    class AnonymousClass33 extends Subscriber<T> {
        final /* synthetic */ Observer val$observer;

        AnonymousClass33(Observer observer) {
            this.val$observer = observer;
        }

        public void onCompleted() {
            this.val$observer.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$observer.onError(th);
        }

        public void onNext(T t) {
            this.val$observer.onNext(t);
        }
    }

    /* renamed from: rx.Observable.3 */
    static final class C11163 implements Func1<List<? extends Observable<?>>, Observable<?>[]> {
        C11163() {
        }

        public Observable<?>[] call(List<? extends Observable<?>> list) {
            return (Observable[]) list.toArray(new Observable[list.size()]);
        }
    }

    /* renamed from: rx.Observable.4 */
    class C11174 implements Func2<R, T, R> {
        final /* synthetic */ Action2 val$collector;

        C11174(Action2 action2) {
            this.val$collector = action2;
        }

        public final R call(R r, T t) {
            this.val$collector.call(r, t);
            return r;
        }
    }

    /* renamed from: rx.Observable.5 */
    class C11185 implements Func1<T, Boolean> {
        final /* synthetic */ Object val$element;

        C11185(Object obj) {
            this.val$element = obj;
        }

        public final Boolean call(T t) {
            boolean equals = this.val$element == null ? t == null : this.val$element.equals(t);
            return Boolean.valueOf(equals);
        }
    }

    /* renamed from: rx.Observable.6 */
    class C11196 implements OnSubscribe<T> {
        final /* synthetic */ Object val$defaultValue;

        C11196(Object obj) {
            this.val$defaultValue = obj;
        }

        public void call(Subscriber<? super T> subscriber) {
            subscriber.setProducer(new SingleProducer(subscriber, this.val$defaultValue));
        }
    }

    /* renamed from: rx.Observable.7 */
    class C11207 implements Observer<T> {
        final /* synthetic */ Action0 val$onCompleted;

        C11207(Action0 action0) {
            this.val$onCompleted = action0;
        }

        public final void onCompleted() {
            this.val$onCompleted.call();
        }

        public final void onError(Throwable th) {
        }

        public final void onNext(T t) {
        }
    }

    /* renamed from: rx.Observable.8 */
    class C11218 implements Observer<T> {
        final /* synthetic */ Action1 val$onNotification;

        C11218(Action1 action1) {
            this.val$onNotification = action1;
        }

        public final void onCompleted() {
            this.val$onNotification.call(Notification.createOnCompleted());
        }

        public final void onError(Throwable th) {
            this.val$onNotification.call(Notification.createOnError(th));
        }

        public final void onNext(T t) {
            this.val$onNotification.call(Notification.createOnNext(t));
        }
    }

    /* renamed from: rx.Observable.9 */
    class C11229 implements Observer<T> {
        final /* synthetic */ Action1 val$onError;

        C11229(Action1 action1) {
            this.val$onError = action1;
        }

        public final void onCompleted() {
        }

        public final void onError(Throwable th) {
            this.val$onError.call(th);
        }

        public final void onNext(T t) {
        }
    }

    private static final class CountHolder {
        static final Func2<Integer, Object, Integer> INSTANCE;

        /* renamed from: rx.Observable.CountHolder.1 */
        static final class C11231 implements Func2<Integer, Object, Integer> {
            C11231() {
            }

            public final Integer call(Integer num, Object obj) {
                return Integer.valueOf(num.intValue() + 1);
            }
        }

        static {
            INSTANCE = new C11231();
        }

        private CountHolder() {
        }
    }

    private static final class CountLongHolder {
        static final Func2<Long, Object, Long> INSTANCE;

        /* renamed from: rx.Observable.CountLongHolder.1 */
        static final class C11241 implements Func2<Long, Object, Long> {
            C11241() {
            }

            public final Long call(Long l, Object obj) {
                return Long.valueOf(l.longValue() + 1);
            }
        }

        static {
            INSTANCE = new C11241();
        }

        private CountLongHolder() {
        }
    }

    private static final class EmptyHolder {
        static final Observable<Object> INSTANCE;

        /* renamed from: rx.Observable.EmptyHolder.1 */
        static final class C11251 implements OnSubscribe<Object> {
            C11251() {
            }

            public void call(Subscriber<? super Object> subscriber) {
                subscriber.onCompleted();
            }
        }

        static {
            INSTANCE = Observable.create(new C11251());
        }

        private EmptyHolder() {
        }
    }

    private static class HolderAnyForEmpty {
        static final OperatorAny<?> INSTANCE;

        static {
            INSTANCE = new OperatorAny(UtilityFunctions.alwaysTrue(), true);
        }

        private HolderAnyForEmpty() {
        }
    }

    private static class NeverObservable<T> extends Observable<T> {

        /* renamed from: rx.Observable.NeverObservable.1 */
        class C11261 implements OnSubscribe<T> {
            C11261() {
            }

            public void call(Subscriber<? super T> subscriber) {
            }
        }

        private static class Holder {
            static final NeverObservable<?> INSTANCE;

            static {
                INSTANCE = new NeverObservable();
            }

            private Holder() {
            }
        }

        NeverObservable() {
            super(new C11261());
        }

        static <T> NeverObservable<T> instance() {
            return Holder.INSTANCE;
        }
    }

    private static class ThrowObservable<T> extends Observable<T> {

        /* renamed from: rx.Observable.ThrowObservable.1 */
        class C11271 implements OnSubscribe<T> {
            final /* synthetic */ Throwable val$exception;

            C11271(Throwable th) {
                this.val$exception = th;
            }

            public void call(Subscriber<? super T> subscriber) {
                subscriber.onError(this.val$exception);
            }
        }

        public ThrowObservable(Throwable th) {
            super(new C11271(th));
        }
    }

    public interface Transformer<T, R> extends Func1<Observable<T>, Observable<R>> {
    }

    static {
        hook = RxJavaPlugins.getInstance().getObservableExecutionHook();
    }

    protected Observable(OnSubscribe<T> onSubscribe) {
        this.onSubscribe = onSubscribe;
    }

    public static final <T> Observable<T> amb(Iterable<? extends Observable<? extends T>> iterable) {
        return create(OnSubscribeAmb.amb(iterable));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return create(OnSubscribeAmb.amb(observable, observable2));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return create(OnSubscribeAmb.amb(observable, observable2, observable3));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return create(OnSubscribeAmb.amb(observable, observable2, observable3, observable4));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return create(OnSubscribeAmb.amb(observable, observable2, observable3, observable4, observable5));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return create(OnSubscribeAmb.amb(observable, observable2, observable3, observable4, observable5, observable6));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return create(OnSubscribeAmb.amb(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return create(OnSubscribeAmb.amb(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    public static final <T> Observable<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return create(OnSubscribeAmb.amb(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static final <T, R> Observable<R> combineLatest(List<? extends Observable<? extends T>> list, FuncN<? extends R> funcN) {
        return create(new OnSubscribeCombineLatest(list, funcN));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Observable<? extends T9> observable9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> func9) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9}), Functions.fromFunc((Func9) func9));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func8) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8}), Functions.fromFunc((Func8) func8));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func7) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7}), Functions.fromFunc((Func7) func7));
    }

    public static final <T1, T2, T3, T4, T5, T6, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func6) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6}), Functions.fromFunc((Func6) func6));
    }

    public static final <T1, T2, T3, T4, T5, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func5) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5}), Functions.fromFunc((Func5) func5));
    }

    public static final <T1, T2, T3, T4, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func4) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4}), Functions.fromFunc((Func4) func4));
    }

    public static final <T1, T2, T3, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Func3<? super T1, ? super T2, ? super T3, ? extends R> func3) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2, observable3}), Functions.fromFunc((Func3) func3));
    }

    public static final <T1, T2, R> Observable<R> combineLatest(Observable<? extends T1> observable, Observable<? extends T2> observable2, Func2<? super T1, ? super T2, ? extends R> func2) {
        return combineLatest(Arrays.asList(new Observable[]{observable, observable2}), Functions.fromFunc((Func2) func2));
    }

    public static final <T> Observable<T> concat(Observable<? extends Observable<? extends T>> observable) {
        return observable.lift(OperatorConcat.instance());
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return concat(just(observable, observable2));
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return concat(just(observable, observable2, observable3));
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return concat(just(observable, observable2, observable3, observable4));
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return concat(just(observable, observable2, observable3, observable4, observable5));
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return concat(just(observable, observable2, observable3, observable4, observable5, observable6));
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return concat(just(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return concat(just(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    public static final <T> Observable<T> concat(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return concat(just(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static final <T> Observable<T> create(OnSubscribe<T> onSubscribe) {
        return new Observable(hook.onCreate(onSubscribe));
    }

    public static final <T> Observable<T> defer(Func0<Observable<T>> func0) {
        return create(new OnSubscribeDefer(func0));
    }

    public static final <T> Observable<T> empty() {
        return EmptyHolder.INSTANCE;
    }

    public static final <T> Observable<T> error(Throwable th) {
        return new ThrowObservable(th);
    }

    public static final <T> Observable<T> from(Iterable<? extends T> iterable) {
        return create(new OnSubscribeFromIterable(iterable));
    }

    public static final <T> Observable<T> from(Future<? extends T> future) {
        return create(OnSubscribeToObservableFuture.toObservableFuture(future));
    }

    public static final <T> Observable<T> from(Future<? extends T> future, long j, TimeUnit timeUnit) {
        return create(OnSubscribeToObservableFuture.toObservableFuture(future, j, timeUnit));
    }

    public static final <T> Observable<T> from(Future<? extends T> future, Scheduler scheduler) {
        return create(OnSubscribeToObservableFuture.toObservableFuture(future)).subscribeOn(scheduler);
    }

    public static final <T> Observable<T> from(T[] tArr) {
        return from(Arrays.asList(tArr));
    }

    public static final Observable<Long> interval(long j, long j2, TimeUnit timeUnit) {
        return interval(j, j2, timeUnit, Schedulers.computation());
    }

    public static final Observable<Long> interval(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return create(new OnSubscribeTimerPeriodically(j, j2, timeUnit, scheduler));
    }

    public static final Observable<Long> interval(long j, TimeUnit timeUnit) {
        return interval(j, j, timeUnit, Schedulers.computation());
    }

    public static final Observable<Long> interval(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return interval(j, j, timeUnit, scheduler);
    }

    public static final <T> Observable<T> just(T t) {
        return ScalarSynchronousObservable.create(t);
    }

    public static final <T> Observable<T> just(T t, T t2) {
        return from(Arrays.asList(new Object[]{t, t2}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3) {
        return from(Arrays.asList(new Object[]{t, t2, t3}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3, T t4) {
        return from(Arrays.asList(new Object[]{t, t2, t3, t4}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3, T t4, T t5) {
        return from(Arrays.asList(new Object[]{t, t2, t3, t4, t5}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6) {
        return from(Arrays.asList(new Object[]{t, t2, t3, t4, t5, t6}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        return from(Arrays.asList(new Object[]{t, t2, t3, t4, t5, t6, t7}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        return from(Arrays.asList(new Object[]{t, t2, t3, t4, t5, t6, t7, t8}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        return from(Arrays.asList(new Object[]{t, t2, t3, t4, t5, t6, t7, t8, t9}));
    }

    public static final <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        return from(Arrays.asList(new Object[]{t, t2, t3, t4, t5, t6, t7, t8, t9, t10}));
    }

    private final <R> Observable<R> mapNotification(Func1<? super T, ? extends R> func1, Func1<? super Throwable, ? extends R> func12, Func0<? extends R> func0) {
        return lift(new OperatorMapNotification(func1, func12, func0));
    }

    public static final <T> Observable<T> merge(Iterable<? extends Observable<? extends T>> iterable) {
        return merge(from((Iterable) iterable));
    }

    public static final <T> Observable<T> merge(Iterable<? extends Observable<? extends T>> iterable, int i) {
        return merge(from((Iterable) iterable), i);
    }

    public static final <T> Observable<T> merge(Observable<? extends Observable<? extends T>> observable) {
        return observable.getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) observable).scalarFlatMap(UtilityFunctions.identity()) : observable.lift(OperatorMerge.instance(false));
    }

    @Experimental
    public static final <T> Observable<T> merge(Observable<? extends Observable<? extends T>> observable, int i) {
        return observable.getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) observable).scalarFlatMap(UtilityFunctions.identity()) : observable.lift(OperatorMerge.instance(false, i));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2, observable3})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return merge(from(Arrays.asList(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9})));
    }

    public static final <T> Observable<T> merge(Observable<? extends T>[] observableArr) {
        return merge(from((Object[]) observableArr));
    }

    @Experimental
    public static final <T> Observable<T> merge(Observable<? extends T>[] observableArr, int i) {
        return merge(from((Object[]) observableArr), i);
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends Observable<? extends T>> observable) {
        return observable.lift(OperatorMerge.instance(true));
    }

    @Experimental
    public static final <T> Observable<T> mergeDelayError(Observable<? extends Observable<? extends T>> observable, int i) {
        return observable.lift(OperatorMerge.instance(true, i));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return mergeDelayError(just(observable, observable2));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return mergeDelayError(just(observable, observable2, observable3));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return mergeDelayError(just(observable, observable2, observable3, observable4));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return mergeDelayError(just(observable, observable2, observable3, observable4, observable5));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return mergeDelayError(just(observable, observable2, observable3, observable4, observable5, observable6));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return mergeDelayError(just(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return mergeDelayError(just(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    public static final <T> Observable<T> mergeDelayError(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return mergeDelayError(just(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static final <T> Observable<T> never() {
        return NeverObservable.instance();
    }

    public static final Observable<Integer> range(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Count can not be negative");
        } else if (i2 == 0) {
            return empty();
        } else {
            if (i <= (Integer.MAX_VALUE - i2) + 1) {
                return i2 == 1 ? just(Integer.valueOf(i)) : create(new OnSubscribeRange(i, (i2 - 1) + i));
            } else {
                throw new IllegalArgumentException("start + count can not exceed Integer.MAX_VALUE");
            }
        }
    }

    public static final Observable<Integer> range(int i, int i2, Scheduler scheduler) {
        return range(i, i2).subscribeOn(scheduler);
    }

    public static final <T> Observable<Boolean> sequenceEqual(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return sequenceEqual(observable, observable2, new C11152());
    }

    public static final <T> Observable<Boolean> sequenceEqual(Observable<? extends T> observable, Observable<? extends T> observable2, Func2<? super T, ? super T, Boolean> func2) {
        return OperatorSequenceEqual.sequenceEqual(observable, observable2, func2);
    }

    public static final <T> Observable<T> switchOnNext(Observable<? extends Observable<? extends T>> observable) {
        return observable.lift(OperatorSwitch.instance());
    }

    @Deprecated
    public static final Observable<Long> timer(long j, long j2, TimeUnit timeUnit) {
        return interval(j, j2, timeUnit, Schedulers.computation());
    }

    @Deprecated
    public static final Observable<Long> timer(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return interval(j, j2, timeUnit, scheduler);
    }

    public static final Observable<Long> timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, Schedulers.computation());
    }

    public static final Observable<Long> timer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(new OnSubscribeTimerOnce(j, timeUnit, scheduler));
    }

    public static final <T, Resource> Observable<T> using(Func0<Resource> func0, Func1<? super Resource, ? extends Observable<? extends T>> func1, Action1<? super Resource> action1) {
        return using(func0, func1, action1, false);
    }

    @Experimental
    public static final <T, Resource> Observable<T> using(Func0<Resource> func0, Func1<? super Resource, ? extends Observable<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        return create(new OnSubscribeUsing(func0, func1, action1, z));
    }

    public static final <R> Observable<R> zip(Iterable<? extends Observable<?>> iterable, FuncN<? extends R> funcN) {
        List arrayList = new ArrayList();
        for (Observable add : iterable) {
            arrayList.add(add);
        }
        return just(arrayList.toArray(new Observable[arrayList.size()])).lift(new OperatorZip((FuncN) funcN));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Observable<? extends T9> observable9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> func9) {
        return just(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9}).lift(new OperatorZip((Func9) func9));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func8) {
        return just(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8}).lift(new OperatorZip((Func8) func8));
    }

    public static final <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func7) {
        return just(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7}).lift(new OperatorZip((Func7) func7));
    }

    public static final <T1, T2, T3, T4, T5, T6, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func6) {
        return just(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6}).lift(new OperatorZip((Func6) func6));
    }

    public static final <T1, T2, T3, T4, T5, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func5) {
        return just(new Observable[]{observable, observable2, observable3, observable4, observable5}).lift(new OperatorZip((Func5) func5));
    }

    public static final <T1, T2, T3, T4, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func4) {
        return just(new Observable[]{observable, observable2, observable3, observable4}).lift(new OperatorZip((Func4) func4));
    }

    public static final <T1, T2, T3, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Func3<? super T1, ? super T2, ? super T3, ? extends R> func3) {
        return just(new Observable[]{observable, observable2, observable3}).lift(new OperatorZip((Func3) func3));
    }

    public static final <T1, T2, R> Observable<R> zip(Observable<? extends T1> observable, Observable<? extends T2> observable2, Func2<? super T1, ? super T2, ? extends R> func2) {
        return just(new Observable[]{observable, observable2}).lift(new OperatorZip((Func2) func2));
    }

    public static final <R> Observable<R> zip(Observable<? extends Observable<?>> observable, FuncN<? extends R> funcN) {
        return observable.toList().map(new C11163()).lift(new OperatorZip((FuncN) funcN));
    }

    public final Observable<Boolean> all(Func1<? super T, Boolean> func1) {
        return lift(new OperatorAll(func1));
    }

    public final Observable<T> ambWith(Observable<? extends T> observable) {
        return amb(this, observable);
    }

    public final Observable<T> asObservable() {
        return lift(OperatorAsObservable.instance());
    }

    public final Observable<List<T>> buffer(int i) {
        return buffer(i, i);
    }

    public final Observable<List<T>> buffer(int i, int i2) {
        return lift(new OperatorBufferWithSize(i, i2));
    }

    public final Observable<List<T>> buffer(long j, long j2, TimeUnit timeUnit) {
        return buffer(j, j2, timeUnit, Schedulers.computation());
    }

    public final Observable<List<T>> buffer(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorBufferWithTime(j, j2, timeUnit, Integer.MAX_VALUE, scheduler));
    }

    public final Observable<List<T>> buffer(long j, TimeUnit timeUnit) {
        return buffer(j, timeUnit, Integer.MAX_VALUE, Schedulers.computation());
    }

    public final Observable<List<T>> buffer(long j, TimeUnit timeUnit, int i) {
        return lift(new OperatorBufferWithTime(j, j, timeUnit, i, Schedulers.computation()));
    }

    public final Observable<List<T>> buffer(long j, TimeUnit timeUnit, int i, Scheduler scheduler) {
        return lift(new OperatorBufferWithTime(j, j, timeUnit, i, scheduler));
    }

    public final Observable<List<T>> buffer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return buffer(j, j, timeUnit, scheduler);
    }

    public final <B> Observable<List<T>> buffer(Observable<B> observable) {
        return buffer((Observable) observable, 16);
    }

    public final <B> Observable<List<T>> buffer(Observable<B> observable, int i) {
        return lift(new OperatorBufferWithSingleObservable((Observable) observable, i));
    }

    public final <TOpening, TClosing> Observable<List<T>> buffer(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        return lift(new OperatorBufferWithStartEndObservable(observable, func1));
    }

    public final <TClosing> Observable<List<T>> buffer(Func0<? extends Observable<? extends TClosing>> func0) {
        return lift(new OperatorBufferWithSingleObservable((Func0) func0, 16));
    }

    public final Observable<T> cache() {
        return create(new OnSubscribeCache(this));
    }

    public final Observable<T> cache(int i) {
        return create(new OnSubscribeCache(this, i));
    }

    public final <R> Observable<R> cast(Class<R> cls) {
        return lift(new OperatorCast(cls));
    }

    public final <R> Observable<R> collect(Func0<R> func0, Action2<R, ? super T> action2) {
        return lift(new OperatorScan((Func0) func0, new C11174(action2))).last();
    }

    public <R> Observable<R> compose(Transformer<? super T, ? extends R> transformer) {
        return (Observable) transformer.call(this);
    }

    public final <R> Observable<R> concatMap(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return concat(map(func1));
    }

    public final Observable<T> concatWith(Observable<? extends T> observable) {
        return concat(this, observable);
    }

    public final Observable<Boolean> contains(Object obj) {
        return exists(new C11185(obj));
    }

    public final Observable<Integer> count() {
        return reduce(Integer.valueOf(0), CountHolder.INSTANCE);
    }

    public final Observable<Long> countLong() {
        return reduce(Long.valueOf(0), CountLongHolder.INSTANCE);
    }

    public final Observable<T> debounce(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> debounce(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorDebounceWithTime(j, timeUnit, scheduler));
    }

    public final <U> Observable<T> debounce(Func1<? super T, ? extends Observable<U>> func1) {
        return lift(new OperatorDebounceWithSelector(func1));
    }

    public final Observable<T> defaultIfEmpty(T t) {
        return switchIfEmpty(create(new C11196(t)));
    }

    public final Observable<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> delay(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorDelay(this, j, timeUnit, scheduler));
    }

    public final <U, V> Observable<T> delay(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1) {
        return delaySubscription(func0).lift(new OperatorDelayWithSelector(this, func1));
    }

    public final <U> Observable<T> delay(Func1<? super T, ? extends Observable<U>> func1) {
        return lift(new OperatorDelayWithSelector(this, func1));
    }

    public final Observable<T> delaySubscription(long j, TimeUnit timeUnit) {
        return delaySubscription(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> delaySubscription(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(new OnSubscribeDelaySubscription(this, j, timeUnit, scheduler));
    }

    public final <U> Observable<T> delaySubscription(Func0<? extends Observable<U>> func0) {
        return create(new OnSubscribeDelaySubscriptionWithSelector(this, func0));
    }

    public final <T2> Observable<T2> dematerialize() {
        return lift(OperatorDematerialize.instance());
    }

    public final Observable<T> distinct() {
        return lift(OperatorDistinct.instance());
    }

    public final <U> Observable<T> distinct(Func1<? super T, ? extends U> func1) {
        return lift(new OperatorDistinct(func1));
    }

    public final Observable<T> distinctUntilChanged() {
        return lift(OperatorDistinctUntilChanged.instance());
    }

    public final <U> Observable<T> distinctUntilChanged(Func1<? super T, ? extends U> func1) {
        return lift(new OperatorDistinctUntilChanged(func1));
    }

    public final Observable<T> doOnCompleted(Action0 action0) {
        return lift(new OperatorDoOnEach(new C11207(action0)));
    }

    public final Observable<T> doOnEach(Observer<? super T> observer) {
        return lift(new OperatorDoOnEach(observer));
    }

    public final Observable<T> doOnEach(Action1<Notification<? super T>> action1) {
        return lift(new OperatorDoOnEach(new C11218(action1)));
    }

    public final Observable<T> doOnError(Action1<Throwable> action1) {
        return lift(new OperatorDoOnEach(new C11229(action1)));
    }

    public final Observable<T> doOnNext(Action1<? super T> action1) {
        return lift(new OperatorDoOnEach(new AnonymousClass10(action1)));
    }

    @Beta
    public final Observable<T> doOnRequest(Action1<Long> action1) {
        return lift(new OperatorDoOnRequest(action1));
    }

    public final Observable<T> doOnSubscribe(Action0 action0) {
        return lift(new OperatorDoOnSubscribe(action0));
    }

    public final Observable<T> doOnTerminate(Action0 action0) {
        return lift(new OperatorDoOnEach(new AnonymousClass11(action0)));
    }

    public final Observable<T> doOnUnsubscribe(Action0 action0) {
        return lift(new OperatorDoOnUnsubscribe(action0));
    }

    public final Observable<T> elementAt(int i) {
        return lift(new OperatorElementAt(i));
    }

    public final Observable<T> elementAtOrDefault(int i, T t) {
        return lift(new OperatorElementAt(i, t));
    }

    public final Observable<Boolean> exists(Func1<? super T, Boolean> func1) {
        return lift(new OperatorAny(func1, false));
    }

    public final Observable<T> filter(Func1<? super T, Boolean> func1) {
        return lift(new OperatorFilter(func1));
    }

    public final Observable<T> finallyDo(Action0 action0) {
        return lift(new OperatorFinally(action0));
    }

    public final Observable<T> first() {
        return take(1).single();
    }

    public final Observable<T> first(Func1<? super T, Boolean> func1) {
        return takeFirst(func1).single();
    }

    public final Observable<T> firstOrDefault(T t) {
        return take(1).singleOrDefault(t);
    }

    public final Observable<T> firstOrDefault(T t, Func1<? super T, Boolean> func1) {
        return takeFirst(func1).singleOrDefault(t);
    }

    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) this).scalarFlatMap(func1) : merge(map(func1));
    }

    @Beta
    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> func1, int i) {
        return getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) this).scalarFlatMap(func1) : merge(map(func1), i);
    }

    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> func1, Func1<? super Throwable, ? extends Observable<? extends R>> func12, Func0<? extends Observable<? extends R>> func0) {
        return merge(mapNotification(func1, func12, func0));
    }

    @Beta
    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> func1, Func1<? super Throwable, ? extends Observable<? extends R>> func12, Func0<? extends Observable<? extends R>> func0, int i) {
        return merge(mapNotification(func1, func12, func0), i);
    }

    public final <U, R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
        return merge(lift(new OperatorMapPair(func1, func2)));
    }

    @Beta
    public final <U, R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2, int i) {
        return merge(lift(new OperatorMapPair(func1, func2)), i);
    }

    public final <R> Observable<R> flatMapIterable(Func1<? super T, ? extends Iterable<? extends R>> func1) {
        return merge(map(OperatorMapPair.convertSelector(func1)));
    }

    public final <U, R> Observable<R> flatMapIterable(Func1<? super T, ? extends Iterable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
        return flatMap(OperatorMapPair.convertSelector(func1), (Func2) func2);
    }

    public final void forEach(Action1<? super T> action1) {
        subscribe((Action1) action1);
    }

    public final void forEach(Action1<? super T> action1, Action1<Throwable> action12) {
        subscribe(action1, action12);
    }

    public final void forEach(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        subscribe(action1, action12, action0);
    }

    public final <K> Observable<GroupedObservable<K, T>> groupBy(Func1<? super T, ? extends K> func1) {
        return lift(new OperatorGroupBy(func1));
    }

    public final <K, R> Observable<GroupedObservable<K, R>> groupBy(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends R> func12) {
        return lift(new OperatorGroupBy(func1, func12));
    }

    public final <T2, D1, D2, R> Observable<R> groupJoin(Observable<T2> observable, Func1<? super T, ? extends Observable<D1>> func1, Func1<? super T2, ? extends Observable<D2>> func12, Func2<? super T, ? super Observable<T2>, ? extends R> func2) {
        return create(new OnSubscribeGroupJoin(this, observable, func1, func12, func2));
    }

    public final Observable<T> ignoreElements() {
        return lift(OperatorIgnoreElements.instance());
    }

    public final Observable<Boolean> isEmpty() {
        return lift(HolderAnyForEmpty.INSTANCE);
    }

    public final <TRight, TLeftDuration, TRightDuration, R> Observable<R> join(Observable<TRight> observable, Func1<T, Observable<TLeftDuration>> func1, Func1<TRight, Observable<TRightDuration>> func12, Func2<T, TRight, R> func2) {
        return create(new OnSubscribeJoin(this, observable, func1, func12, func2));
    }

    public final Observable<T> last() {
        return takeLast(1).single();
    }

    public final Observable<T> last(Func1<? super T, Boolean> func1) {
        return filter(func1).takeLast(1).single();
    }

    public final Observable<T> lastOrDefault(T t) {
        return takeLast(1).singleOrDefault(t);
    }

    public final Observable<T> lastOrDefault(T t, Func1<? super T, Boolean> func1) {
        return filter(func1).takeLast(1).singleOrDefault(t);
    }

    public final <R> Observable<R> lift(Operator<? extends R, ? super T> operator) {
        return new Observable(new C11121(operator));
    }

    public final Observable<T> limit(int i) {
        return take(i);
    }

    public final <R> Observable<R> map(Func1<? super T, ? extends R> func1) {
        return lift(new OperatorMap(func1));
    }

    public final Observable<Notification<T>> materialize() {
        return lift(OperatorMaterialize.instance());
    }

    public final Observable<T> mergeWith(Observable<? extends T> observable) {
        return merge(this, (Observable) observable);
    }

    public final Observable<Observable<T>> nest() {
        return just(this);
    }

    public final Observable<T> observeOn(Scheduler scheduler) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarScheduleOn(scheduler) : lift(new OperatorObserveOn(scheduler));
    }

    public final <R> Observable<R> ofType(Class<R> cls) {
        return filter(new AnonymousClass12(cls)).cast(cls);
    }

    @Experimental
    @Deprecated
    public final Observable<T> onBackpressureBlock() {
        return onBackpressureBlock(RxRingBuffer.SIZE);
    }

    @Experimental
    @Deprecated
    public final Observable<T> onBackpressureBlock(int i) {
        return lift(new OperatorOnBackpressureBlock(i));
    }

    public final Observable<T> onBackpressureBuffer() {
        return lift(OperatorOnBackpressureBuffer.instance());
    }

    @Beta
    public final Observable<T> onBackpressureBuffer(long j) {
        return lift(new OperatorOnBackpressureBuffer(j));
    }

    @Beta
    public final Observable<T> onBackpressureBuffer(long j, Action0 action0) {
        return lift(new OperatorOnBackpressureBuffer(j, action0));
    }

    public final Observable<T> onBackpressureDrop() {
        return lift(OperatorOnBackpressureDrop.instance());
    }

    @Experimental
    public final Observable<T> onBackpressureDrop(Action1<? super T> action1) {
        return lift(new OperatorOnBackpressureDrop((Action1) action1));
    }

    @Experimental
    public final Observable<T> onBackpressureLatest() {
        return lift(OperatorOnBackpressureLatest.instance());
    }

    public final Observable<T> onErrorResumeNext(Observable<? extends T> observable) {
        return lift(new OperatorOnErrorResumeNextViaObservable(observable));
    }

    public final Observable<T> onErrorResumeNext(Func1<Throwable, ? extends Observable<? extends T>> func1) {
        return lift(new OperatorOnErrorResumeNextViaFunction(func1));
    }

    public final Observable<T> onErrorReturn(Func1<Throwable, ? extends T> func1) {
        return lift(new OperatorOnErrorReturn(func1));
    }

    public final Observable<T> onExceptionResumeNext(Observable<? extends T> observable) {
        return lift(new OperatorOnExceptionResumeNextViaObservable(observable));
    }

    public final <R> Observable<R> publish(Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return OperatorPublish.create(this, func1);
    }

    public final ConnectableObservable<T> publish() {
        return OperatorPublish.create(this);
    }

    public final <R> Observable<R> reduce(R r, Func2<R, ? super T, R> func2) {
        return scan(r, func2).takeLast(1);
    }

    public final Observable<T> reduce(Func2<T, T, T> func2) {
        return scan(func2).last();
    }

    public final Observable<T> repeat() {
        return OnSubscribeRedo.repeat(this);
    }

    public final Observable<T> repeat(long j) {
        return OnSubscribeRedo.repeat(this, j);
    }

    public final Observable<T> repeat(long j, Scheduler scheduler) {
        return OnSubscribeRedo.repeat(this, j, scheduler);
    }

    public final Observable<T> repeat(Scheduler scheduler) {
        return OnSubscribeRedo.repeat(this, scheduler);
    }

    public final Observable<T> repeatWhen(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1) {
        return OnSubscribeRedo.repeat(this, new AnonymousClass14(func1));
    }

    public final Observable<T> repeatWhen(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return OnSubscribeRedo.repeat(this, new AnonymousClass13(func1), scheduler);
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return create(new OnSubscribeMulticastSelector(this, new Func0<Subject<T, T>>() {
            public final Subject<T, T> call() {
                return ReplaySubject.create();
            }
        }, func1));
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i) {
        return create(new OnSubscribeMulticastSelector(this, new AnonymousClass17(i), func1));
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i, long j, TimeUnit timeUnit) {
        return replay(func1, i, j, timeUnit, Schedulers.computation());
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        if (i >= 0) {
            return create(new OnSubscribeMulticastSelector(this, new AnonymousClass18(j, timeUnit, i, scheduler), func1));
        }
        throw new IllegalArgumentException("bufferSize < 0");
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i, Scheduler scheduler) {
        return create(new OnSubscribeMulticastSelector(this, new AnonymousClass19(i, scheduler), func1));
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1, long j, TimeUnit timeUnit) {
        return replay((Func1) func1, j, timeUnit, Schedulers.computation());
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(new OnSubscribeMulticastSelector(this, new AnonymousClass20(j, timeUnit, scheduler), func1));
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> func1, Scheduler scheduler) {
        return create(new OnSubscribeMulticastSelector(this, new AnonymousClass21(scheduler), func1));
    }

    public final ConnectableObservable<T> replay() {
        return new OperatorMulticast(this, new Func0<Subject<? super T, ? extends T>>() {
            public Subject<? super T, ? extends T> call() {
                return ReplaySubject.create();
            }
        });
    }

    public final ConnectableObservable<T> replay(int i) {
        return new OperatorMulticast(this, new AnonymousClass22(i));
    }

    public final ConnectableObservable<T> replay(int i, long j, TimeUnit timeUnit) {
        return replay(i, j, timeUnit, Schedulers.computation());
    }

    public final ConnectableObservable<T> replay(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        if (i >= 0) {
            return new OperatorMulticast(this, new AnonymousClass23(j, timeUnit, i, scheduler));
        }
        throw new IllegalArgumentException("bufferSize < 0");
    }

    public final ConnectableObservable<T> replay(int i, Scheduler scheduler) {
        return new OperatorMulticast(this, new AnonymousClass24(i, scheduler));
    }

    public final ConnectableObservable<T> replay(long j, TimeUnit timeUnit) {
        return replay(j, timeUnit, Schedulers.computation());
    }

    public final ConnectableObservable<T> replay(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new OperatorMulticast(this, new AnonymousClass25(j, timeUnit, scheduler));
    }

    public final ConnectableObservable<T> replay(Scheduler scheduler) {
        return new OperatorMulticast(this, new AnonymousClass26(scheduler));
    }

    public final Observable<T> retry() {
        return OnSubscribeRedo.retry(this);
    }

    public final Observable<T> retry(long j) {
        return OnSubscribeRedo.retry(this, j);
    }

    public final Observable<T> retry(Func2<Integer, Throwable, Boolean> func2) {
        return nest().lift(new OperatorRetryWithPredicate(func2));
    }

    public final Observable<T> retryWhen(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1) {
        return OnSubscribeRedo.retry(this, new AnonymousClass27(func1));
    }

    public final Observable<T> retryWhen(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1, Scheduler scheduler) {
        return OnSubscribeRedo.retry(this, new AnonymousClass28(func1), scheduler);
    }

    public final Observable<T> sample(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> sample(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorSampleWithTime(j, timeUnit, scheduler));
    }

    public final <U> Observable<T> sample(Observable<U> observable) {
        return lift(new OperatorSampleWithObservable(observable));
    }

    public final <R> Observable<R> scan(R r, Func2<R, ? super T, R> func2) {
        return lift(new OperatorScan((Object) r, (Func2) func2));
    }

    public final Observable<T> scan(Func2<T, T, T> func2) {
        return lift(new OperatorScan(func2));
    }

    public final Observable<T> serialize() {
        return lift(OperatorSerialize.instance());
    }

    public final Observable<T> share() {
        return publish().refCount();
    }

    public final Observable<T> single() {
        return lift(OperatorSingle.instance());
    }

    public final Observable<T> single(Func1<? super T, Boolean> func1) {
        return filter(func1).single();
    }

    public final Observable<T> singleOrDefault(T t) {
        return lift(new OperatorSingle((Object) t));
    }

    public final Observable<T> singleOrDefault(T t, Func1<? super T, Boolean> func1) {
        return filter(func1).singleOrDefault(t);
    }

    public final Observable<T> skip(int i) {
        return lift(new OperatorSkip(i));
    }

    public final Observable<T> skip(long j, TimeUnit timeUnit) {
        return skip(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> skip(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorSkipTimed(j, timeUnit, scheduler));
    }

    public final Observable<T> skipLast(int i) {
        return lift(new OperatorSkipLast(i));
    }

    public final Observable<T> skipLast(long j, TimeUnit timeUnit) {
        return skipLast(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> skipLast(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorSkipLastTimed(j, timeUnit, scheduler));
    }

    public final <U> Observable<T> skipUntil(Observable<U> observable) {
        return lift(new OperatorSkipUntil(observable));
    }

    public final Observable<T> skipWhile(Func1<? super T, Boolean> func1) {
        return lift(new OperatorSkipWhile(OperatorSkipWhile.toPredicate2(func1)));
    }

    public final Observable<T> startWith(Iterable<T> iterable) {
        return concat(from((Iterable) iterable), this);
    }

    public final Observable<T> startWith(T t) {
        return concat(just(t), this);
    }

    public final Observable<T> startWith(T t, T t2) {
        return concat(just(t, t2), this);
    }

    public final Observable<T> startWith(T t, T t2, T t3) {
        return concat(just(t, t2, t3), this);
    }

    public final Observable<T> startWith(T t, T t2, T t3, T t4) {
        return concat(just(t, t2, t3, t4), this);
    }

    public final Observable<T> startWith(T t, T t2, T t3, T t4, T t5) {
        return concat(just(t, t2, t3, t4, t5), this);
    }

    public final Observable<T> startWith(T t, T t2, T t3, T t4, T t5, T t6) {
        return concat(just(t, t2, t3, t4, t5, t6), this);
    }

    public final Observable<T> startWith(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        return concat(just(t, t2, t3, t4, t5, t6, t7), this);
    }

    public final Observable<T> startWith(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        return concat(just(t, t2, t3, t4, t5, t6, t7, t8), this);
    }

    public final Observable<T> startWith(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        return concat(just(t, t2, t3, t4, t5, t6, t7, t8, t9), this);
    }

    public final Observable<T> startWith(Observable<T> observable) {
        return concat(observable, this);
    }

    public final Subscription subscribe() {
        return subscribe(new Subscriber<T>() {
            public final void onCompleted() {
            }

            public final void onError(Throwable th) {
                throw new OnErrorNotImplementedException(th);
            }

            public final void onNext(T t) {
            }
        });
    }

    public final Subscription subscribe(Observer<? super T> observer) {
        return observer instanceof Subscriber ? subscribe((Subscriber) observer) : subscribe(new AnonymousClass33(observer));
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
                hook.onSubscribeStart(this, this.onSubscribe).call(safeSubscriber);
                return hook.onSubscribeReturn(safeSubscriber);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                try {
                    safeSubscriber.onError(hook.onSubscribeError(th));
                    return Subscriptions.unsubscribed();
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
            return subscribe(new AnonymousClass30(action1));
        }
        throw new IllegalArgumentException("onNext can not be null");
    }

    public final Subscription subscribe(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        } else if (action12 != null) {
            return subscribe(new AnonymousClass31(action12, action1));
        } else {
            throw new IllegalArgumentException("onError can not be null");
        }
    }

    public final Subscription subscribe(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        } else if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        } else if (action0 != null) {
            return subscribe(new AnonymousClass32(action0, action12, action1));
        } else {
            throw new IllegalArgumentException("onComplete can not be null");
        }
    }

    public final Observable<T> subscribeOn(Scheduler scheduler) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarScheduleOn(scheduler) : nest().lift(new OperatorSubscribeOn(scheduler));
    }

    @Experimental
    public final Observable<T> switchIfEmpty(Observable<? extends T> observable) {
        return lift(new OperatorSwitchIfEmpty(observable));
    }

    public final <R> Observable<R> switchMap(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return switchOnNext(map(func1));
    }

    public final Observable<T> take(int i) {
        return lift(new OperatorTake(i));
    }

    public final Observable<T> take(long j, TimeUnit timeUnit) {
        return take(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> take(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorTakeTimed(j, timeUnit, scheduler));
    }

    public final Observable<T> takeFirst(Func1<? super T, Boolean> func1) {
        return filter(func1).take(1);
    }

    public final Observable<T> takeLast(int i) {
        return i == 0 ? ignoreElements() : i == 1 ? lift(OperatorTakeLastOne.instance()) : lift(new OperatorTakeLast(i));
    }

    public final Observable<T> takeLast(int i, long j, TimeUnit timeUnit) {
        return takeLast(i, j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> takeLast(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorTakeLastTimed(i, j, timeUnit, scheduler));
    }

    public final Observable<T> takeLast(long j, TimeUnit timeUnit) {
        return takeLast(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> takeLast(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorTakeLastTimed(j, timeUnit, scheduler));
    }

    public final Observable<List<T>> takeLastBuffer(int i) {
        return takeLast(i).toList();
    }

    public final Observable<List<T>> takeLastBuffer(int i, long j, TimeUnit timeUnit) {
        return takeLast(i, j, timeUnit).toList();
    }

    public final Observable<List<T>> takeLastBuffer(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return takeLast(i, j, timeUnit, scheduler).toList();
    }

    public final Observable<List<T>> takeLastBuffer(long j, TimeUnit timeUnit) {
        return takeLast(j, timeUnit).toList();
    }

    public final Observable<List<T>> takeLastBuffer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return takeLast(j, timeUnit, scheduler).toList();
    }

    public final <E> Observable<T> takeUntil(Observable<? extends E> observable) {
        return lift(new OperatorTakeUntil(observable));
    }

    @Experimental
    public final Observable<T> takeUntil(Func1<? super T, Boolean> func1) {
        return lift(new OperatorTakeUntilPredicate(func1));
    }

    public final Observable<T> takeWhile(Func1<? super T, Boolean> func1) {
        return lift(new OperatorTakeWhile((Func1) func1));
    }

    public final Observable<T> throttleFirst(long j, TimeUnit timeUnit) {
        return throttleFirst(j, timeUnit, Schedulers.computation());
    }

    public final Observable<T> throttleFirst(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return lift(new OperatorThrottleFirst(j, timeUnit, scheduler));
    }

    public final Observable<T> throttleLast(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit);
    }

    public final Observable<T> throttleLast(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return sample(j, timeUnit, scheduler);
    }

    public final Observable<T> throttleWithTimeout(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit);
    }

    public final Observable<T> throttleWithTimeout(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return debounce(j, timeUnit, scheduler);
    }

    public final Observable<TimeInterval<T>> timeInterval() {
        return timeInterval(Schedulers.immediate());
    }

    public final Observable<TimeInterval<T>> timeInterval(Scheduler scheduler) {
        return lift(new OperatorTimeInterval(scheduler));
    }

    public final Observable<T> timeout(long j, TimeUnit timeUnit) {
        return timeout(j, timeUnit, null, Schedulers.computation());
    }

    public final Observable<T> timeout(long j, TimeUnit timeUnit, Observable<? extends T> observable) {
        return timeout(j, timeUnit, observable, Schedulers.computation());
    }

    public final Observable<T> timeout(long j, TimeUnit timeUnit, Observable<? extends T> observable, Scheduler scheduler) {
        return lift(new OperatorTimeout(j, timeUnit, observable, scheduler));
    }

    public final Observable<T> timeout(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return timeout(j, timeUnit, null, scheduler);
    }

    public final <U, V> Observable<T> timeout(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1) {
        return timeout((Func0) func0, (Func1) func1, null);
    }

    public final <U, V> Observable<T> timeout(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1, Observable<? extends T> observable) {
        if (func1 != null) {
            return lift(new OperatorTimeoutWithSelector(func0, func1, observable));
        }
        throw new NullPointerException("timeoutSelector is null");
    }

    public final <V> Observable<T> timeout(Func1<? super T, ? extends Observable<V>> func1) {
        return timeout(null, (Func1) func1, null);
    }

    public final <V> Observable<T> timeout(Func1<? super T, ? extends Observable<V>> func1, Observable<? extends T> observable) {
        return timeout(null, (Func1) func1, (Observable) observable);
    }

    public final Observable<Timestamped<T>> timestamp() {
        return timestamp(Schedulers.immediate());
    }

    public final Observable<Timestamped<T>> timestamp(Scheduler scheduler) {
        return lift(new OperatorTimestamp(scheduler));
    }

    public final BlockingObservable<T> toBlocking() {
        return BlockingObservable.from(this);
    }

    public final Observable<List<T>> toList() {
        return lift(OperatorToObservableList.instance());
    }

    public final <K> Observable<Map<K, T>> toMap(Func1<? super T, ? extends K> func1) {
        return lift(new OperatorToMap(func1, UtilityFunctions.identity()));
    }

    public final <K, V> Observable<Map<K, V>> toMap(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        return lift(new OperatorToMap(func1, func12));
    }

    public final <K, V> Observable<Map<K, V>> toMap(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, V>> func0) {
        return lift(new OperatorToMap(func1, func12, func0));
    }

    public final <K> Observable<Map<K, Collection<T>>> toMultimap(Func1<? super T, ? extends K> func1) {
        return lift(new OperatorToMultimap(func1, UtilityFunctions.identity()));
    }

    public final <K, V> Observable<Map<K, Collection<V>>> toMultimap(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        return lift(new OperatorToMultimap(func1, func12));
    }

    public final <K, V> Observable<Map<K, Collection<V>>> toMultimap(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, Collection<V>>> func0) {
        return lift(new OperatorToMultimap(func1, func12, func0));
    }

    public final <K, V> Observable<Map<K, Collection<V>>> toMultimap(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, Collection<V>>> func0, Func1<? super K, ? extends Collection<V>> func13) {
        return lift(new OperatorToMultimap(func1, func12, func0, func13));
    }

    @Experimental
    public Single<T> toSingle() {
        return new Single(OnSubscribeSingle.create(this));
    }

    public final Observable<List<T>> toSortedList() {
        return lift(new OperatorToObservableSortedList(10));
    }

    @Experimental
    public final Observable<List<T>> toSortedList(int i) {
        return lift(new OperatorToObservableSortedList(i));
    }

    public final Observable<List<T>> toSortedList(Func2<? super T, ? super T, Integer> func2) {
        return lift(new OperatorToObservableSortedList(func2, 10));
    }

    @Experimental
    public final Observable<List<T>> toSortedList(Func2<? super T, ? super T, Integer> func2, int i) {
        return lift(new OperatorToObservableSortedList(func2, i));
    }

    public final Subscription unsafeSubscribe(Subscriber<? super T> subscriber) {
        try {
            subscriber.onStart();
            hook.onSubscribeStart(this, this.onSubscribe).call(subscriber);
            return hook.onSubscribeReturn(subscriber);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            try {
                subscriber.onError(hook.onSubscribeError(th));
                return Subscriptions.unsubscribed();
            } catch (OnErrorNotImplementedException e) {
                throw e;
            } catch (Throwable th2) {
                hook.onSubscribeError(new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2));
            }
        }
    }

    public final Observable<T> unsubscribeOn(Scheduler scheduler) {
        return lift(new OperatorUnsubscribeOn(scheduler));
    }

    public final Observable<Observable<T>> window(int i) {
        return window(i, i);
    }

    public final Observable<Observable<T>> window(int i, int i2) {
        return lift(new OperatorWindowWithSize(i, i2));
    }

    public final Observable<Observable<T>> window(long j, long j2, TimeUnit timeUnit) {
        return window(j, j2, timeUnit, Integer.MAX_VALUE, Schedulers.computation());
    }

    public final Observable<Observable<T>> window(long j, long j2, TimeUnit timeUnit, int i, Scheduler scheduler) {
        return lift(new OperatorWindowWithTime(j, j2, timeUnit, i, scheduler));
    }

    public final Observable<Observable<T>> window(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return window(j, j2, timeUnit, Integer.MAX_VALUE, scheduler);
    }

    public final Observable<Observable<T>> window(long j, TimeUnit timeUnit) {
        return window(j, j, timeUnit, Schedulers.computation());
    }

    public final Observable<Observable<T>> window(long j, TimeUnit timeUnit, int i) {
        return window(j, timeUnit, i, Schedulers.computation());
    }

    public final Observable<Observable<T>> window(long j, TimeUnit timeUnit, int i, Scheduler scheduler) {
        return window(j, j, timeUnit, i, scheduler);
    }

    public final Observable<Observable<T>> window(long j, TimeUnit timeUnit, Scheduler scheduler) {
        return window(j, timeUnit, Integer.MAX_VALUE, scheduler);
    }

    public final <U> Observable<Observable<T>> window(Observable<U> observable) {
        return lift(new OperatorWindowWithObservable(observable));
    }

    public final <TOpening, TClosing> Observable<Observable<T>> window(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        return lift(new OperatorWindowWithStartEndObservable(observable, func1));
    }

    public final <TClosing> Observable<Observable<T>> window(Func0<? extends Observable<? extends TClosing>> func0) {
        return lift(new OperatorWindowWithObservableFactory(func0));
    }

    @Experimental
    public final <U, R> Observable<R> withLatestFrom(Observable<? extends U> observable, Func2<? super T, ? super U, ? extends R> func2) {
        return lift(new OperatorWithLatestFrom(observable, func2));
    }

    public final <T2, R> Observable<R> zipWith(Iterable<? extends T2> iterable, Func2<? super T, ? super T2, ? extends R> func2) {
        return lift(new OperatorZipIterable(iterable, func2));
    }

    public final <T2, R> Observable<R> zipWith(Observable<? extends T2> observable, Func2<? super T, ? super T2, ? extends R> func2) {
        return zip(this, observable, func2);
    }
}
