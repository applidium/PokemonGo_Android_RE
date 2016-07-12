package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.functions.Action1;

public class OperatorOnBackpressureDrop<T> implements Operator<T, T> {
    private final Action1<? super T> onDrop;

    /* renamed from: rx.internal.operators.OperatorOnBackpressureDrop.1 */
    class C12561 implements Producer {
        final /* synthetic */ AtomicLong val$requested;

        C12561(AtomicLong atomicLong) {
            this.val$requested = atomicLong;
        }

        public void request(long j) {
            BackpressureUtils.getAndAddRequest(this.val$requested, j);
        }
    }

    /* renamed from: rx.internal.operators.OperatorOnBackpressureDrop.2 */
    class C12572 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ AtomicLong val$requested;

        C12572(Subscriber subscriber, Subscriber subscriber2, AtomicLong atomicLong) {
            this.val$child = subscriber2;
            this.val$requested = atomicLong;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            if (this.val$requested.get() > 0) {
                this.val$child.onNext(t);
                this.val$requested.decrementAndGet();
            } else if (OperatorOnBackpressureDrop.this.onDrop != null) {
                OperatorOnBackpressureDrop.this.onDrop.call(t);
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    private static final class Holder {
        static final OperatorOnBackpressureDrop<Object> INSTANCE;

        static {
            INSTANCE = new OperatorOnBackpressureDrop();
        }

        private Holder() {
        }
    }

    private OperatorOnBackpressureDrop() {
        this(null);
    }

    public OperatorOnBackpressureDrop(Action1<? super T> action1) {
        this.onDrop = action1;
    }

    public static <T> OperatorOnBackpressureDrop<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        AtomicLong atomicLong = new AtomicLong();
        subscriber.setProducer(new C12561(atomicLong));
        return new C12572(subscriber, subscriber, atomicLong);
    }
}
