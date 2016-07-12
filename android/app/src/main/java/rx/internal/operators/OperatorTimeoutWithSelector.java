package rx.internal.operators;

import rx.Observable;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

public class OperatorTimeoutWithSelector<T, U, V> extends OperatorTimeoutBase<T> {

    /* renamed from: rx.internal.operators.OperatorTimeoutWithSelector.1 */
    class C13201 implements FirstTimeoutStub<T> {
        final /* synthetic */ Func0 val$firstTimeoutSelector;

        /* renamed from: rx.internal.operators.OperatorTimeoutWithSelector.1.1 */
        class C13191 extends Subscriber<U> {
            final /* synthetic */ Long val$seqId;
            final /* synthetic */ TimeoutSubscriber val$timeoutSubscriber;

            C13191(TimeoutSubscriber timeoutSubscriber, Long l) {
                this.val$timeoutSubscriber = timeoutSubscriber;
                this.val$seqId = l;
            }

            public void onCompleted() {
                this.val$timeoutSubscriber.onTimeout(this.val$seqId.longValue());
            }

            public void onError(Throwable th) {
                this.val$timeoutSubscriber.onError(th);
            }

            public void onNext(U u) {
                this.val$timeoutSubscriber.onTimeout(this.val$seqId.longValue());
            }
        }

        C13201(Func0 func0) {
            this.val$firstTimeoutSelector = func0;
        }

        public Subscription call(TimeoutSubscriber<T> timeoutSubscriber, Long l, Worker worker) {
            if (this.val$firstTimeoutSelector == null) {
                return Subscriptions.unsubscribed();
            }
            try {
                return ((Observable) this.val$firstTimeoutSelector.call()).unsafeSubscribe(new C13191(timeoutSubscriber, l));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                timeoutSubscriber.onError(th);
                return Subscriptions.unsubscribed();
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorTimeoutWithSelector.2 */
    class C13222 implements TimeoutStub<T> {
        final /* synthetic */ Func1 val$timeoutSelector;

        /* renamed from: rx.internal.operators.OperatorTimeoutWithSelector.2.1 */
        class C13211 extends Subscriber<V> {
            final /* synthetic */ Long val$seqId;
            final /* synthetic */ TimeoutSubscriber val$timeoutSubscriber;

            C13211(TimeoutSubscriber timeoutSubscriber, Long l) {
                this.val$timeoutSubscriber = timeoutSubscriber;
                this.val$seqId = l;
            }

            public void onCompleted() {
                this.val$timeoutSubscriber.onTimeout(this.val$seqId.longValue());
            }

            public void onError(Throwable th) {
                this.val$timeoutSubscriber.onError(th);
            }

            public void onNext(V v) {
                this.val$timeoutSubscriber.onTimeout(this.val$seqId.longValue());
            }
        }

        C13222(Func1 func1) {
            this.val$timeoutSelector = func1;
        }

        public Subscription call(TimeoutSubscriber<T> timeoutSubscriber, Long l, T t, Worker worker) {
            try {
                return ((Observable) this.val$timeoutSelector.call(t)).unsafeSubscribe(new C13211(timeoutSubscriber, l));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                timeoutSubscriber.onError(th);
                return Subscriptions.unsubscribed();
            }
        }
    }

    public OperatorTimeoutWithSelector(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1, Observable<? extends T> observable) {
        super(new C13201(func0), new C13222(func1), observable, Schedulers.immediate());
    }

    public /* bridge */ /* synthetic */ Subscriber call(Subscriber subscriber) {
        return super.call(subscriber);
    }
}
