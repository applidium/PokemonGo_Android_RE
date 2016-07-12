package rx.internal.operators;

import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.functions.Action1;

public class OperatorDoOnRequest<T> implements Operator<T, T> {
    private final Action1<Long> request;

    /* renamed from: rx.internal.operators.OperatorDoOnRequest.1 */
    class C12311 implements Producer {
        final /* synthetic */ ParentSubscriber val$parent;

        C12311(ParentSubscriber parentSubscriber) {
            this.val$parent = parentSubscriber;
        }

        public void request(long j) {
            OperatorDoOnRequest.this.request.call(Long.valueOf(j));
            this.val$parent.requestMore(j);
        }
    }

    private static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Subscriber<? super T> child;

        private ParentSubscriber(Subscriber<? super T> subscriber) {
            this.child = subscriber;
        }

        private void requestMore(long j) {
            request(j);
        }

        public void onCompleted() {
            this.child.onCompleted();
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(T t) {
            this.child.onNext(t);
        }
    }

    public OperatorDoOnRequest(Action1<Long> action1) {
        this.request = action1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object parentSubscriber = new ParentSubscriber(null);
        subscriber.setProducer(new C12311(parentSubscriber));
        subscriber.add(parentSubscriber);
        return parentSubscriber;
    }
}
