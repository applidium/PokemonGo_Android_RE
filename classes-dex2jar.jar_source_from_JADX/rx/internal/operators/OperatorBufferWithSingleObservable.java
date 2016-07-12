package rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Func0;
import rx.observers.SerializedSubscriber;
import rx.observers.Subscribers;

public final class OperatorBufferWithSingleObservable<T, TClosing> implements Operator<List<T>, T> {
    final Func0<? extends Observable<? extends TClosing>> bufferClosingSelector;
    final int initialCapacity;

    /* renamed from: rx.internal.operators.OperatorBufferWithSingleObservable.1 */
    class C12021 implements Func0<Observable<? extends TClosing>> {
        final /* synthetic */ Observable val$bufferClosing;

        C12021(Observable observable) {
            this.val$bufferClosing = observable;
        }

        public Observable<? extends TClosing> call() {
            return this.val$bufferClosing;
        }
    }

    /* renamed from: rx.internal.operators.OperatorBufferWithSingleObservable.2 */
    class C12032 extends Subscriber<TClosing> {
        final /* synthetic */ BufferingSubscriber val$bsub;

        C12032(BufferingSubscriber bufferingSubscriber) {
            this.val$bsub = bufferingSubscriber;
        }

        public void onCompleted() {
            this.val$bsub.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$bsub.onError(th);
        }

        public void onNext(TClosing tClosing) {
            this.val$bsub.emit();
        }
    }

    final class BufferingSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        List<T> chunk;
        boolean done;

        public BufferingSubscriber(Subscriber<? super List<T>> subscriber) {
            this.child = subscriber;
            this.chunk = new ArrayList(OperatorBufferWithSingleObservable.this.initialCapacity);
        }

        void emit() {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                List list = this.chunk;
                this.chunk = new ArrayList(OperatorBufferWithSingleObservable.this.initialCapacity);
                try {
                    this.child.onNext(list);
                } catch (Throwable th) {
                    unsubscribe();
                    synchronized (this) {
                    }
                    if (!this.done) {
                        this.done = true;
                        this.child.onError(th);
                    }
                }
            }
        }

        public void onCompleted() {
            try {
                synchronized (this) {
                    if (this.done) {
                        return;
                    }
                    this.done = true;
                    List list = this.chunk;
                    this.chunk = null;
                    this.child.onNext(list);
                    this.child.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                this.child.onError(th);
            }
        }

        public void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunk = null;
                this.child.onError(th);
                unsubscribe();
            }
        }

        public void onNext(T t) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunk.add(t);
            }
        }
    }

    public OperatorBufferWithSingleObservable(Observable<? extends TClosing> observable, int i) {
        this.bufferClosingSelector = new C12021(observable);
        this.initialCapacity = i;
    }

    public OperatorBufferWithSingleObservable(Func0<? extends Observable<? extends TClosing>> func0, int i) {
        this.bufferClosingSelector = func0;
        this.initialCapacity = i;
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        try {
            Observable observable = (Observable) this.bufferClosingSelector.call();
            Subscription bufferingSubscriber = new BufferingSubscriber(new SerializedSubscriber(subscriber));
            Object c12032 = new C12032(bufferingSubscriber);
            subscriber.add(c12032);
            subscriber.add(bufferingSubscriber);
            observable.unsafeSubscribe(c12032);
            return bufferingSubscriber;
        } catch (Throwable th) {
            subscriber.onError(th);
            return Subscribers.empty();
        }
    }
}
