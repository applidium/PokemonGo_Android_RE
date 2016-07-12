package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;

public class OperatorSubscribeOn<T> implements Operator<T, Observable<T>> {
    private final Scheduler scheduler;

    /* renamed from: rx.internal.operators.OperatorSubscribeOn.1 */
    class C12991 extends Subscriber<Observable<T>> {
        final /* synthetic */ Worker val$inner;
        final /* synthetic */ Subscriber val$subscriber;

        /* renamed from: rx.internal.operators.OperatorSubscribeOn.1.1 */
        class C12981 implements Action0 {
            final /* synthetic */ Observable val$o;

            /* renamed from: rx.internal.operators.OperatorSubscribeOn.1.1.1 */
            class C12971 extends Subscriber<T> {
                final /* synthetic */ Thread val$t;

                /* renamed from: rx.internal.operators.OperatorSubscribeOn.1.1.1.1 */
                class C12961 implements Producer {
                    final /* synthetic */ Producer val$producer;

                    /* renamed from: rx.internal.operators.OperatorSubscribeOn.1.1.1.1.1 */
                    class C12951 implements Action0 {
                        final /* synthetic */ long val$n;

                        C12951(long j) {
                            this.val$n = j;
                        }

                        public void call() {
                            C12961.this.val$producer.request(this.val$n);
                        }
                    }

                    C12961(Producer producer) {
                        this.val$producer = producer;
                    }

                    public void request(long j) {
                        if (Thread.currentThread() == C12971.this.val$t) {
                            this.val$producer.request(j);
                        } else {
                            C12991.this.val$inner.schedule(new C12951(j));
                        }
                    }
                }

                C12971(Subscriber subscriber, Thread thread) {
                    this.val$t = thread;
                    super(subscriber);
                }

                public void onCompleted() {
                    C12991.this.val$subscriber.onCompleted();
                }

                public void onError(Throwable th) {
                    C12991.this.val$subscriber.onError(th);
                }

                public void onNext(T t) {
                    C12991.this.val$subscriber.onNext(t);
                }

                public void setProducer(Producer producer) {
                    C12991.this.val$subscriber.setProducer(new C12961(producer));
                }
            }

            C12981(Observable observable) {
                this.val$o = observable;
            }

            public void call() {
                this.val$o.unsafeSubscribe(new C12971(C12991.this.val$subscriber, Thread.currentThread()));
            }
        }

        C12991(Subscriber subscriber, Subscriber subscriber2, Worker worker) {
            this.val$subscriber = subscriber2;
            this.val$inner = worker;
            super(subscriber);
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
            this.val$subscriber.onError(th);
        }

        public void onNext(Observable<T> observable) {
            this.val$inner.schedule(new C12981(observable));
        }
    }

    public OperatorSubscribeOn(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public Subscriber<? super Observable<T>> call(Subscriber<? super T> subscriber) {
        Object createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        return new C12991(subscriber, subscriber, createWorker);
    }
}
