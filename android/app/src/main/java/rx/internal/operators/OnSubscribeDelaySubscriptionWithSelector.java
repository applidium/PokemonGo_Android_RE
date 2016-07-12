package rx.internal.operators;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.functions.Func0;
import rx.observers.Subscribers;

public final class OnSubscribeDelaySubscriptionWithSelector<T, U> implements OnSubscribe<T> {
    final Observable<? extends T> source;
    final Func0<? extends Observable<U>> subscriptionDelay;

    /* renamed from: rx.internal.operators.OnSubscribeDelaySubscriptionWithSelector.1 */
    class C11761 extends Subscriber<U> {
        final /* synthetic */ Subscriber val$child;

        C11761(Subscriber subscriber) {
            this.val$child = subscriber;
        }

        public void onCompleted() {
            OnSubscribeDelaySubscriptionWithSelector.this.source.unsafeSubscribe(Subscribers.wrap(this.val$child));
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(U u) {
        }
    }

    public OnSubscribeDelaySubscriptionWithSelector(Observable<? extends T> observable, Func0<? extends Observable<U>> func0) {
        this.source = observable;
        this.subscriptionDelay = func0;
    }

    public void call(Subscriber<? super T> subscriber) {
        try {
            ((Observable) this.subscriptionDelay.call()).take(1).unsafeSubscribe(new C11761(subscriber));
        } catch (Throwable th) {
            subscriber.onError(th);
        }
    }
}
