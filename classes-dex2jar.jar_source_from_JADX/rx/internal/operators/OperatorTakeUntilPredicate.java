package rx.internal.operators;

import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func1;

@Experimental
public final class OperatorTakeUntilPredicate<T> implements Operator<T, T> {
    private final Func1<? super T, Boolean> stopPredicate;

    /* renamed from: rx.internal.operators.OperatorTakeUntilPredicate.1 */
    class C13091 implements Producer {
        final /* synthetic */ ParentSubscriber val$parent;

        C13091(ParentSubscriber parentSubscriber) {
            this.val$parent = parentSubscriber;
        }

        public void request(long j) {
            this.val$parent.downstreamRequest(j);
        }
    }

    private final class ParentSubscriber extends Subscriber<T> {
        private final Subscriber<? super T> child;
        private boolean done;

        private ParentSubscriber(Subscriber<? super T> subscriber) {
            this.done = false;
            this.child = subscriber;
        }

        void downstreamRequest(long j) {
            request(j);
        }

        public void onCompleted() {
            if (!this.done) {
                this.child.onCompleted();
            }
        }

        public void onError(Throwable th) {
            if (!this.done) {
                this.child.onError(th);
            }
        }

        public void onNext(T t) {
            this.child.onNext(t);
            try {
                if (((Boolean) OperatorTakeUntilPredicate.this.stopPredicate.call(t)).booleanValue()) {
                    this.done = true;
                    this.child.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                this.done = true;
                Exceptions.throwIfFatal(th);
                this.child.onError(OnErrorThrowable.addValueAsLastCause(th, t));
                unsubscribe();
            }
        }
    }

    public OperatorTakeUntilPredicate(Func1<? super T, Boolean> func1) {
        this.stopPredicate = func1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscriber<? super T> parentSubscriber = new ParentSubscriber(subscriber, null);
        subscriber.add(parentSubscriber);
        subscriber.setProducer(new C13091(parentSubscriber));
        return parentSubscriber;
    }
}
