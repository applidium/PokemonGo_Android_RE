package rx.observables;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

public class GroupedObservable<K, T> extends Observable<T> {
    private final K key;

    /* renamed from: rx.observables.GroupedObservable.1 */
    static final class C13641 implements OnSubscribe<T> {
        final /* synthetic */ Observable val$o;

        C13641(Observable observable) {
            this.val$o = observable;
        }

        public void call(Subscriber<? super T> subscriber) {
            this.val$o.unsafeSubscribe(subscriber);
        }
    }

    protected GroupedObservable(K k, OnSubscribe<T> onSubscribe) {
        super(onSubscribe);
        this.key = k;
    }

    public static final <K, T> GroupedObservable<K, T> create(K k, OnSubscribe<T> onSubscribe) {
        return new GroupedObservable(k, onSubscribe);
    }

    public static <K, T> GroupedObservable<K, T> from(K k, Observable<T> observable) {
        return new GroupedObservable(k, new C13641(observable));
    }

    public K getKey() {
        return this.key;
    }
}
