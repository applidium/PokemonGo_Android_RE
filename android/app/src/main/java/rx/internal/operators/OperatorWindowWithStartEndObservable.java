package rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Subscriber;
import rx.functions.Func1;
import rx.observers.SerializedObserver;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.CompositeSubscription;

public final class OperatorWindowWithStartEndObservable<T, U, V> implements Operator<Observable<T>, T> {
    final Func1<? super U, ? extends Observable<? extends V>> windowClosingSelector;
    final Observable<? extends U> windowOpenings;

    /* renamed from: rx.internal.operators.OperatorWindowWithStartEndObservable.1 */
    class C13361 extends Subscriber<U> {
        final /* synthetic */ SourceSubscriber val$sub;

        C13361(SourceSubscriber sourceSubscriber) {
            this.val$sub = sourceSubscriber;
        }

        public void onCompleted() {
            this.val$sub.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$sub.onError(th);
        }

        public void onNext(U u) {
            this.val$sub.beginWindow(u);
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    static final class SerializedSubject<T> {
        final Observer<T> consumer;
        final Observable<T> producer;

        public SerializedSubject(Observer<T> observer, Observable<T> observable) {
            this.consumer = new SerializedObserver(observer);
            this.producer = observable;
        }
    }

    final class SourceSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        final List<SerializedSubject<T>> chunks;
        final CompositeSubscription csub;
        boolean done;
        final Object guard;

        /* renamed from: rx.internal.operators.OperatorWindowWithStartEndObservable.SourceSubscriber.1 */
        class C13371 extends Subscriber<V> {
            boolean once;
            final /* synthetic */ SerializedSubject val$s;

            C13371(SerializedSubject serializedSubject) {
                this.val$s = serializedSubject;
                this.once = true;
            }

            public void onCompleted() {
                if (this.once) {
                    this.once = false;
                    SourceSubscriber.this.endWindow(this.val$s);
                    SourceSubscriber.this.csub.remove(this);
                }
            }

            public void onError(Throwable th) {
            }

            public void onNext(V v) {
                onCompleted();
            }
        }

        public SourceSubscriber(Subscriber<? super Observable<T>> subscriber, CompositeSubscription compositeSubscription) {
            this.child = new SerializedSubscriber(subscriber);
            this.guard = new Object();
            this.chunks = new LinkedList();
            this.csub = compositeSubscription;
        }

        void beginWindow(U u) {
            SerializedSubject createSerializedSubject = createSerializedSubject();
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.chunks.add(createSerializedSubject);
                this.child.onNext(createSerializedSubject.producer);
                try {
                    Observable observable = (Observable) OperatorWindowWithStartEndObservable.this.windowClosingSelector.call(u);
                    Object c13371 = new C13371(createSerializedSubject);
                    this.csub.add(c13371);
                    observable.unsafeSubscribe(c13371);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        SerializedSubject<T> createSerializedSubject() {
            Object create = BufferUntilSubscriber.create();
            return new SerializedSubject(create, create);
        }

        void endWindow(SerializedSubject<T> serializedSubject) {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                Object obj;
                Iterator it = this.chunks.iterator();
                while (it.hasNext()) {
                    if (((SerializedSubject) it.next()) == serializedSubject) {
                        obj = 1;
                        it.remove();
                        break;
                    }
                }
                obj = null;
                if (obj != null) {
                    serializedSubject.consumer.onCompleted();
                }
            }
        }

        public void onCompleted() {
            try {
                synchronized (this.guard) {
                    if (this.done) {
                        this.csub.unsubscribe();
                        return;
                    }
                    this.done = true;
                    List<SerializedSubject> arrayList = new ArrayList(this.chunks);
                    this.chunks.clear();
                    for (SerializedSubject serializedSubject : arrayList) {
                        serializedSubject.consumer.onCompleted();
                    }
                    this.child.onCompleted();
                    this.csub.unsubscribe();
                }
            } catch (Throwable th) {
                this.csub.unsubscribe();
            }
        }

        public void onError(Throwable th) {
            try {
                synchronized (this.guard) {
                    if (this.done) {
                        this.csub.unsubscribe();
                        return;
                    }
                    this.done = true;
                    List<SerializedSubject> arrayList = new ArrayList(this.chunks);
                    this.chunks.clear();
                    for (SerializedSubject serializedSubject : arrayList) {
                        serializedSubject.consumer.onError(th);
                    }
                    this.child.onError(th);
                    this.csub.unsubscribe();
                }
            } catch (Throwable th2) {
                this.csub.unsubscribe();
            }
        }

        public void onNext(T t) {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                List<SerializedSubject> arrayList = new ArrayList(this.chunks);
                for (SerializedSubject serializedSubject : arrayList) {
                    serializedSubject.consumer.onNext(t);
                }
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public OperatorWindowWithStartEndObservable(Observable<? extends U> observable, Func1<? super U, ? extends Observable<? extends V>> func1) {
        this.windowOpenings = observable;
        this.windowClosingSelector = func1;
    }

    public Subscriber<? super T> call(Subscriber<? super Observable<T>> subscriber) {
        CompositeSubscription compositeSubscription = new CompositeSubscription();
        subscriber.add(compositeSubscription);
        Object sourceSubscriber = new SourceSubscriber(subscriber, compositeSubscription);
        Object c13361 = new C13361(sourceSubscriber);
        compositeSubscription.add(sourceSubscriber);
        compositeSubscription.add(c13361);
        this.windowOpenings.unsafeSubscribe(c13361);
        return sourceSubscriber;
    }
}
