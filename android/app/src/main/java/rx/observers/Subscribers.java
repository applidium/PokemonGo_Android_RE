package rx.observers;

import rx.Observer;
import rx.Subscriber;
import rx.annotations.Experimental;
import rx.exceptions.OnErrorNotImplementedException;
import rx.functions.Action0;
import rx.functions.Action1;

public final class Subscribers {

    /* renamed from: rx.observers.Subscribers.1 */
    static final class C13691 extends Subscriber<T> {
        final /* synthetic */ Observer val$o;

        C13691(Observer observer) {
            this.val$o = observer;
        }

        public void onCompleted() {
            this.val$o.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$o.onError(th);
        }

        public void onNext(T t) {
            this.val$o.onNext(t);
        }
    }

    /* renamed from: rx.observers.Subscribers.2 */
    static final class C13702 extends Subscriber<T> {
        final /* synthetic */ Action1 val$onNext;

        C13702(Action1 action1) {
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

    /* renamed from: rx.observers.Subscribers.3 */
    static final class C13713 extends Subscriber<T> {
        final /* synthetic */ Action1 val$onError;
        final /* synthetic */ Action1 val$onNext;

        C13713(Action1 action1, Action1 action12) {
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

    /* renamed from: rx.observers.Subscribers.4 */
    static final class C13724 extends Subscriber<T> {
        final /* synthetic */ Action0 val$onComplete;
        final /* synthetic */ Action1 val$onError;
        final /* synthetic */ Action1 val$onNext;

        C13724(Action0 action0, Action1 action1, Action1 action12) {
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

    /* renamed from: rx.observers.Subscribers.5 */
    static final class C13735 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$subscriber;

        C13735(Subscriber subscriber, Subscriber subscriber2) {
            this.val$subscriber = subscriber2;
            super(subscriber);
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

    private Subscribers() {
        throw new IllegalStateException("No instances!");
    }

    public static final <T> Subscriber<T> create(Action1<? super T> action1) {
        if (action1 != null) {
            return new C13702(action1);
        }
        throw new IllegalArgumentException("onNext can not be null");
    }

    public static final <T> Subscriber<T> create(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        } else if (action12 != null) {
            return new C13713(action12, action1);
        } else {
            throw new IllegalArgumentException("onError can not be null");
        }
    }

    public static final <T> Subscriber<T> create(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        } else if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        } else if (action0 != null) {
            return new C13724(action0, action12, action1);
        } else {
            throw new IllegalArgumentException("onComplete can not be null");
        }
    }

    public static <T> Subscriber<T> empty() {
        return from(Observers.empty());
    }

    public static <T> Subscriber<T> from(Observer<? super T> observer) {
        return new C13691(observer);
    }

    @Experimental
    public static <T> Subscriber<T> wrap(Subscriber<? super T> subscriber) {
        return new C13735(subscriber, subscriber);
    }
}
