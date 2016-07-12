package rx.internal.operators;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.observers.SerializedObserver;
import rx.observers.SerializedSubscriber;
import rx.subjects.PublishSubject;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.RefCountSubscription;

public final class OnSubscribeGroupJoin<T1, T2, D1, D2, R> implements OnSubscribe<R> {
    protected final Observable<T1> left;
    protected final Func1<? super T1, ? extends Observable<D1>> leftDuration;
    protected final Func2<? super T1, ? super Observable<T2>, ? extends R> resultSelector;
    protected final Observable<T2> right;
    protected final Func1<? super T2, ? extends Observable<D2>> rightDuration;

    final class ResultManager implements Subscription {
        final RefCountSubscription cancel;
        final CompositeSubscription group;
        final Object guard;
        boolean leftDone;
        int leftIds;
        final Map<Integer, Observer<T2>> leftMap;
        boolean rightDone;
        int rightIds;
        final Map<Integer, T2> rightMap;
        final Subscriber<? super R> subscriber;

        final class LeftDurationObserver extends Subscriber<D1> {
            final int id;
            boolean once;

            public LeftDurationObserver(int i) {
                this.once = true;
                this.id = i;
            }

            public void onCompleted() {
                if (this.once) {
                    Observer observer;
                    this.once = false;
                    synchronized (ResultManager.this.guard) {
                        observer = (Observer) ResultManager.this.leftMap.remove(Integer.valueOf(this.id));
                    }
                    if (observer != null) {
                        observer.onCompleted();
                    }
                    ResultManager.this.group.remove(this);
                }
            }

            public void onError(Throwable th) {
                ResultManager.this.errorMain(th);
            }

            public void onNext(D1 d1) {
                onCompleted();
            }
        }

        final class LeftObserver extends Subscriber<T1> {
            LeftObserver() {
            }

            public void onCompleted() {
                List list = null;
                synchronized (ResultManager.this.guard) {
                    ResultManager.this.leftDone = true;
                    if (ResultManager.this.rightDone) {
                        list = new ArrayList(ResultManager.this.leftMap.values());
                        try {
                            ResultManager.this.leftMap.clear();
                            ResultManager.this.rightMap.clear();
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            throw th2;
                        }
                    }
                    try {
                        ResultManager.this.complete(list);
                    } catch (Throwable th3) {
                        th2 = th3;
                        throw th2;
                    }
                }
            }

            public void onError(Throwable th) {
                ResultManager.this.errorAll(th);
            }

            public void onNext(T1 t1) {
                try {
                    int i;
                    Object create = PublishSubject.create();
                    Observer serializedObserver = new SerializedObserver(create);
                    synchronized (ResultManager.this.guard) {
                        ResultManager resultManager = ResultManager.this;
                        i = resultManager.leftIds;
                        resultManager.leftIds = i + 1;
                        ResultManager.this.leftMap.put(Integer.valueOf(i), serializedObserver);
                    }
                    Observable create2 = Observable.create(new WindowObservableFunc(create, ResultManager.this.cancel));
                    Observable observable = (Observable) OnSubscribeGroupJoin.this.leftDuration.call(t1);
                    Object leftDurationObserver = new LeftDurationObserver(i);
                    ResultManager.this.group.add(leftDurationObserver);
                    observable.unsafeSubscribe(leftDurationObserver);
                    create = OnSubscribeGroupJoin.this.resultSelector.call(t1, create2);
                    synchronized (ResultManager.this.guard) {
                        List<Object> arrayList = new ArrayList(ResultManager.this.rightMap.values());
                    }
                    ResultManager.this.subscriber.onNext(create);
                    for (Object onNext : arrayList) {
                        serializedObserver.onNext(onNext);
                    }
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        final class RightDurationObserver extends Subscriber<D2> {
            final int id;
            boolean once;

            public RightDurationObserver(int i) {
                this.once = true;
                this.id = i;
            }

            public void onCompleted() {
                if (this.once) {
                    this.once = false;
                    synchronized (ResultManager.this.guard) {
                        ResultManager.this.rightMap.remove(Integer.valueOf(this.id));
                    }
                    ResultManager.this.group.remove(this);
                }
            }

            public void onError(Throwable th) {
                ResultManager.this.errorMain(th);
            }

            public void onNext(D2 d2) {
                onCompleted();
            }
        }

        final class RightObserver extends Subscriber<T2> {
            RightObserver() {
            }

            public void onCompleted() {
                List list = null;
                synchronized (ResultManager.this.guard) {
                    ResultManager.this.rightDone = true;
                    if (ResultManager.this.leftDone) {
                        list = new ArrayList(ResultManager.this.leftMap.values());
                        try {
                            ResultManager.this.leftMap.clear();
                            ResultManager.this.rightMap.clear();
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            throw th2;
                        }
                    }
                    try {
                        ResultManager.this.complete(list);
                    } catch (Throwable th3) {
                        th2 = th3;
                        throw th2;
                    }
                }
            }

            public void onError(Throwable th) {
                ResultManager.this.errorAll(th);
            }

            public void onNext(T2 t2) {
                try {
                    int i;
                    synchronized (ResultManager.this.guard) {
                        ResultManager resultManager = ResultManager.this;
                        i = resultManager.rightIds;
                        resultManager.rightIds = i + 1;
                        ResultManager.this.rightMap.put(Integer.valueOf(i), t2);
                    }
                    Observable observable = (Observable) OnSubscribeGroupJoin.this.rightDuration.call(t2);
                    Object rightDurationObserver = new RightDurationObserver(i);
                    ResultManager.this.group.add(rightDurationObserver);
                    observable.unsafeSubscribe(rightDurationObserver);
                    synchronized (ResultManager.this.guard) {
                        List<Observer> arrayList = new ArrayList(ResultManager.this.leftMap.values());
                    }
                    for (Observer onNext : arrayList) {
                        onNext.onNext(t2);
                    }
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        public ResultManager(Subscriber<? super R> subscriber) {
            this.guard = new Object();
            this.leftMap = new HashMap();
            this.rightMap = new HashMap();
            this.subscriber = subscriber;
            this.group = new CompositeSubscription();
            this.cancel = new RefCountSubscription(this.group);
        }

        void complete(List<Observer<T2>> list) {
            if (list != null) {
                for (Observer onCompleted : list) {
                    onCompleted.onCompleted();
                }
                this.subscriber.onCompleted();
                this.cancel.unsubscribe();
            }
        }

        void errorAll(Throwable th) {
            synchronized (this.guard) {
                List<Observer> arrayList = new ArrayList(this.leftMap.values());
                this.leftMap.clear();
                this.rightMap.clear();
            }
            for (Observer onError : arrayList) {
                onError.onError(th);
            }
            this.subscriber.onError(th);
            this.cancel.unsubscribe();
        }

        void errorMain(Throwable th) {
            synchronized (this.guard) {
                this.leftMap.clear();
                this.rightMap.clear();
            }
            this.subscriber.onError(th);
            this.cancel.unsubscribe();
        }

        public void init() {
            Object leftObserver = new LeftObserver();
            Object rightObserver = new RightObserver();
            this.group.add(leftObserver);
            this.group.add(rightObserver);
            OnSubscribeGroupJoin.this.left.unsafeSubscribe(leftObserver);
            OnSubscribeGroupJoin.this.right.unsafeSubscribe(rightObserver);
        }

        public boolean isUnsubscribed() {
            return this.cancel.isUnsubscribed();
        }

        public void unsubscribe() {
            this.cancel.unsubscribe();
        }
    }

    static final class WindowObservableFunc<T> implements OnSubscribe<T> {
        final RefCountSubscription refCount;
        final Observable<T> underlying;

        final class WindowSubscriber extends Subscriber<T> {
            private final Subscription ref;
            final Subscriber<? super T> subscriber;

            public WindowSubscriber(Subscriber<? super T> subscriber, Subscription subscription) {
                super(subscriber);
                this.subscriber = subscriber;
                this.ref = subscription;
            }

            public void onCompleted() {
                this.subscriber.onCompleted();
                this.ref.unsubscribe();
            }

            public void onError(Throwable th) {
                this.subscriber.onError(th);
                this.ref.unsubscribe();
            }

            public void onNext(T t) {
                this.subscriber.onNext(t);
            }
        }

        public WindowObservableFunc(Observable<T> observable, RefCountSubscription refCountSubscription) {
            this.refCount = refCountSubscription;
            this.underlying = observable;
        }

        public void call(Subscriber<? super T> subscriber) {
            Subscription subscription = this.refCount.get();
            Subscriber windowSubscriber = new WindowSubscriber(subscriber, subscription);
            windowSubscriber.add(subscription);
            this.underlying.unsafeSubscribe(windowSubscriber);
        }
    }

    public OnSubscribeGroupJoin(Observable<T1> observable, Observable<T2> observable2, Func1<? super T1, ? extends Observable<D1>> func1, Func1<? super T2, ? extends Observable<D2>> func12, Func2<? super T1, ? super Observable<T2>, ? extends R> func2) {
        this.left = observable;
        this.right = observable2;
        this.leftDuration = func1;
        this.rightDuration = func12;
        this.resultSelector = func2;
    }

    public void call(Subscriber<? super R> subscriber) {
        Object resultManager = new ResultManager(new SerializedSubscriber(subscriber));
        subscriber.add(resultManager);
        resultManager.init();
    }
}
