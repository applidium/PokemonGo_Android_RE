package rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public class OperatorTakeLastOne<T> implements Operator<T, T> {

    /* renamed from: rx.internal.operators.OperatorTakeLastOne.1 */
    class C13051 implements Producer {
        final /* synthetic */ ParentSubscriber val$parent;

        C13051(ParentSubscriber parentSubscriber) {
            this.val$parent = parentSubscriber;
        }

        public void request(long j) {
            this.val$parent.requestMore(j);
        }
    }

    private static class Holder {
        static final OperatorTakeLastOne<Object> INSTANCE;

        static {
            INSTANCE = new OperatorTakeLastOne();
        }

        private Holder() {
        }
    }

    private static class ParentSubscriber<T> extends Subscriber<T> {
        private static final Object ABSENT;
        private static final int NOT_REQUESTED_COMPLETED = 1;
        private static final int NOT_REQUESTED_NOT_COMPLETED = 0;
        private static final int REQUESTED_COMPLETED = 3;
        private static final int REQUESTED_NOT_COMPLETED = 2;
        private final Subscriber<? super T> child;
        private T last;
        private final AtomicInteger state;

        static {
            ABSENT = new Object();
        }

        ParentSubscriber(Subscriber<? super T> subscriber) {
            this.last = ABSENT;
            this.state = new AtomicInteger(NOT_REQUESTED_NOT_COMPLETED);
            this.child = subscriber;
        }

        private void emit() {
            if (isUnsubscribed()) {
                this.last = null;
                return;
            }
            Object obj = this.last;
            this.last = null;
            if (obj != ABSENT) {
                try {
                    this.child.onNext(obj);
                } catch (Throwable th) {
                    this.child.onError(th);
                    return;
                }
            }
            if (!isUnsubscribed()) {
                this.child.onCompleted();
            }
        }

        public void onCompleted() {
            if (this.last == ABSENT) {
                this.child.onCompleted();
                return;
            }
            while (true) {
                int i = this.state.get();
                if (i == 0) {
                    if (this.state.compareAndSet(NOT_REQUESTED_NOT_COMPLETED, NOT_REQUESTED_COMPLETED)) {
                        return;
                    }
                } else if (i != REQUESTED_NOT_COMPLETED) {
                    return;
                } else {
                    if (this.state.compareAndSet(REQUESTED_NOT_COMPLETED, REQUESTED_COMPLETED)) {
                        emit();
                        return;
                    }
                }
            }
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(T t) {
            this.last = t;
        }

        void requestMore(long j) {
            if (j > 0) {
                while (true) {
                    int i = this.state.get();
                    if (i == 0) {
                        if (this.state.compareAndSet(NOT_REQUESTED_NOT_COMPLETED, REQUESTED_NOT_COMPLETED)) {
                            return;
                        }
                    } else if (i != NOT_REQUESTED_COMPLETED) {
                        return;
                    } else {
                        if (this.state.compareAndSet(NOT_REQUESTED_COMPLETED, REQUESTED_COMPLETED)) {
                            emit();
                            return;
                        }
                    }
                }
            }
        }
    }

    private OperatorTakeLastOne() {
    }

    public static <T> OperatorTakeLastOne<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object parentSubscriber = new ParentSubscriber(subscriber);
        subscriber.setProducer(new C13051(parentSubscriber));
        subscriber.add(parentSubscriber);
        return parentSubscriber;
    }
}
