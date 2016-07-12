package rx.internal.operators;

import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public final class OperatorSkip<T> implements Operator<T, T> {
    final int toSkip;

    /* renamed from: rx.internal.operators.OperatorSkip.1 */
    class C12861 extends Subscriber<T> {
        int skipped;
        final /* synthetic */ Subscriber val$child;

        C12861(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
            this.skipped = 0;
        }

        public void onCompleted() {
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            if (this.skipped >= OperatorSkip.this.toSkip) {
                this.val$child.onNext(t);
            } else {
                this.skipped++;
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(producer);
            producer.request((long) OperatorSkip.this.toSkip);
        }
    }

    public OperatorSkip(int i) {
        this.toSkip = i;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12861(subscriber, subscriber);
    }
}
