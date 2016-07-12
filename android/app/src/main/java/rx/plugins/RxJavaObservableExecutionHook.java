package rx.plugins;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observable.Operator;
import rx.Subscription;

public abstract class RxJavaObservableExecutionHook {
    public <T> OnSubscribe<T> onCreate(OnSubscribe<T> onSubscribe) {
        return onSubscribe;
    }

    public <T, R> Operator<? extends R, ? super T> onLift(Operator<? extends R, ? super T> operator) {
        return operator;
    }

    public <T> Throwable onSubscribeError(Throwable th) {
        return th;
    }

    public <T> Subscription onSubscribeReturn(Subscription subscription) {
        return subscription;
    }

    public <T> OnSubscribe<T> onSubscribeStart(Observable<? extends T> observable, OnSubscribe<T> onSubscribe) {
        return onSubscribe;
    }
}
