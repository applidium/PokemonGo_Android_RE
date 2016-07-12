package rx.observables;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscription;
import rx.annotations.Experimental;
import rx.functions.Action1;
import rx.functions.Actions;
import rx.internal.operators.OnSubscribeAutoConnect;
import rx.internal.operators.OnSubscribeRefCount;

public abstract class ConnectableObservable<T> extends Observable<T> {

    /* renamed from: rx.observables.ConnectableObservable.1 */
    class C13631 implements Action1<Subscription> {
        final /* synthetic */ Subscription[] val$out;

        C13631(Subscription[] subscriptionArr) {
            this.val$out = subscriptionArr;
        }

        public void call(Subscription subscription) {
            this.val$out[0] = subscription;
        }
    }

    protected ConnectableObservable(OnSubscribe<T> onSubscribe) {
        super(onSubscribe);
    }

    @Experimental
    public Observable<T> autoConnect() {
        return autoConnect(1);
    }

    @Experimental
    public Observable<T> autoConnect(int i) {
        return autoConnect(i, Actions.empty());
    }

    @Experimental
    public Observable<T> autoConnect(int i, Action1<? super Subscription> action1) {
        if (i > 0) {
            return Observable.create(new OnSubscribeAutoConnect(this, i, action1));
        }
        connect(action1);
        return this;
    }

    public final Subscription connect() {
        Subscription[] subscriptionArr = new Subscription[1];
        connect(new C13631(subscriptionArr));
        return subscriptionArr[0];
    }

    public abstract void connect(Action1<? super Subscription> action1);

    public Observable<T> refCount() {
        return Observable.create(new OnSubscribeRefCount(this));
    }
}
