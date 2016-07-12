package rx.internal.operators;

import java.util.NoSuchElementException;
import rx.Observable;
import rx.Single.OnSubscribe;
import rx.SingleSubscriber;
import rx.Subscriber;

public class OnSubscribeSingle<T> implements OnSubscribe<T> {
    private final Observable<T> observable;

    /* renamed from: rx.internal.operators.OnSubscribeSingle.1 */
    class C11941 extends Subscriber<T> {
        private T emission;
        private boolean emittedTooMany;
        private boolean itemEmitted;
        final /* synthetic */ SingleSubscriber val$child;

        C11941(SingleSubscriber singleSubscriber) {
            this.val$child = singleSubscriber;
            this.emittedTooMany = false;
            this.itemEmitted = false;
            this.emission = null;
        }

        public void onCompleted() {
            if (!this.emittedTooMany) {
                if (this.itemEmitted) {
                    this.val$child.onSuccess(this.emission);
                } else {
                    this.val$child.onError(new NoSuchElementException("Observable emitted no items"));
                }
            }
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
            unsubscribe();
        }

        public void onNext(T t) {
            if (this.itemEmitted) {
                this.emittedTooMany = true;
                this.val$child.onError(new IllegalArgumentException("Observable emitted too many elements"));
                unsubscribe();
                return;
            }
            this.itemEmitted = true;
            this.emission = t;
        }

        public void onStart() {
            request(2);
        }
    }

    public OnSubscribeSingle(Observable<T> observable) {
        this.observable = observable;
    }

    public static <T> OnSubscribeSingle<T> create(Observable<T> observable) {
        return new OnSubscribeSingle(observable);
    }

    public void call(SingleSubscriber<? super T> singleSubscriber) {
        Object c11941 = new C11941(singleSubscriber);
        singleSubscriber.add(c11941);
        this.observable.unsafeSubscribe(c11941);
    }
}
