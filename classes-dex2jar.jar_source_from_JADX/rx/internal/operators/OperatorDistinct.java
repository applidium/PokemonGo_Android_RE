package rx.internal.operators;

import java.util.HashSet;
import java.util.Set;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Func1;
import rx.internal.util.UtilityFunctions;

public final class OperatorDistinct<T, U> implements Operator<T, T> {
    final Func1<? super T, ? extends U> keySelector;

    /* renamed from: rx.internal.operators.OperatorDistinct.1 */
    class C12281 extends Subscriber<T> {
        Set<U> keyMemory;
        final /* synthetic */ Subscriber val$child;

        C12281(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
            this.keyMemory = new HashSet();
        }

        public void onCompleted() {
            this.keyMemory = null;
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.keyMemory = null;
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            if (this.keyMemory.add(OperatorDistinct.this.keySelector.call(t))) {
                this.val$child.onNext(t);
            } else {
                request(1);
            }
        }
    }

    private static class Holder {
        static final OperatorDistinct<?, ?> INSTANCE;

        static {
            INSTANCE = new OperatorDistinct(UtilityFunctions.identity());
        }

        private Holder() {
        }
    }

    public OperatorDistinct(Func1<? super T, ? extends U> func1) {
        this.keySelector = func1;
    }

    public static <T> OperatorDistinct<T, T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12281(subscriber, subscriber);
    }
}
