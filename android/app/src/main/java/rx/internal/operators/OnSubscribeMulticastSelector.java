package rx.internal.operators;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.observables.ConnectableObservable;
import rx.observers.SafeSubscriber;
import rx.subjects.Subject;

public final class OnSubscribeMulticastSelector<TInput, TIntermediate, TResult> implements OnSubscribe<TResult> {
    final Func1<? super Observable<TIntermediate>, ? extends Observable<TResult>> resultSelector;
    final Observable<? extends TInput> source;
    final Func0<? extends Subject<? super TInput, ? extends TIntermediate>> subjectFactory;

    /* renamed from: rx.internal.operators.OnSubscribeMulticastSelector.1 */
    class C11781 implements Action1<Subscription> {
        final /* synthetic */ SafeSubscriber val$s;

        C11781(SafeSubscriber safeSubscriber) {
            this.val$s = safeSubscriber;
        }

        public void call(Subscription subscription) {
            this.val$s.add(subscription);
        }
    }

    public OnSubscribeMulticastSelector(Observable<? extends TInput> observable, Func0<? extends Subject<? super TInput, ? extends TIntermediate>> func0, Func1<? super Observable<TIntermediate>, ? extends Observable<TResult>> func1) {
        this.source = observable;
        this.subjectFactory = func0;
        this.resultSelector = func1;
    }

    public void call(Subscriber<? super TResult> subscriber) {
        try {
            ConnectableObservable operatorMulticast = new OperatorMulticast(this.source, this.subjectFactory);
            Observable observable = (Observable) this.resultSelector.call(operatorMulticast);
            Subscriber safeSubscriber = new SafeSubscriber(subscriber);
            observable.unsafeSubscribe(safeSubscriber);
            operatorMulticast.connect(new C11781(safeSubscriber));
        } catch (Throwable th) {
            subscriber.onError(th);
        }
    }
}
