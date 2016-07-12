package rx.internal.operators;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.Observable;
import rx.Observable.Operator;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;
import rx.functions.Func2;
import rx.schedulers.Schedulers;
import rx.subscriptions.SerialSubscription;

public final class OperatorRetryWithPredicate<T> implements Operator<T, Observable<T>> {
    final Func2<Integer, Throwable, Boolean> predicate;

    static final class SourceSubscriber<T> extends Subscriber<Observable<T>> {
        static final AtomicIntegerFieldUpdater<SourceSubscriber> ATTEMPTS_UPDATER;
        volatile int attempts;
        final Subscriber<? super T> child;
        final Worker inner;
        final Func2<Integer, Throwable, Boolean> predicate;
        final SerialSubscription serialSubscription;

        /* renamed from: rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.1 */
        class C12761 implements Action0 {
            final /* synthetic */ Observable val$o;

            /* renamed from: rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.1.1 */
            class C12751 extends Subscriber<T> {
                boolean done;
                final /* synthetic */ Action0 val$_self;

                C12751(Action0 action0) {
                    this.val$_self = action0;
                }

                public void onCompleted() {
                    if (!this.done) {
                        this.done = true;
                        SourceSubscriber.this.child.onCompleted();
                    }
                }

                public void onError(Throwable th) {
                    if (!this.done) {
                        this.done = true;
                        if (!((Boolean) SourceSubscriber.this.predicate.call(Integer.valueOf(SourceSubscriber.this.attempts), th)).booleanValue() || SourceSubscriber.this.inner.isUnsubscribed()) {
                            SourceSubscriber.this.child.onError(th);
                        } else {
                            SourceSubscriber.this.inner.schedule(this.val$_self);
                        }
                    }
                }

                public void onNext(T t) {
                    if (!this.done) {
                        SourceSubscriber.this.child.onNext(t);
                    }
                }
            }

            C12761(Observable observable) {
                this.val$o = observable;
            }

            public void call() {
                SourceSubscriber.ATTEMPTS_UPDATER.incrementAndGet(SourceSubscriber.this);
                Object c12751 = new C12751(this);
                SourceSubscriber.this.serialSubscription.set(c12751);
                this.val$o.unsafeSubscribe(c12751);
            }
        }

        static {
            ATTEMPTS_UPDATER = AtomicIntegerFieldUpdater.newUpdater(SourceSubscriber.class, "attempts");
        }

        public SourceSubscriber(Subscriber<? super T> subscriber, Func2<Integer, Throwable, Boolean> func2, Worker worker, SerialSubscription serialSubscription) {
            this.child = subscriber;
            this.predicate = func2;
            this.inner = worker;
            this.serialSubscription = serialSubscription;
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(Observable<T> observable) {
            this.inner.schedule(new C12761(observable));
        }
    }

    public OperatorRetryWithPredicate(Func2<Integer, Throwable, Boolean> func2) {
        this.predicate = func2;
    }

    public Subscriber<? super Observable<T>> call(Subscriber<? super T> subscriber) {
        Object createWorker = Schedulers.trampoline().createWorker();
        subscriber.add(createWorker);
        Object serialSubscription = new SerialSubscription();
        subscriber.add(serialSubscription);
        return new SourceSubscriber(subscriber, this.predicate, createWorker, serialSubscription);
    }
}
