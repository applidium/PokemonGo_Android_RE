package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.observables.ConnectableObservable;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

public final class OnSubscribeRefCount<T> implements OnSubscribe<T> {
    private volatile CompositeSubscription baseSubscription;
    private final ReentrantLock lock;
    private final ConnectableObservable<? extends T> source;
    private final AtomicInteger subscriptionCount;

    /* renamed from: rx.internal.operators.OnSubscribeRefCount.1 */
    class C11911 implements Action1<Subscription> {
        final /* synthetic */ Subscriber val$subscriber;
        final /* synthetic */ AtomicBoolean val$writeLocked;

        C11911(Subscriber subscriber, AtomicBoolean atomicBoolean) {
            this.val$subscriber = subscriber;
            this.val$writeLocked = atomicBoolean;
        }

        public void call(Subscription subscription) {
            try {
                OnSubscribeRefCount.this.baseSubscription.add(subscription);
                OnSubscribeRefCount.this.doSubscribe(this.val$subscriber, OnSubscribeRefCount.this.baseSubscription);
            } finally {
                OnSubscribeRefCount.this.lock.unlock();
                this.val$writeLocked.set(false);
            }
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeRefCount.2 */
    class C11922 extends Subscriber<T> {
        final /* synthetic */ CompositeSubscription val$currentBase;
        final /* synthetic */ Subscriber val$subscriber;

        C11922(Subscriber subscriber, Subscriber subscriber2, CompositeSubscription compositeSubscription) {
            this.val$subscriber = subscriber2;
            this.val$currentBase = compositeSubscription;
            super(subscriber);
        }

        void cleanup() {
            OnSubscribeRefCount.this.lock.lock();
            try {
                if (OnSubscribeRefCount.this.baseSubscription == this.val$currentBase) {
                    OnSubscribeRefCount.this.baseSubscription.unsubscribe();
                    OnSubscribeRefCount.this.baseSubscription = new CompositeSubscription();
                    OnSubscribeRefCount.this.subscriptionCount.set(0);
                }
                OnSubscribeRefCount.this.lock.unlock();
            } catch (Throwable th) {
                OnSubscribeRefCount.this.lock.unlock();
            }
        }

        public void onCompleted() {
            cleanup();
            this.val$subscriber.onCompleted();
        }

        public void onError(Throwable th) {
            cleanup();
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            this.val$subscriber.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeRefCount.3 */
    class C11933 implements Action0 {
        final /* synthetic */ CompositeSubscription val$current;

        C11933(CompositeSubscription compositeSubscription) {
            this.val$current = compositeSubscription;
        }

        public void call() {
            OnSubscribeRefCount.this.lock.lock();
            try {
                if (OnSubscribeRefCount.this.baseSubscription == this.val$current && OnSubscribeRefCount.this.subscriptionCount.decrementAndGet() == 0) {
                    OnSubscribeRefCount.this.baseSubscription.unsubscribe();
                    OnSubscribeRefCount.this.baseSubscription = new CompositeSubscription();
                }
                OnSubscribeRefCount.this.lock.unlock();
            } catch (Throwable th) {
                OnSubscribeRefCount.this.lock.unlock();
            }
        }
    }

    public OnSubscribeRefCount(ConnectableObservable<? extends T> connectableObservable) {
        this.baseSubscription = new CompositeSubscription();
        this.subscriptionCount = new AtomicInteger(0);
        this.lock = new ReentrantLock();
        this.source = connectableObservable;
    }

    private Subscription disconnect(CompositeSubscription compositeSubscription) {
        return Subscriptions.create(new C11933(compositeSubscription));
    }

    private Action1<Subscription> onSubscribe(Subscriber<? super T> subscriber, AtomicBoolean atomicBoolean) {
        return new C11911(subscriber, atomicBoolean);
    }

    public void call(Subscriber<? super T> subscriber) {
        this.lock.lock();
        if (this.subscriptionCount.incrementAndGet() == 1) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(true);
            try {
                this.source.connect(onSubscribe(subscriber, atomicBoolean));
                if (atomicBoolean.get()) {
                    this.lock.unlock();
                }
            } catch (Throwable th) {
                if (atomicBoolean.get()) {
                    this.lock.unlock();
                }
            }
        } else {
            try {
                doSubscribe(subscriber, this.baseSubscription);
            } finally {
                this.lock.unlock();
            }
        }
    }

    void doSubscribe(Subscriber<? super T> subscriber, CompositeSubscription compositeSubscription) {
        subscriber.add(disconnect(compositeSubscription));
        this.source.unsafeSubscribe(new C11922(subscriber, subscriber, compositeSubscription));
    }
}
