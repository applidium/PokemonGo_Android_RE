package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.internal.producers.ProducerArbiter;
import rx.subscriptions.SerialSubscription;

public final class OperatorSwitchIfEmpty<T> implements Operator<T, T> {
    private final Observable<? extends T> alternate;

    private static final class AlternateSubscriber<T> extends Subscriber<T> {
        private final ProducerArbiter arbiter;
        private final Subscriber<? super T> child;

        AlternateSubscriber(Subscriber<? super T> subscriber, ProducerArbiter producerArbiter) {
            this.child = subscriber;
            this.arbiter = producerArbiter;
        }

        public void onCompleted() {
            this.child.onCompleted();
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(T t) {
            this.child.onNext(t);
            this.arbiter.produced(1);
        }

        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }
    }

    private static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Observable<? extends T> alternate;
        private final ProducerArbiter arbiter;
        private final Subscriber<? super T> child;
        private boolean empty;
        private final SerialSubscription ssub;

        ParentSubscriber(Subscriber<? super T> subscriber, SerialSubscription serialSubscription, ProducerArbiter producerArbiter, Observable<? extends T> observable) {
            this.empty = true;
            this.child = subscriber;
            this.ssub = serialSubscription;
            this.arbiter = producerArbiter;
            this.alternate = observable;
        }

        private void subscribeToAlternate() {
            Object alternateSubscriber = new AlternateSubscriber(this.child, this.arbiter);
            this.ssub.set(alternateSubscriber);
            this.alternate.unsafeSubscribe(alternateSubscriber);
        }

        public void onCompleted() {
            if (!this.empty) {
                this.child.onCompleted();
            } else if (!this.child.isUnsubscribed()) {
                subscribeToAlternate();
            }
        }

        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(T t) {
            this.empty = false;
            this.child.onNext(t);
            this.arbiter.produced(1);
        }

        public void setProducer(Producer producer) {
            this.arbiter.setProducer(producer);
        }
    }

    public OperatorSwitchIfEmpty(Observable<? extends T> observable) {
        this.alternate = observable;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscription serialSubscription = new SerialSubscription();
        Producer producerArbiter = new ProducerArbiter();
        Object parentSubscriber = new ParentSubscriber(subscriber, serialSubscription, producerArbiter, this.alternate);
        serialSubscription.set(parentSubscriber);
        subscriber.add(serialSubscription);
        subscriber.setProducer(producerArbiter);
        return parentSubscriber;
    }
}
