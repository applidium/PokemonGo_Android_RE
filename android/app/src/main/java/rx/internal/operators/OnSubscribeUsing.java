package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.observers.Subscribers;

public final class OnSubscribeUsing<T, Resource> implements OnSubscribe<T> {
    private final Action1<? super Resource> dispose;
    private final boolean disposeEagerly;
    private final Func1<? super Resource, ? extends Observable<? extends T>> observableFactory;
    private final Func0<Resource> resourceFactory;

    private static final class DisposeAction<Resource> extends AtomicBoolean implements Action0, Subscription {
        private static final long serialVersionUID = 4262875056400218316L;
        private Action1<? super Resource> dispose;
        private Resource resource;

        private DisposeAction(Action1<? super Resource> action1, Resource resource) {
            this.dispose = action1;
            this.resource = resource;
            lazySet(false);
        }

        public void call() {
            if (compareAndSet(false, true)) {
                try {
                    this.dispose.call(this.resource);
                } finally {
                    this.resource = null;
                    this.dispose = null;
                }
            }
        }

        public boolean isUnsubscribed() {
            return get();
        }

        public void unsubscribe() {
            call();
        }
    }

    public OnSubscribeUsing(Func0<Resource> func0, Func1<? super Resource, ? extends Observable<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        this.resourceFactory = func0;
        this.observableFactory = func1;
        this.dispose = action1;
        this.disposeEagerly = z;
    }

    private Throwable disposeEagerlyIfRequested(Action0 action0) {
        Throwable th = null;
        if (this.disposeEagerly) {
            try {
                action0.call();
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return th;
    }

    public void call(Subscriber<? super T> subscriber) {
        Action0 disposeAction;
        try {
            Object call = this.resourceFactory.call();
            disposeAction = new DisposeAction(call, null);
            subscriber.add(disposeAction);
            Observable observable = (Observable) this.observableFactory.call(call);
            if (this.disposeEagerly) {
                observable = observable.doOnTerminate(disposeAction);
            }
            observable.unsafeSubscribe(Subscribers.wrap(subscriber));
        } catch (Throwable th) {
            subscriber.onError(th);
        }
    }
}
