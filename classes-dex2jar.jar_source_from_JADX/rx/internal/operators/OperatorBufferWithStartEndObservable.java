package rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Func1;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.CompositeSubscription;

public final class OperatorBufferWithStartEndObservable<T, TOpening, TClosing> implements Operator<List<T>, T> {
    final Func1<? super TOpening, ? extends Observable<? extends TClosing>> bufferClosing;
    final Observable<? extends TOpening> bufferOpening;

    /* renamed from: rx.internal.operators.OperatorBufferWithStartEndObservable.1 */
    class C12081 extends Subscriber<TOpening> {
        final /* synthetic */ BufferingSubscriber val$bsub;

        C12081(BufferingSubscriber bufferingSubscriber) {
            this.val$bsub = bufferingSubscriber;
        }

        public void onCompleted() {
            this.val$bsub.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$bsub.onError(th);
        }

        public void onNext(TOpening tOpening) {
            this.val$bsub.startBuffer(tOpening);
        }
    }

    final class BufferingSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        final List<List<T>> chunks;
        final CompositeSubscription closingSubscriptions;
        boolean done;

        /* renamed from: rx.internal.operators.OperatorBufferWithStartEndObservable.BufferingSubscriber.1 */
        class C12091 extends Subscriber<TClosing> {
            final /* synthetic */ List val$chunk;

            C12091(List list) {
                this.val$chunk = list;
            }

            public void onCompleted() {
                BufferingSubscriber.this.closingSubscriptions.remove(this);
                BufferingSubscriber.this.endBuffer(this.val$chunk);
            }

            public void onError(Throwable th) {
                BufferingSubscriber.this.onError(th);
            }

            public void onNext(TClosing tClosing) {
                BufferingSubscriber.this.closingSubscriptions.remove(this);
                BufferingSubscriber.this.endBuffer(this.val$chunk);
            }
        }

        public BufferingSubscriber(Subscriber<? super List<T>> subscriber) {
            this.child = subscriber;
            this.chunks = new LinkedList();
            this.closingSubscriptions = new CompositeSubscription();
            add(this.closingSubscriptions);
        }

        void endBuffer(List<T> list) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                Object obj;
                Iterator it = this.chunks.iterator();
                while (it.hasNext()) {
                    if (((List) it.next()) == list) {
                        obj = 1;
                        it.remove();
                        break;
                    }
                }
                obj = null;
                if (obj != null) {
                    this.child.onNext(list);
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
                    List<List> linkedList = new LinkedList(this.chunks);
                    this.chunks.clear();
                    for (List onNext : linkedList) {
                        this.child.onNext(onNext);
                    }
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
                this.chunks.clear();
                this.child.onError(th);
                unsubscribe();
            }
        }

        public void onNext(T t) {
            synchronized (this) {
                for (List add : this.chunks) {
                    add.add(t);
                }
            }
        }

        void startBuffer(TOpening tOpening) {
            List arrayList = new ArrayList();
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunks.add(arrayList);
                try {
                    Observable observable = (Observable) OperatorBufferWithStartEndObservable.this.bufferClosing.call(tOpening);
                    Object c12091 = new C12091(arrayList);
                    this.closingSubscriptions.add(c12091);
                    observable.unsafeSubscribe(c12091);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }
    }

    public OperatorBufferWithStartEndObservable(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        this.bufferOpening = observable;
        this.bufferClosing = func1;
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        Object bufferingSubscriber = new BufferingSubscriber(new SerializedSubscriber(subscriber));
        Object c12081 = new C12081(bufferingSubscriber);
        subscriber.add(c12081);
        subscriber.add(bufferingSubscriber);
        this.bufferOpening.unsafeSubscribe(c12081);
        return bufferingSubscriber;
    }
}
