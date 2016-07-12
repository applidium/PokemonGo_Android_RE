package rx.internal.operators;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.SerialSubscription;

public final class OnSubscribeJoin<TLeft, TRight, TLeftDuration, TRightDuration, R> implements OnSubscribe<R> {
    final Observable<TLeft> left;
    final Func1<TLeft, Observable<TLeftDuration>> leftDurationSelector;
    final Func2<TLeft, TRight, R> resultSelector;
    final Observable<TRight> right;
    final Func1<TRight, Observable<TRightDuration>> rightDurationSelector;

    final class ResultSink {
        final CompositeSubscription group;
        final Object guard;
        boolean leftDone;
        int leftId;
        final Map<Integer, TLeft> leftMap;
        boolean rightDone;
        int rightId;
        final Map<Integer, TRight> rightMap;
        final Subscriber<? super R> subscriber;

        final class LeftSubscriber extends Subscriber<TLeft> {

            final class LeftDurationSubscriber extends Subscriber<TLeftDuration> {
                final int id;
                boolean once;

                public LeftDurationSubscriber(int i) {
                    this.once = true;
                    this.id = i;
                }

                public void onCompleted() {
                    if (this.once) {
                        this.once = false;
                        LeftSubscriber.this.expire(this.id, this);
                    }
                }

                public void onError(Throwable th) {
                    LeftSubscriber.this.onError(th);
                }

                public void onNext(TLeftDuration tLeftDuration) {
                    onCompleted();
                }
            }

            LeftSubscriber() {
            }

            protected void expire(int i, Subscription subscription) {
                Object obj = null;
                synchronized (ResultSink.this.guard) {
                    if (ResultSink.this.leftMap.remove(Integer.valueOf(i)) != null && ResultSink.this.leftMap.isEmpty() && ResultSink.this.leftDone) {
                        obj = 1;
                    }
                }
                if (obj != null) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(subscription);
            }

            public void onCompleted() {
                Object obj = null;
                synchronized (ResultSink.this.guard) {
                    ResultSink.this.leftDone = true;
                    if (ResultSink.this.rightDone || ResultSink.this.leftMap.isEmpty()) {
                        obj = 1;
                    }
                }
                if (obj != null) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(this);
            }

            public void onError(Throwable th) {
                ResultSink.this.subscriber.onError(th);
                ResultSink.this.subscriber.unsubscribe();
            }

            public void onNext(TLeft tLeft) {
                synchronized (ResultSink.this.guard) {
                    ResultSink resultSink = ResultSink.this;
                    int i = resultSink.leftId;
                    resultSink.leftId = i + 1;
                    ResultSink.this.leftMap.put(Integer.valueOf(i), tLeft);
                    int i2 = ResultSink.this.rightId;
                }
                try {
                    Observable observable = (Observable) OnSubscribeJoin.this.leftDurationSelector.call(tLeft);
                    Object leftDurationSubscriber = new LeftDurationSubscriber(i);
                    ResultSink.this.group.add(leftDurationSubscriber);
                    observable.unsafeSubscribe(leftDurationSubscriber);
                    List<Object> arrayList = new ArrayList();
                    synchronized (ResultSink.this.guard) {
                        for (Entry entry : ResultSink.this.rightMap.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i2) {
                                arrayList.add(entry.getValue());
                            }
                        }
                    }
                    for (Object leftDurationSubscriber2 : arrayList) {
                        ResultSink.this.subscriber.onNext(OnSubscribeJoin.this.resultSelector.call(tLeft, leftDurationSubscriber2));
                    }
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        final class RightSubscriber extends Subscriber<TRight> {

            final class RightDurationSubscriber extends Subscriber<TRightDuration> {
                final int id;
                boolean once;

                public RightDurationSubscriber(int i) {
                    this.once = true;
                    this.id = i;
                }

                public void onCompleted() {
                    if (this.once) {
                        this.once = false;
                        RightSubscriber.this.expire(this.id, this);
                    }
                }

                public void onError(Throwable th) {
                    RightSubscriber.this.onError(th);
                }

                public void onNext(TRightDuration tRightDuration) {
                    onCompleted();
                }
            }

            RightSubscriber() {
            }

            void expire(int i, Subscription subscription) {
                Object obj = null;
                synchronized (ResultSink.this.guard) {
                    if (ResultSink.this.rightMap.remove(Integer.valueOf(i)) != null && ResultSink.this.rightMap.isEmpty() && ResultSink.this.rightDone) {
                        obj = 1;
                    }
                }
                if (obj != null) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(subscription);
            }

            public void onCompleted() {
                Object obj = null;
                synchronized (ResultSink.this.guard) {
                    ResultSink.this.rightDone = true;
                    if (ResultSink.this.leftDone || ResultSink.this.rightMap.isEmpty()) {
                        obj = 1;
                    }
                }
                if (obj != null) {
                    ResultSink.this.subscriber.onCompleted();
                    ResultSink.this.subscriber.unsubscribe();
                    return;
                }
                ResultSink.this.group.remove(this);
            }

            public void onError(Throwable th) {
                ResultSink.this.subscriber.onError(th);
                ResultSink.this.subscriber.unsubscribe();
            }

            public void onNext(TRight tRight) {
                synchronized (ResultSink.this.guard) {
                    ResultSink resultSink = ResultSink.this;
                    int i = resultSink.rightId;
                    resultSink.rightId = i + 1;
                    ResultSink.this.rightMap.put(Integer.valueOf(i), tRight);
                    int i2 = ResultSink.this.leftId;
                }
                ResultSink.this.group.add(new SerialSubscription());
                try {
                    Observable observable = (Observable) OnSubscribeJoin.this.rightDurationSelector.call(tRight);
                    Object rightDurationSubscriber = new RightDurationSubscriber(i);
                    ResultSink.this.group.add(rightDurationSubscriber);
                    observable.unsafeSubscribe(rightDurationSubscriber);
                    List<Object> arrayList = new ArrayList();
                    synchronized (ResultSink.this.guard) {
                        for (Entry entry : ResultSink.this.leftMap.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i2) {
                                arrayList.add(entry.getValue());
                            }
                        }
                    }
                    for (Object rightDurationSubscriber2 : arrayList) {
                        ResultSink.this.subscriber.onNext(OnSubscribeJoin.this.resultSelector.call(rightDurationSubscriber2, tRight));
                    }
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        public ResultSink(Subscriber<? super R> subscriber) {
            this.guard = new Object();
            this.subscriber = subscriber;
            this.group = new CompositeSubscription();
            this.leftMap = new HashMap();
            this.rightMap = new HashMap();
        }

        public void run() {
            this.subscriber.add(this.group);
            Object leftSubscriber = new LeftSubscriber();
            Object rightSubscriber = new RightSubscriber();
            this.group.add(leftSubscriber);
            this.group.add(rightSubscriber);
            OnSubscribeJoin.this.left.unsafeSubscribe(leftSubscriber);
            OnSubscribeJoin.this.right.unsafeSubscribe(rightSubscriber);
        }
    }

    public OnSubscribeJoin(Observable<TLeft> observable, Observable<TRight> observable2, Func1<TLeft, Observable<TLeftDuration>> func1, Func1<TRight, Observable<TRightDuration>> func12, Func2<TLeft, TRight, R> func2) {
        this.left = observable;
        this.right = observable2;
        this.leftDurationSelector = func1;
        this.rightDurationSelector = func12;
        this.resultSelector = func2;
    }

    public void call(Subscriber<? super R> subscriber) {
        new ResultSink(new SerializedSubscriber(subscriber)).run();
    }
}
