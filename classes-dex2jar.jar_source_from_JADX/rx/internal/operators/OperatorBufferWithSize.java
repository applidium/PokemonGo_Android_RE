package rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;

public final class OperatorBufferWithSize<T> implements Operator<List<T>, T> {
    final int count;
    final int skip;

    /* renamed from: rx.internal.operators.OperatorBufferWithSize.1 */
    class C12051 extends Subscriber<T> {
        List<T> buffer;
        final /* synthetic */ Subscriber val$child;

        /* renamed from: rx.internal.operators.OperatorBufferWithSize.1.1 */
        class C12041 implements Producer {
            private volatile boolean infinite;
            final /* synthetic */ Producer val$producer;

            C12041(Producer producer) {
                this.val$producer = producer;
                this.infinite = false;
            }

            public void request(long j) {
                if (!this.infinite) {
                    if (j >= Long.MAX_VALUE / ((long) OperatorBufferWithSize.this.count)) {
                        this.infinite = true;
                        this.val$producer.request(Long.MAX_VALUE);
                        return;
                    }
                    this.val$producer.request(((long) OperatorBufferWithSize.this.count) * j);
                }
            }
        }

        C12051(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            List list = this.buffer;
            this.buffer = null;
            if (list != null) {
                try {
                    this.val$child.onNext(list);
                } catch (Throwable th) {
                    onError(th);
                    return;
                }
            }
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.buffer = null;
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            if (this.buffer == null) {
                this.buffer = new ArrayList(OperatorBufferWithSize.this.count);
            }
            this.buffer.add(t);
            if (this.buffer.size() == OperatorBufferWithSize.this.count) {
                List list = this.buffer;
                this.buffer = null;
                this.val$child.onNext(list);
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new C12041(producer));
        }
    }

    /* renamed from: rx.internal.operators.OperatorBufferWithSize.2 */
    class C12072 extends Subscriber<T> {
        final List<List<T>> chunks;
        int index;
        final /* synthetic */ Subscriber val$child;

        /* renamed from: rx.internal.operators.OperatorBufferWithSize.2.1 */
        class C12061 implements Producer {
            private volatile boolean firstRequest;
            private volatile boolean infinite;
            final /* synthetic */ Producer val$producer;

            C12061(Producer producer) {
                this.val$producer = producer;
                this.firstRequest = true;
                this.infinite = false;
            }

            private void requestInfinite() {
                this.infinite = true;
                this.val$producer.request(Long.MAX_VALUE);
            }

            public void request(long j) {
                if (j != 0) {
                    if (j < 0) {
                        throw new IllegalArgumentException("request a negative number: " + j);
                    } else if (!this.infinite) {
                        if (j == Long.MAX_VALUE) {
                            requestInfinite();
                        } else if (this.firstRequest) {
                            this.firstRequest = false;
                            if (j - 1 >= (Long.MAX_VALUE - ((long) OperatorBufferWithSize.this.count)) / ((long) OperatorBufferWithSize.this.skip)) {
                                requestInfinite();
                            } else {
                                this.val$producer.request(((long) OperatorBufferWithSize.this.count) + (((long) OperatorBufferWithSize.this.skip) * (j - 1)));
                            }
                        } else if (j >= Long.MAX_VALUE / ((long) OperatorBufferWithSize.this.skip)) {
                            requestInfinite();
                        } else {
                            this.val$producer.request(((long) OperatorBufferWithSize.this.skip) * j);
                        }
                    }
                }
            }
        }

        C12072(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
            this.chunks = new LinkedList();
        }

        public void onCompleted() {
            try {
                for (List onNext : this.chunks) {
                    this.val$child.onNext(onNext);
                }
                this.val$child.onCompleted();
            } catch (Throwable th) {
                onError(th);
            } finally {
                this.chunks.clear();
            }
        }

        public void onError(Throwable th) {
            this.chunks.clear();
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            int i = this.index;
            this.index = i + 1;
            if (i % OperatorBufferWithSize.this.skip == 0) {
                this.chunks.add(new ArrayList(OperatorBufferWithSize.this.count));
            }
            Iterator it = this.chunks.iterator();
            while (it.hasNext()) {
                List list = (List) it.next();
                list.add(t);
                if (list.size() == OperatorBufferWithSize.this.count) {
                    it.remove();
                    this.val$child.onNext(list);
                }
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new C12061(producer));
        }
    }

    public OperatorBufferWithSize(int i, int i2) {
        if (i <= 0) {
            throw new IllegalArgumentException("count must be greater than 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("skip must be greater than 0");
        } else {
            this.count = i;
            this.skip = i2;
        }
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        return this.count == this.skip ? new C12051(subscriber, subscriber) : new C12072(subscriber, subscriber);
    }
}
