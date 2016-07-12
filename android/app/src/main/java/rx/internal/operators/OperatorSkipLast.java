package rx.internal.operators;

import java.util.ArrayDeque;
import java.util.Deque;
import rx.Observable.Operator;
import rx.Subscriber;

public class OperatorSkipLast<T> implements Operator<T, T> {
    private final int count;

    /* renamed from: rx.internal.operators.OperatorSkipLast.1 */
    class C12871 extends Subscriber<T> {
        private final Deque<Object> deque;
        private final NotificationLite<T> on;
        final /* synthetic */ Subscriber val$subscriber;

        C12871(Subscriber subscriber, Subscriber subscriber2) {
            this.val$subscriber = subscriber2;
            super(subscriber);
            this.on = NotificationLite.instance();
            this.deque = new ArrayDeque();
        }

        public void onCompleted() {
            this.val$subscriber.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            if (OperatorSkipLast.this.count == 0) {
                this.val$subscriber.onNext(t);
                return;
            }
            if (this.deque.size() == OperatorSkipLast.this.count) {
                this.val$subscriber.onNext(this.on.getValue(this.deque.removeFirst()));
            } else {
                request(1);
            }
            this.deque.offerLast(this.on.next(t));
        }
    }

    public OperatorSkipLast(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count could not be negative");
        }
        this.count = i;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12871(subscriber, subscriber);
    }
}
