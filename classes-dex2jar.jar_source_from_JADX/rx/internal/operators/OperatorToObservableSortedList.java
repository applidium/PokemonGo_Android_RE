package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.functions.Func2;
import rx.internal.producers.SingleDelayedProducer;

public final class OperatorToObservableSortedList<T> implements Operator<List<T>, T> {
    private static Comparator DEFAULT_SORT_FUNCTION;
    private final int initialCapacity;
    private final Comparator<? super T> sortFunction;

    /* renamed from: rx.internal.operators.OperatorToObservableSortedList.1 */
    class C13271 implements Comparator<T> {
        final /* synthetic */ Func2 val$sortFunction;

        C13271(Func2 func2) {
            this.val$sortFunction = func2;
        }

        public int compare(T t, T t2) {
            return ((Integer) this.val$sortFunction.call(t, t2)).intValue();
        }
    }

    /* renamed from: rx.internal.operators.OperatorToObservableSortedList.2 */
    class C13282 extends Subscriber<T> {
        boolean completed;
        List<T> list;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ SingleDelayedProducer val$producer;

        C13282(SingleDelayedProducer singleDelayedProducer, Subscriber subscriber) {
            this.val$producer = singleDelayedProducer;
            this.val$child = subscriber;
            this.list = new ArrayList(OperatorToObservableSortedList.this.initialCapacity);
        }

        public void onCompleted() {
            if (!this.completed) {
                this.completed = true;
                List list = this.list;
                this.list = null;
                try {
                    Collections.sort(list, OperatorToObservableSortedList.this.sortFunction);
                    this.val$producer.setValue(list);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            if (!this.completed) {
                this.list.add(t);
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    private static class DefaultComparableFunction implements Comparator<Object> {
        private DefaultComparableFunction() {
        }

        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo((Comparable) obj2);
        }
    }

    static {
        DEFAULT_SORT_FUNCTION = new DefaultComparableFunction();
    }

    public OperatorToObservableSortedList(int i) {
        this.sortFunction = DEFAULT_SORT_FUNCTION;
        this.initialCapacity = i;
    }

    public OperatorToObservableSortedList(Func2<? super T, ? super T, Integer> func2, int i) {
        this.initialCapacity = i;
        this.sortFunction = new C13271(func2);
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        Producer singleDelayedProducer = new SingleDelayedProducer(subscriber);
        Object c13282 = new C13282(singleDelayedProducer, subscriber);
        subscriber.add(c13282);
        subscriber.setProducer(singleDelayedProducer);
        return c13282;
    }
}
