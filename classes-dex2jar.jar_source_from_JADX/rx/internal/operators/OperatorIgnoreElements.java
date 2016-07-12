package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;

public class OperatorIgnoreElements<T> implements Operator<T, T> {

    /* renamed from: rx.internal.operators.OperatorIgnoreElements.1 */
    class C12411 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;

        C12411(Subscriber subscriber) {
            this.val$child = subscriber;
        }

        public void onCompleted() {
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
        }
    }

    private static class Holder {
        static final OperatorIgnoreElements<?> INSTANCE;

        static {
            INSTANCE = new OperatorIgnoreElements();
        }

        private Holder() {
        }
    }

    private OperatorIgnoreElements() {
    }

    public static <T> OperatorIgnoreElements<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object c12411 = new C12411(subscriber);
        subscriber.add(c12411);
        return c12411;
    }
}
