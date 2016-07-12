package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.observers.SerializedSubscriber;

public final class OperatorSerialize<T> implements Operator<T, T> {

    /* renamed from: rx.internal.operators.OperatorSerialize.1 */
    class C12841 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$s;

        C12841(Subscriber subscriber, Subscriber subscriber2) {
            this.val$s = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$s.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$s.onError(th);
        }

        public void onNext(T t) {
            this.val$s.onNext(t);
        }
    }

    private static final class Holder {
        static final OperatorSerialize<Object> INSTANCE;

        static {
            INSTANCE = new OperatorSerialize();
        }

        private Holder() {
        }
    }

    private OperatorSerialize() {
    }

    public static <T> OperatorSerialize<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new SerializedSubscriber(new C12841(subscriber, subscriber));
    }
}
