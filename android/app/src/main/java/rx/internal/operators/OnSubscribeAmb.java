package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.functions.Action0;
import rx.subscriptions.Subscriptions;

public final class OnSubscribeAmb<T> implements OnSubscribe<T> {
    final AtomicReference<AmbSubscriber<T>> choice;
    final Selection<T> selection;
    final Iterable<? extends Observable<? extends T>> sources;

    /* renamed from: rx.internal.operators.OnSubscribeAmb.1 */
    class C11731 implements Action0 {
        C11731() {
        }

        public void call() {
            AmbSubscriber ambSubscriber = (AmbSubscriber) OnSubscribeAmb.this.choice.get();
            if (ambSubscriber != null) {
                ambSubscriber.unsubscribe();
            }
            OnSubscribeAmb.unsubscribeAmbSubscribers(OnSubscribeAmb.this.selection.ambSubscribers);
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeAmb.2 */
    class C11742 implements Producer {
        C11742() {
        }

        public void request(long j) {
            AmbSubscriber ambSubscriber = (AmbSubscriber) OnSubscribeAmb.this.choice.get();
            if (ambSubscriber != null) {
                ambSubscriber.requestMore(j);
                return;
            }
            for (AmbSubscriber ambSubscriber2 : OnSubscribeAmb.this.selection.ambSubscribers) {
                if (!ambSubscriber2.isUnsubscribed()) {
                    if (OnSubscribeAmb.this.choice.get() == ambSubscriber2) {
                        ambSubscriber2.requestMore(j);
                        return;
                    }
                    ambSubscriber2.requestMore(j);
                }
            }
        }
    }

    private static final class AmbSubscriber<T> extends Subscriber<T> {
        private boolean chosen;
        private final Selection<T> selection;
        private final Subscriber<? super T> subscriber;

        private AmbSubscriber(long j, Subscriber<? super T> subscriber, Selection<T> selection) {
            this.subscriber = subscriber;
            this.selection = selection;
            request(j);
        }

        private boolean isSelected() {
            if (this.chosen) {
                return true;
            }
            if (this.selection.choice.get() == this) {
                this.chosen = true;
                return true;
            } else if (this.selection.choice.compareAndSet(null, this)) {
                this.selection.unsubscribeOthers(this);
                this.chosen = true;
                return true;
            } else {
                this.selection.unsubscribeLosers();
                return false;
            }
        }

        private final void requestMore(long j) {
            request(j);
        }

        public void onCompleted() {
            if (isSelected()) {
                this.subscriber.onCompleted();
            }
        }

        public void onError(Throwable th) {
            if (isSelected()) {
                this.subscriber.onError(th);
            }
        }

        public void onNext(T t) {
            if (isSelected()) {
                this.subscriber.onNext(t);
            }
        }
    }

    private static class Selection<T> {
        final Collection<AmbSubscriber<T>> ambSubscribers;
        final AtomicReference<AmbSubscriber<T>> choice;

        private Selection() {
            this.choice = new AtomicReference();
            this.ambSubscribers = new ConcurrentLinkedQueue();
        }

        public void unsubscribeLosers() {
            AmbSubscriber ambSubscriber = (AmbSubscriber) this.choice.get();
            if (ambSubscriber != null) {
                unsubscribeOthers(ambSubscriber);
            }
        }

        public void unsubscribeOthers(AmbSubscriber<T> ambSubscriber) {
            for (AmbSubscriber<T> ambSubscriber2 : this.ambSubscribers) {
                if (ambSubscriber2 != ambSubscriber) {
                    ambSubscriber2.unsubscribe();
                }
            }
            this.ambSubscribers.clear();
        }
    }

    private OnSubscribeAmb(Iterable<? extends Observable<? extends T>> iterable) {
        this.selection = new Selection();
        this.choice = this.selection.choice;
        this.sources = iterable;
    }

    public static <T> OnSubscribe<T> amb(Iterable<? extends Observable<? extends T>> iterable) {
        return new OnSubscribeAmb(iterable);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        return amb(arrayList);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        return amb(arrayList);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        return amb(arrayList);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        return amb(arrayList);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        return amb(arrayList);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        arrayList.add(observable7);
        return amb(arrayList);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        arrayList.add(observable7);
        arrayList.add(observable8);
        return amb(arrayList);
    }

    public static <T> OnSubscribe<T> amb(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        Iterable arrayList = new ArrayList();
        arrayList.add(observable);
        arrayList.add(observable2);
        arrayList.add(observable3);
        arrayList.add(observable4);
        arrayList.add(observable5);
        arrayList.add(observable6);
        arrayList.add(observable7);
        arrayList.add(observable8);
        arrayList.add(observable9);
        return amb(arrayList);
    }

    private static <T> void unsubscribeAmbSubscribers(Collection<AmbSubscriber<T>> collection) {
        if (!collection.isEmpty()) {
            for (AmbSubscriber unsubscribe : collection) {
                unsubscribe.unsubscribe();
            }
            collection.clear();
        }
    }

    public void call(Subscriber<? super T> subscriber) {
        subscriber.add(Subscriptions.create(new C11731()));
        for (Observable observable : this.sources) {
            if (subscriber.isUnsubscribed()) {
                break;
            }
            Subscriber ambSubscriber = new AmbSubscriber(subscriber, this.selection, null);
            this.selection.ambSubscribers.add(ambSubscriber);
            AmbSubscriber ambSubscriber2 = (AmbSubscriber) this.choice.get();
            if (ambSubscriber2 != null) {
                this.selection.unsubscribeOthers(ambSubscriber2);
                return;
            }
            observable.unsafeSubscribe(ambSubscriber);
        }
        if (subscriber.isUnsubscribed()) {
            unsubscribeAmbSubscribers(this.selection.ambSubscribers);
        }
        subscriber.setProducer(new C11742());
    }
}
