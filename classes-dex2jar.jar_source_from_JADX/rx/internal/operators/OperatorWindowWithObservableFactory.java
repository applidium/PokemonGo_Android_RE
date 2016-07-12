package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Subscriber;
import rx.functions.Func0;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

public final class OperatorWindowWithObservableFactory<T, U> implements Operator<Observable<T>, T> {
    static final Object NEXT_SUBJECT;
    static final NotificationLite<Object> nl;
    final Func0<? extends Observable<? extends U>> otherFactory;

    static final class BoundarySubscriber<T, U> extends Subscriber<U> {
        boolean done;
        final SourceSubscriber<T, U> sub;

        public BoundarySubscriber(Subscriber<?> subscriber, SourceSubscriber<T, U> sourceSubscriber) {
            this.sub = sourceSubscriber;
        }

        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                this.sub.onCompleted();
            }
        }

        public void onError(Throwable th) {
            this.sub.onError(th);
        }

        public void onNext(U u) {
            if (!this.done) {
                this.done = true;
                this.sub.replaceWindow();
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    static final class SourceSubscriber<T, U> extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        Observer<T> consumer;
        boolean emitting;
        final Object guard;
        final Func0<? extends Observable<? extends U>> otherFactory;
        Observable<T> producer;
        List<Object> queue;
        final SerialSubscription ssub;

        public SourceSubscriber(Subscriber<? super Observable<T>> subscriber, Func0<? extends Observable<? extends U>> func0) {
            this.child = new SerializedSubscriber(subscriber);
            this.guard = new Object();
            this.ssub = new SerialSubscription();
            this.otherFactory = func0;
            add(this.ssub);
        }

        void complete() {
            Observer observer = this.consumer;
            this.consumer = null;
            this.producer = null;
            if (observer != null) {
                observer.onCompleted();
            }
            this.child.onCompleted();
            unsubscribe();
        }

        void createNewWindow() {
            Object create = BufferUntilSubscriber.create();
            this.consumer = create;
            this.producer = create;
            try {
                Observable observable = (Observable) this.otherFactory.call();
                Object boundarySubscriber = new BoundarySubscriber(this.child, this);
                this.ssub.set(boundarySubscriber);
                observable.unsafeSubscribe(boundarySubscriber);
            } catch (Throwable th) {
                this.child.onError(th);
                unsubscribe();
            }
        }

        void drain(List<Object> list) {
            if (list != null) {
                for (Object next : list) {
                    if (next == OperatorWindowWithObservableFactory.NEXT_SUBJECT) {
                        replaceSubject();
                    } else if (OperatorWindowWithObservableFactory.nl.isError(next)) {
                        error(OperatorWindowWithObservableFactory.nl.getError(next));
                        return;
                    } else if (OperatorWindowWithObservableFactory.nl.isCompleted(next)) {
                        complete();
                        return;
                    } else {
                        emitValue(next);
                    }
                }
            }
        }

        void emitValue(T t) {
            Observer observer = this.consumer;
            if (observer != null) {
                observer.onNext(t);
            }
        }

        void error(Throwable th) {
            Observer observer = this.consumer;
            this.consumer = null;
            this.producer = null;
            if (observer != null) {
                observer.onError(th);
            }
            this.child.onError(th);
            unsubscribe();
        }

        public void onCompleted() {
            synchronized (this.guard) {
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(OperatorWindowWithObservableFactory.nl.completed());
                    return;
                }
                List list = this.queue;
                this.queue = null;
                this.emitting = true;
                try {
                    drain(list);
                    complete();
                } catch (Throwable th) {
                    error(th);
                }
            }
        }

        public void onError(Throwable th) {
            synchronized (this.guard) {
                if (this.emitting) {
                    this.queue = Collections.singletonList(OperatorWindowWithObservableFactory.nl.error(th));
                    return;
                }
                this.queue = null;
                this.emitting = true;
                error(th);
            }
        }

        public void onNext(T t) {
            Throwable th;
            Object obj = null;
            synchronized (this.guard) {
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(t);
                    return;
                }
                List list = this.queue;
                this.queue = null;
                this.emitting = true;
                Object obj2 = 1;
                do {
                    drain(list);
                    if (obj2 != null) {
                        emitValue(t);
                        obj2 = null;
                    }
                    synchronized (this.guard) {
                        try {
                            list = this.queue;
                            this.queue = null;
                            if (list == null) {
                                this.emitting = false;
                                try {
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                    obj = 1;
                                    throw th;
                                }
                            } else {
                                try {
                                } catch (Throwable th3) {
                                    if (obj == null) {
                                        synchronized (this.guard) {
                                        }
                                        this.emitting = false;
                                    }
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            throw th;
                        }
                    }
                } while (!this.child.isUnsubscribed());
                synchronized (this.guard) {
                    this.emitting = false;
                }
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }

        void replaceSubject() {
            Observer observer = this.consumer;
            if (observer != null) {
                observer.onCompleted();
            }
            createNewWindow();
            this.child.onNext(this.producer);
        }

        void replaceWindow() {
            Throwable th;
            Object obj = null;
            synchronized (this.guard) {
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(OperatorWindowWithObservableFactory.NEXT_SUBJECT);
                    return;
                }
                List list = this.queue;
                this.queue = null;
                this.emitting = true;
                Object obj2 = 1;
                do {
                    drain(list);
                    if (obj2 != null) {
                        replaceSubject();
                        obj2 = null;
                    }
                    synchronized (this.guard) {
                        list = this.queue;
                        this.queue = null;
                        if (list == null) {
                            this.emitting = false;
                            try {
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                obj = 1;
                                throw th;
                            }
                        } else {
                            try {
                                try {
                                } catch (Throwable th3) {
                                    if (obj == null) {
                                        synchronized (this.guard) {
                                        }
                                        this.emitting = false;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                throw th;
                            }
                        }
                    }
                } while (!this.child.isUnsubscribed());
                synchronized (this.guard) {
                    this.emitting = false;
                }
            }
        }
    }

    static {
        NEXT_SUBJECT = new Object();
        nl = NotificationLite.instance();
    }

    public OperatorWindowWithObservableFactory(Func0<? extends Observable<? extends U>> func0) {
        this.otherFactory = func0;
    }

    public Subscriber<? super T> call(Subscriber<? super Observable<T>> subscriber) {
        Subscriber<? super T> sourceSubscriber = new SourceSubscriber(subscriber, this.otherFactory);
        subscriber.add(sourceSubscriber);
        sourceSubscriber.replaceWindow();
        return sourceSubscriber;
    }
}
