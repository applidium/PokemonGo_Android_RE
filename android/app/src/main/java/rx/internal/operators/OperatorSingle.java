package rx.internal.operators;

import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public final class OperatorSingle<T> implements Operator<T, T> {
    private final T defaultValue;
    private final boolean hasDefaultValue;

    /* renamed from: rx.internal.operators.OperatorSingle.1 */
    class C12851 implements Producer {
        private final AtomicBoolean requestedTwo;
        final /* synthetic */ ParentSubscriber val$parent;

        C12851(ParentSubscriber parentSubscriber) {
            this.val$parent = parentSubscriber;
            this.requestedTwo = new AtomicBoolean(false);
        }

        public void request(long j) {
            if (j > 0 && this.requestedTwo.compareAndSet(false, true)) {
                this.val$parent.requestMore(2);
            }
        }
    }

    private static class Holder {
        static final OperatorSingle<?> INSTANCE;

        static {
            INSTANCE = new OperatorSingle();
        }

        private Holder() {
        }
    }

    private static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Subscriber<? super T> child;
        private final T defaultValue;
        private final boolean hasDefaultValue;
        private boolean hasTooManyElements;
        private boolean isNonEmpty;
        private T value;

        ParentSubscriber(Subscriber<? super T> subscriber, boolean z, T t) {
            this.isNonEmpty = false;
            this.hasTooManyElements = false;
            this.child = subscriber;
            this.hasDefaultValue = z;
            this.defaultValue = t;
        }

        public void onCompleted() {
            if (!this.hasTooManyElements) {
                if (this.isNonEmpty) {
                    this.child.onNext(this.value);
                    this.child.onCompleted();
                } else if (this.hasDefaultValue) {
                    this.child.onNext(this.defaultValue);
                    this.child.onCompleted();
                } else {
                    this.child.onError(new NoSuchElementException("Sequence contains no elements"));
                }
            }
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(T t) {
            if (this.isNonEmpty) {
                this.hasTooManyElements = true;
                this.child.onError(new IllegalArgumentException("Sequence contains too many elements"));
                unsubscribe();
                return;
            }
            this.value = t;
            this.isNonEmpty = true;
        }

        void requestMore(long j) {
            request(j);
        }
    }

    private OperatorSingle() {
        this(false, null);
    }

    public OperatorSingle(T t) {
        this(true, t);
    }

    private OperatorSingle(boolean z, T t) {
        this.hasDefaultValue = z;
        this.defaultValue = t;
    }

    public static <T> OperatorSingle<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object parentSubscriber = new ParentSubscriber(subscriber, this.hasDefaultValue, this.defaultValue);
        subscriber.setProducer(new C12851(parentSubscriber));
        subscriber.add(parentSubscriber);
        return parentSubscriber;
    }
}
