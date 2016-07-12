package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public final class OperatorTake<T> implements Operator<T, T> {
    final int limit;

    /* renamed from: rx.internal.operators.OperatorTake.1 */
    class C13031 extends Subscriber<T> {
        boolean completed;
        int count;
        final /* synthetic */ Subscriber val$child;

        /* renamed from: rx.internal.operators.OperatorTake.1.1 */
        class C13021 implements Producer {
            final AtomicLong requested;
            final /* synthetic */ Producer val$producer;

            C13021(Producer producer) {
                this.val$producer = producer;
                this.requested = new AtomicLong(0);
            }

            public void request(long j) {
                if (j > 0 && !C13031.this.completed) {
                    long min;
                    long j2;
                    do {
                        j2 = this.requested.get();
                        min = Math.min(j, ((long) OperatorTake.this.limit) - j2);
                        if (min == 0) {
                            return;
                        }
                    } while (!this.requested.compareAndSet(j2, j2 + min));
                    this.val$producer.request(min);
                }
            }
        }

        C13031(Subscriber subscriber) {
            this.val$child = subscriber;
            this.count = 0;
            this.completed = false;
        }

        public void onCompleted() {
            if (!this.completed) {
                this.val$child.onCompleted();
            }
        }

        public void onError(Throwable th) {
            if (!this.completed) {
                this.val$child.onError(th);
            }
        }

        public void onNext(T t) {
            if (!isUnsubscribed()) {
                int i = this.count + 1;
                this.count = i;
                if (i >= OperatorTake.this.limit) {
                    this.completed = true;
                }
                this.val$child.onNext(t);
                if (this.completed) {
                    this.val$child.onCompleted();
                    unsubscribe();
                }
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new C13021(producer));
        }
    }

    public OperatorTake(int i) {
        this.limit = i;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object c13031 = new C13031(subscriber);
        if (this.limit == 0) {
            subscriber.onCompleted();
            c13031.unsubscribe();
        }
        subscriber.add(c13031);
        return c13031;
    }
}
