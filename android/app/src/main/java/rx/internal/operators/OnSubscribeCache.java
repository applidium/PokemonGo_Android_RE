package rx.internal.operators;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.subjects.ReplaySubject;
import rx.subjects.Subject;

public final class OnSubscribeCache<T> implements OnSubscribe<T> {
    static final AtomicIntegerFieldUpdater<OnSubscribeCache> SRC_SUBSCRIBED_UPDATER;
    protected final Subject<? super T, ? extends T> cache;
    protected final Observable<? extends T> source;
    volatile int sourceSubscribed;

    static {
        SRC_SUBSCRIBED_UPDATER = AtomicIntegerFieldUpdater.newUpdater(OnSubscribeCache.class, "sourceSubscribed");
    }

    public OnSubscribeCache(Observable<? extends T> observable) {
        this((Observable) observable, ReplaySubject.create());
    }

    public OnSubscribeCache(Observable<? extends T> observable, int i) {
        this((Observable) observable, ReplaySubject.create(i));
    }

    OnSubscribeCache(Observable<? extends T> observable, Subject<? super T, ? extends T> subject) {
        this.source = observable;
        this.cache = subject;
    }

    public void call(Subscriber<? super T> subscriber) {
        if (SRC_SUBSCRIBED_UPDATER.compareAndSet(this, 0, 1)) {
            this.source.subscribe(this.cache);
        }
        this.cache.unsafeSubscribe(subscriber);
    }
}
