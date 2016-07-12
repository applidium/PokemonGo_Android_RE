package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public final class OperatorElementAt<T> implements Operator<T, T> {
    private final T defaultValue;
    private final boolean hasDefault;
    private final int index;

    /* renamed from: rx.internal.operators.OperatorElementAt.1 */
    class C12321 extends Subscriber<T> {
        private int currentIndex;
        final /* synthetic */ Subscriber val$child;

        C12321(Subscriber subscriber) {
            this.val$child = subscriber;
            this.currentIndex = 0;
        }

        public void onCompleted() {
            if (this.currentIndex > OperatorElementAt.this.index) {
                return;
            }
            if (OperatorElementAt.this.hasDefault) {
                this.val$child.onNext(OperatorElementAt.this.defaultValue);
                this.val$child.onCompleted();
                return;
            }
            this.val$child.onError(new IndexOutOfBoundsException(OperatorElementAt.this.index + " is out of bounds"));
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            int i = this.currentIndex;
            this.currentIndex = i + 1;
            if (i == OperatorElementAt.this.index) {
                this.val$child.onNext(t);
                this.val$child.onCompleted();
                unsubscribe();
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new InnerProducer(producer));
        }
    }

    static class InnerProducer extends AtomicBoolean implements Producer {
        private static final long serialVersionUID = 1;
        final Producer actual;

        public InnerProducer(Producer producer) {
            this.actual = producer;
        }

        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            } else if (j > 0 && compareAndSet(false, true)) {
                this.actual.request(Long.MAX_VALUE);
            }
        }
    }

    public OperatorElementAt(int i) {
        this(i, null, false);
    }

    public OperatorElementAt(int i, T t) {
        this(i, t, true);
    }

    private OperatorElementAt(int i, T t, boolean z) {
        if (i < 0) {
            throw new IndexOutOfBoundsException(i + " is out of bounds");
        }
        this.index = i;
        this.defaultValue = t;
        this.hasDefault = z;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object c12321 = new C12321(subscriber);
        subscriber.add(c12321);
        return c12321;
    }
}
